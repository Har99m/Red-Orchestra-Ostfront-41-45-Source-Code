//=============================================================================
// UniCarrierTransport
//=============================================================================
// Universal Carrier Transport Vehicle class
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2006 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class UniCarrierTransport extends ROWheeledVehicle;

#exec OBJ LOAD FILE=..\Animations\allies_carrier_anm.ukx
#exec OBJ LOAD FILE=..\textures\allies_vehicles_tex2.utx
#exec OBJ LOAD FILE=..\Sounds\Vehicle_EnginesTwo.uax

var()   float                 MaxPitchSpeed;
var VariableTexPanner LeftTreadPanner, RightTreadPanner;
var() float TreadVelocityScale;

// Sound attachment actor variables
var()   	sound               LeftTreadSound;    // Sound for the left tread squeaking
var()   	sound               RightTreadSound;   // Sound for the right tread squeaking
var()   	sound               RumbleSound;       // Interior rumble sound
var     	bool                bPlayTreadSound;
var     	float               TreadSoundVolume;
var     	ROSoundAttachment   LeftTreadSoundAttach;
var     	ROSoundAttachment   RightTreadSoundAttach;
var     	ROSoundAttachment   InteriorRumbleSoundAttach;
var     	float               MotionSoundVolume;
var()   	name                LeftTrackSoundBone;
var()   	name                RightTrackSoundBone;
var()   	name                RumbleSoundBone;

// Wheel animation
var() 	array<name>		LeftWheelBones; 	// for animation only - the bone names for the wheels on the left side
var() 	array<name>		RightWheelBones; 	// for animation only - the bone names for the wheels on the right side

var 	rotator 		LeftWheelRot;       // Keep track of the left wheels rotational speed for animation
var 	rotator 		RightWheelRot;      // Keep track of the right wheels rotational speed for animation

simulated function PostBeginPlay()
{
	super.PostBeginPlay();

	if ( Level.NetMode != NM_DedicatedServer )
	{
		SetupTreads();

		if (  LeftTreadSoundAttach == none )
		{
			LeftTreadSoundAttach = Spawn(class 'ROSoundAttachment');
			LeftTreadSoundAttach.AmbientSound = LeftTreadSound;
			AttachToBone(LeftTreadSoundAttach, LeftTrackSoundBone);
		}

		if (  RightTreadSoundAttach == none )
		{
			RightTreadSoundAttach = Spawn(class 'ROSoundAttachment');
			RightTreadSoundAttach.AmbientSound = RightTreadSound;
			AttachToBone(RightTreadSoundAttach, RightTrackSoundBone );
		}

		if (  InteriorRumbleSoundAttach == none )
		{
			InteriorRumbleSoundAttach = Spawn(class 'ROSoundAttachment');
			InteriorRumbleSoundAttach.AmbientSound = RumbleSound;
			AttachToBone(InteriorRumbleSoundAttach, RumbleSoundBone );
		}
	}
}

simulated function UpdateMovementSound()
{
    if (  LeftTreadSoundAttach != none)
    {
       LeftTreadSoundAttach.SoundVolume= MotionSoundVolume * 1.0;
    }

    if (  RightTreadSoundAttach != none)
    {
       RightTreadSoundAttach.SoundVolume= MotionSoundVolume * 1.0;
    }

    if (  InteriorRumbleSoundAttach != none)
    {
       InteriorRumbleSoundAttach.SoundVolume= MotionSoundVolume;
    }
}

// DriverLeft() called by KDriverLeave()
function DriverLeft()
{
    // Not moving, so no motion sound
    MotionSoundVolume=0.0;
    UpdateMovementSound();

    Super.DriverLeft();
}

simulated event DrivingStatusChanged()
{
    Super.DrivingStatusChanged();

    if (!bDriving)
    {
        if ( LeftTreadPanner != None )
            LeftTreadPanner.PanRate = 0.0;

        if ( RightTreadPanner != None )
            RightTreadPanner.PanRate = 0.0;

        // Not moving, so no motion sound
        MotionSoundVolume=0.0;
        UpdateMovementSound();
    }
}

simulated function Destroyed()
{
	DestroyTreads();

	if( LeftTreadSoundAttach != none )
	    LeftTreadSoundAttach.Destroy();
	if( RightTreadSoundAttach != none )
	    RightTreadSoundAttach.Destroy();
	if( InteriorRumbleSoundAttach != none )
	    InteriorRumbleSoundAttach.Destroy();

	super.Destroyed();
}

simulated function SetupTreads()
{
	LeftTreadPanner = VariableTexPanner(Level.ObjectPool.AllocateObject(class'VariableTexPanner'));
	if ( LeftTreadPanner != None )
	{
		LeftTreadPanner.Material = Skins[1];
		LeftTreadPanner.PanDirection = rot(0, 0, 16384);
		LeftTreadPanner.PanRate = 0.0;
		Skins[1] = LeftTreadPanner;
	}
	RightTreadPanner = VariableTexPanner(Level.ObjectPool.AllocateObject(class'VariableTexPanner'));
	if ( RightTreadPanner != None )
	{
		RightTreadPanner.Material = Skins[2];
		RightTreadPanner.PanDirection = rot(0, 0, 16384);
		RightTreadPanner.PanRate = 0.0;
		Skins[2] = RightTreadPanner;
	}
}

simulated function DestroyTreads()
{
	if ( LeftTreadPanner != None )
	{
		Level.ObjectPool.FreeObject(LeftTreadPanner);
		LeftTreadPanner = None;
	}
	if ( RightTreadPanner != None )
	{
		Level.ObjectPool.FreeObject(RightTreadPanner);
		RightTreadPanner = None;
	}
}


simulated function Tick(float DeltaTime)
{
	local float LinTurnSpeed;
	local float MotionSoundTemp;
	local KRigidBodyState BodyState;
	local float MySpeed;
	local int i;

	Super.Tick( DeltaTime );

	// Only need these effects client side
	if( Level.Netmode != NM_DedicatedServer )
	{

		// Shame on you Psyonix, for calling VSize() 3 times every tick, when it only needed to be called once.
		// VSize() is very CPU intensive - Ramm
		MySpeed = VSize(Velocity);

		// Setup sounds that are dependent on velocity
		MotionSoundTemp =  MySpeed/MaxPitchSpeed * 255;
		if ( MySpeed > 0.1 )
		{
		  	MotionSoundVolume =  FClamp(MotionSoundTemp, 0, 255);
		}
		else
		{
		  	MotionSoundVolume=0;
		}
		UpdateMovementSound();


		KGetRigidBodyState(BodyState);
		LinTurnSpeed = 0.5 * BodyState.AngVel.Z;

		if ( LeftTreadPanner != None )
		{
			LeftTreadPanner.PanRate = MySpeed / TreadVelocityScale;
			if (Velocity dot Vector(Rotation) < 0)
				LeftTreadPanner.PanRate = -1 * LeftTreadPanner.PanRate;
			LeftTreadPanner.PanRate += LinTurnSpeed;
		}

		if ( RightTreadPanner != None )
		{
			RightTreadPanner.PanRate = MySpeed / TreadVelocityScale;
			if (Velocity Dot Vector(Rotation) < 0)
				RightTreadPanner.PanRate = -1 * RightTreadPanner.PanRate;
			RightTreadPanner.PanRate -= LinTurnSpeed;
		}

		// Animate the tank wheels
		LeftWheelRot.pitch += LeftTreadPanner.PanRate * 500;
		RightWheelRot.pitch += RightTreadPanner.PanRate * 500;

		for(i=0; i<LeftWheelBones.Length; i++)
		{
			  SetBoneRotation(LeftWheelBones[i], LeftWheelRot);
		}

		for(i=0; i<RightWheelBones.Length; i++)
		{
			  SetBoneRotation(RightWheelBones[i], RightWheelRot);
		}
	}
}

static function StaticPrecache(LevelInfo L)
{
    Super.StaticPrecache(L);

 	L.AddPrecacheMaterial(Material'allies_vehicles_tex2.ext_vehicles.universal_carrier');
 	L.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.T60_treads');
 	L.AddPrecacheMaterial(Material'allies_vehicles_tex2.int_vehicles.Universal_Carrier_Int');
 	L.AddPrecacheMaterial(Material'allies_vehicles_tex2.int_vehicles.Universal_Carrier_Int_S');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex2.ext_vehicles.universal_carrier');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.T60_treads');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex2.int_vehicles.Universal_Carrier_Int');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex2.int_vehicles.Universal_Carrier_Int_S');

	Super.UpdatePrecacheMaterials();
}

// Overriden to handle the special driver animations for this vehicle
simulated state ViewTransition
{
	simulated function HandleTransition()
	{
	     if( Role == ROLE_AutonomousProxy || Level.Netmode == NM_Standalone || Level.Netmode == NM_ListenServer )
	     {
	         if( DriverPositions[DriverPositionIndex].PositionMesh != none && !bDontUsePositionMesh)
	             LinkMesh(DriverPositions[DriverPositionIndex].PositionMesh);
	     }

		 if( PreviousPositionIndex < DriverPositionIndex && HasAnim(DriverPositions[PreviousPositionIndex].TransitionUpAnim))
		 {
		 	 //log("HandleTransition Player Transition Up!");
			 PlayAnim(DriverPositions[PreviousPositionIndex].TransitionUpAnim);
		 }
		 else if ( HasAnim(DriverPositions[PreviousPositionIndex].TransitionDownAnim) )
		 {
		 	 //log("HandleTransition Player Transition Down!");
			 PlayAnim(DriverPositions[PreviousPositionIndex].TransitionDownAnim);
		 }

		 if( Driver != none && PreviousPositionIndex < DriverPositionIndex && DriverPositionIndex == InitialPositionIndex)
		 {
			 Driver.PlayAnim(DriveAnim);
		 }
		 else if(Driver != none && Driver.HasAnim(DriverPositions[DriverPositionIndex].DriverTransitionAnim))
		 {
	         Driver.PlayAnim(DriverPositions[DriverPositionIndex].DriverTransitionAnim);
	     }
	}
}

defaultproperties
{
     MaxPitchSpeed=350.000000
     TreadVelocityScale=80.000000
     LeftTreadSound=Sound'Vehicle_EnginesTwo.UC.UC_tread_L'
     RightTreadSound=Sound'Vehicle_EnginesTwo.UC.UC_tread_R'
     RumbleSound=Sound'Vehicle_Engines.interior.tank_inside_rumble03'
     LeftTrackSoundBone="Wheel_T_L_3"
     RightTrackSoundBone="Wheel_T_R_3"
     RumbleSoundBone="body"
     LeftWheelBones(0)="Wheel_T_L_1"
     LeftWheelBones(1)="Wheel_T_L_2"
     LeftWheelBones(2)="Wheel_T_L_3"
     LeftWheelBones(3)="Wheel_T_L_4"
     LeftWheelBones(4)="Wheel_T_L_5"
     RightWheelBones(0)="Wheel_T_R_1"
     RightWheelBones(1)="Wheel_T_R_2"
     RightWheelBones(2)="Wheel_T_R_3"
     RightWheelBones(3)="Wheel_T_R_4"
     RightWheelBones(4)="Wheel_T_R_5"
     WheelSoftness=0.025000
     WheelPenScale=2.000000
     WheelPenOffset=0.010000
     WheelRestitution=0.100000
     WheelInertia=0.100000
     WheelLongFrictionFunc=(Points=(,(InVal=100.000000,OutVal=1.000000),(InVal=200.000000,OutVal=0.900000),(InVal=10000000000.000000,OutVal=0.900000)))
     WheelLongSlip=0.001000
     WheelLatSlipFunc=(Points=(,(InVal=30.000000,OutVal=0.009000),(InVal=10000000000.000000)))
     WheelLongFrictionScale=1.500000
     WheelLatFrictionScale=3.000000
     WheelHandbrakeSlip=0.010000
     WheelHandbrakeFriction=0.100000
     WheelSuspensionTravel=15.000000
     FTScale=0.030000
     ChassisTorqueScale=0.250000
     MinBrakeFriction=4.000000
     MaxSteerAngleCurve=(Points=((OutVal=35.000000),(InVal=1500.000000,OutVal=20.000000),(InVal=1000000000.000000,OutVal=15.000000)))
     TorqueCurve=(Points=((OutVal=11.000000),(InVal=200.000000,OutVal=1.250000),(InVal=1500.000000,OutVal=2.500000),(InVal=2200.000000)))
     GearRatios(0)=-0.200000
     GearRatios(1)=0.200000
     GearRatios(2)=0.350000
     GearRatios(3)=0.550000
     GearRatios(4)=0.600000
     TransRatio=0.120000
     ChangeUpPoint=2000.000000
     ChangeDownPoint=1000.000000
     LSDFactor=1.000000
     EngineBrakeFactor=0.000100
     EngineBrakeRPMScale=0.100000
     MaxBrakeTorque=20.000000
     SteerSpeed=160.000000
     TurnDamping=50.000000
     StopThreshold=100.000000
     HandbrakeThresh=200.000000
     EngineInertia=0.100000
     IdleRPM=500.000000
     EngineRPMSoundRange=5000.000000
     SteerBoneName="Steering"
     RevMeterScale=4000.000000
     ExhaustEffectClass=Class'ROEffects.ExhaustPetrolEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustPetrolEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-105.000000,Y=33.000000,Z=13.000000),ExhaustRotation=(Pitch=36000))
     ExhaustPipes(1)=(ExhaustPosition=(X=-105.000000,Y=-33.000000,Z=13.000000),ExhaustRotation=(Pitch=36000))
     bSpecialTankTurning=True
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.UniCarrierGunPawn',WeaponBone="mg_base")
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.UniCarrierPassengerOne',WeaponBone="passenger_l_1")
     PassengerWeapons(2)=(WeaponPawnClass=Class'ROVehicles.UniCarrierPassengerTwo',WeaponBone="passenger_l_2")
     PassengerWeapons(3)=(WeaponPawnClass=Class'ROVehicles.UniCarrierPassengerThree',WeaponBone="passenger_r_1")
     PassengerWeapons(4)=(WeaponPawnClass=Class'ROVehicles.UniCarrierPassengerFour',WeaponBone="passenger_r_2")
     IdleSound=SoundGroup'Vehicle_EnginesTwo.UC.UC_engine_loop'
     StartUpSound=Sound'Vehicle_EnginesTwo.UC.UC_engine_start'
     ShutDownSound=Sound'Vehicle_EnginesTwo.UC.UC_engine_stop'
     DestroyedVehicleMesh=StaticMesh'allies_vehicles_stc.Carrier.Carrier_destroyed'
     DisintegrationHealth=-10000.000000
     DestructionLinearMomentum=(Min=100.000000,Max=350.000000)
     DestructionAngularMomentum=(Max=150.000000)
     DamagedEffectScale=0.750000
     DamagedEffectOffset=(X=-40.000000,Y=10.000000,Z=10.000000)
     VehicleTeam=1
     SteeringScaleFactor=4.000000
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'allies_carrier_anm.Carrier_body_int',TransitionUpAnim="Overlay_Out",ViewPitchUpLimit=1,ViewPitchDownLimit=65535,bDrawOverlays=True)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'allies_carrier_anm.Carrier_body_int',TransitionUpAnim="driver_hatch_open",TransitionDownAnim="Overlay_In",DriverTransitionAnim="VUC_driver_close",ViewPitchUpLimit=14000,ViewPitchDownLimit=58000,ViewPositiveYawLimit=27000,ViewNegativeYawLimit=-27000)
     DriverPositions(2)=(PositionMesh=SkeletalMesh'allies_carrier_anm.Carrier_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VUC_driver_open",ViewPitchUpLimit=14000,ViewPitchDownLimit=62500,ViewPositiveYawLimit=27000,ViewNegativeYawLimit=-27000,bExposed=True,ViewFOV=85.000000)
     VehicleHudImage=Texture'InterfaceArt2_tex.Tank_Hud.Carrier_body'
     VehicleHudOccupantsX(0)=0.580000
     VehicleHudOccupantsX(1)=0.460000
     VehicleHudOccupantsX(2)=0.390000
     VehicleHudOccupantsX(3)=0.390000
     VehicleHudOccupantsX(4)=0.620000
     VehicleHudOccupantsX(5)=0.620000
     VehicleHudOccupantsY(0)=0.350000
     VehicleHudOccupantsY(1)=0.300000
     VehicleHudOccupantsY(2)=0.500000
     VehicleHudOccupantsY(3)=0.650000
     VehicleHudOccupantsY(4)=0.650000
     VehicleHudOccupantsY(5)=0.500000
     VehicleHudEngineY=0.750000
     VehHitpoints(0)=(PointOffset=(X=-9.000000,Y=3.000000,Z=51.000000),bPenetrationPoint=False)
     VehHitpoints(1)=(PointRadius=17.000000,PointBone="driver_player",PointOffset=(X=-10.000000,Y=2.000000,Z=27.000000),HitPointType=HP_Driver)
     VehHitpoints(2)=(PointRadius=20.000000,PointScale=1.000000,PointBone="Engine",PointOffset=(X=-15.000000),DamageMultiplier=5.000000,HitPointType=HP_Engine)
     VehHitpoints(3)=(PointRadius=20.000000,PointScale=1.000000,PointBone="Engine",PointOffset=(X=22.000000),DamageMultiplier=5.000000,HitPointType=HP_Engine)
     VehHitpoints(4)=(PointRadius=15.000000,PointScale=1.000000,PointBone="Engine",PointOffset=(Z=30.000000),DamageMultiplier=5.000000,HitPointType=HP_Engine)
     VehHitpoints(5)=(PointRadius=15.000000,PointScale=1.000000,PointBone="Engine",PointOffset=(X=27.000000,Z=30.000000),DamageMultiplier=5.000000,HitPointType=HP_Engine)
     bIsApc=True
     DriverAttachmentBone="driver_player"
     Begin Object Class=SVehicleWheel Name=LF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(0)=SVehicleWheel'ROVehicles.UniCarrierTransport.LF_Steering'

     Begin Object Class=SVehicleWheel Name=RF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(1)=SVehicleWheel'ROVehicles.UniCarrierTransport.RF_Steering'

     Begin Object Class=SVehicleWheel Name=LR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_LR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(2)=SVehicleWheel'ROVehicles.UniCarrierTransport.LR_Steering'

     Begin Object Class=SVehicleWheel Name=RR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(3)=SVehicleWheel'ROVehicles.UniCarrierTransport.RR_Steering'

     Begin Object Class=SVehicleWheel Name=Left_Drive_Wheel
         bPoweredWheel=True
         BoneName="Wheel_T_L_3"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(4)=SVehicleWheel'ROVehicles.UniCarrierTransport.Left_Drive_Wheel'

     Begin Object Class=SVehicleWheel Name=Right_Drive_Wheel
         bPoweredWheel=True
         BoneName="Wheel_T_R_3"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(5)=SVehicleWheel'ROVehicles.UniCarrierTransport.Right_Drive_Wheel'

     VehicleMass=5.000000
     bHasHandbrake=True
     DriveAnim="VUC_driver_idle_close"
     ExitPositions(0)=(Y=-165.000000,Z=40.000000)
     ExitPositions(1)=(Y=165.000000,Z=40.000000)
     ExitPositions(2)=(Y=-165.000000,Z=-40.000000)
     ExitPositions(3)=(Y=165.000000,Z=-40.000000)
     EntryRadius=375.000000
     TPCamDistance=200.000000
     TPCamLookat=(X=0.000000,Z=0.000000)
     TPCamWorldOffset=(Z=50.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in a Universal Carrier"
     VehicleNameString="Universal Carrier"
     MaxDesireability=0.100000
     ObjectiveGetOutDist=1500.000000
     HUDOverlayClass=Class'ROVehicles.UniCarrierDriverOverlay'
     HUDOverlayOffset=(Y=-0.800000,Z=1.990000)
     HUDOverlayFOV=81.000000
     PitchUpLimit=500
     PitchDownLimit=49000
     HealthMax=300.000000
     Health=300
     Mesh=SkeletalMesh'allies_carrier_anm.Carrier_body_ext'
     Skins(0)=Texture'allies_vehicles_tex2.ext_vehicles.universal_carrier'
     Skins(1)=Texture'allies_vehicles_tex.Treads.T60_treads'
     Skins(2)=Texture'allies_vehicles_tex.Treads.T60_treads'
     Skins(3)=Texture'allies_vehicles_tex2.int_vehicles.Universal_Carrier_Int'
     CollisionRadius=175.000000
     CollisionHeight=40.000000
     Begin Object Class=KarmaParamsRBFull Name=KParams0
         KInertiaTensor(0)=1.000000
         KInertiaTensor(3)=3.000000
         KInertiaTensor(5)=3.000000
         KCOMOffset=(Z=-0.500000)
         KLinearDamping=0.050000
         KAngularDamping=0.050000
         KStartEnabled=True
         bKNonSphericalInertia=True
         KMaxAngularSpeed=2.000000
         bHighDetailOnly=False
         bClientOnly=False
         bKDoubleTickRate=True
         bDestroyOnWorldPenetrate=True
         bDoSafetime=True
         KFriction=0.500000
         KImpactThreshold=700.000000
     End Object
     KParams=KarmaParamsRBFull'ROVehicles.UniCarrierTransport.KParams0'

     HighDetailOverlay=Shader'allies_vehicles_tex2.int_vehicles.Universal_Carrier_Int_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=3
}
