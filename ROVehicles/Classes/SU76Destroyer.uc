//===================================================================
// SU76Destroyer
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// SU76 Tank destroyer class
//===================================================================
class SU76Destroyer extends ROTreadCraft;

// new vehicle content
#exec OBJ LOAD FILE=..\Animations\allies_su76_anm.ukx
#exec OBJ LOAD FILE=..\textures\allies_vehicles_tex.utx
#exec OBJ LOAD FILE=..\StaticMeshes\allies_vehicles_stc.usx

simulated function SetupTreads()
{
	LeftTreadPanner = VariableTexPanner(Level.ObjectPool.AllocateObject(class'VariableTexPanner'));
	if ( LeftTreadPanner != None )
	{
		LeftTreadPanner.Material = Skins[1];
		LeftTreadPanner.PanDirection = rot(0, 0, 16384);
		LeftTreadPanner.PanRate = 0.0;
		Skins[1] = LeftTreadPanner;//1
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

static function StaticPrecache(LevelInfo L)
{
    Super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.SU76_ext');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.SU76_int');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.SU76_treads');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.SU76_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.SU76_ext');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.SU76_int');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.SU76_treads');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.SU76_int_s');

	Super.UpdatePrecacheMaterials();
}

// Overridden to fix the "invulnerable" front mantlet issue
simulated function bool ShouldPenetrate(vector HitLocation, vector HitRotation, int PenetrationNumber, optional class<DamageType> DamageType)
{
    local vector X,Y,Z;
    local float AngleFromZ;

	if (HitPenetrationPoint(HitLocation, HitRotation))
	{
		return true;
	}

    GetAxes(Rotation,X,Y,Z);
    AngleFromZ = Acos(Normal(Hitlocation - Location) dot Normal(Z)) * 57.2957795131;

    if( bDebugPenetration )
    {
        log("AngleFromZ "$AngleFromZ);
    }

    // Check to see if we hit the upper part of the tank which has very weak armor.
    if( AngleFromZ < 80 )
    {
    	if( (1 - PenetrationNumber) >= 0.01 )
			return false;
		else
		    return true;
    }
    else
    {
        return super.ShouldPenetrate(HitLocation, HitRotation, PenetrationNumber, DamageType);
    }
}

defaultproperties
{
     MaxPitchSpeed=450.000000
     TreadVelocityScale=85.000000
     LeftTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_L09'
     RightTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_R09'
     RumbleSound=Sound'Vehicle_Engines.interior.tank_inside_rumble01'
     LeftTrackSoundBone="Track_L"
     RightTrackSoundBone="Track_R"
     RumbleSoundBone="body"
     VehicleHudTurret=TexRotator'InterfaceArt_tex.Tank_Hud.SU76_turret_rot'
     VehicleHudTurretLook=TexRotator'InterfaceArt_tex.Tank_Hud.SU76_turret_look'
     VehicleHudThreadsPosX(0)=0.360000
     VehicleHudThreadsPosX(1)=0.660000
     VehicleHudThreadsScale=0.600000
     LeftWheelBones(0)="Wheel_L_1"
     LeftWheelBones(1)="Wheel_L_2"
     LeftWheelBones(2)="Wheel_L_3"
     LeftWheelBones(3)="Wheel_L_4"
     LeftWheelBones(4)="Wheel_L_5"
     LeftWheelBones(5)="Wheel_L_6"
     LeftWheelBones(6)="Wheel_L_7"
     LeftWheelBones(7)="Wheel_L_8"
     LeftWheelBones(8)="Wheel_L_9"
     LeftWheelBones(9)="Wheel_L_10"
     LeftWheelBones(10)="Wheel_L_11"
     RightWheelBones(0)="Wheel_R_1"
     RightWheelBones(1)="Wheel_R_2"
     RightWheelBones(2)="Wheel_R_3"
     RightWheelBones(3)="Wheel_R_4"
     RightWheelBones(4)="Wheel_R_5"
     RightWheelBones(5)="Wheel_R_6"
     RightWheelBones(6)="Wheel_R_7"
     RightWheelBones(7)="Wheel_R_8"
     RightWheelBones(8)="Wheel_R_9"
     RightWheelBones(9)="Wheel_R_10"
     RightWheelBones(10)="Wheel_R_11"
     WheelRotationScale=750
     FrontArmorFactor=3
     RearArmorFactor=0
     SideArmorFactor=1
     TreadHitMinAngle=1.900000
     ExhaustEffectClass=Class'ROEffects.ExhaustPetrolEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustPetrolEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-130.000000,Y=75.000000,Z=25.000000),ExhaustRotation=(Pitch=34000,Yaw=-3000))
     ExhaustPipes(1)=(ExhaustPosition=(X=-130.000000,Y=85.000000,Z=25.000000),ExhaustRotation=(Pitch=34000,Yaw=-3000))
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.SU76CannonPawn',WeaponBone="Turret_placement")
     IdleSound=SoundGroup'Vehicle_Engines.SU76.SU76_engine_loop'
     StartUpSound=Sound'Vehicle_Engines.SU76.SU76_engine_start'
     ShutDownSound=Sound'Vehicle_Engines.SU76.SU76_engine_stop'
     DestroyedVehicleMesh=StaticMesh'allies_vehicles_stc.SU76.SU76_Destroyed'
     DisintegrationHealth=-1000.000000
     DamagedEffectScale=0.850000
     DamagedEffectOffset=(X=-100.000000,Y=20.000000,Z=26.000000)
     VehicleTeam=1
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'allies_su76_anm.SU76_body_int',TransitionUpAnim="driver_hatch_open",DriverTransitionAnim="VSU76_driver_close",ViewPitchDownLimit=65535,bDrawOverlays=True)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'allies_su76_anm.SU76_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VSU76_driver_open",ViewPitchUpLimit=5000,ViewPitchDownLimit=65536,ViewPositiveYawLimit=10000,ViewNegativeYawLimit=-12000,bExposed=True)
     InitialPositionIndex=0
     VehicleHudImage=Texture'InterfaceArt_tex.Tank_Hud.SU76_body'
     VehicleHudOccupantsX(0)=0.500000
     VehicleHudOccupantsX(1)=0.570000
     VehicleHudOccupantsX(2)=0.000000
     VehicleHudOccupantsY(0)=0.350000
     VehicleHudOccupantsY(2)=0.000000
     VehicleHudEngineX=0.450000
     VehicleHudEngineY=0.670000
     VehHitpoints(0)=(PointOffset=(X=-13.000000,Y=-3.000000,Z=-8.000000))
     VehHitpoints(1)=(PointRadius=35.000000,PointOffset=(X=25.000000,Y=45.000000,Z=-10.000000),DamageMultiplier=1.000000)
     VehHitpoints(2)=(PointRadius=25.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=-80.000000,Y=-40.000000,Z=5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     DriverAttachmentBone="driver_attachment"
     Begin Object Class=SVehicleWheel Name=LF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=35.000000,Y=-5.000000,Z=10.000000)
         WheelRadius=30.000000
     End Object
     Wheels(0)=SVehicleWheel'ROVehicles.SU76Destroyer.LF_Steering'

     Begin Object Class=SVehicleWheel Name=RF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=35.000000,Y=5.000000,Z=10.000000)
         WheelRadius=30.000000
     End Object
     Wheels(1)=SVehicleWheel'ROVehicles.SU76Destroyer.RF_Steering'

     Begin Object Class=SVehicleWheel Name=LR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_LR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-7.000000,Y=-5.000000,Z=10.000000)
         WheelRadius=30.000000
     End Object
     Wheels(2)=SVehicleWheel'ROVehicles.SU76Destroyer.LR_Steering'

     Begin Object Class=SVehicleWheel Name=RR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-7.000000,Y=5.000000,Z=10.000000)
         WheelRadius=30.000000
     End Object
     Wheels(3)=SVehicleWheel'ROVehicles.SU76Destroyer.RR_Steering'

     Begin Object Class=SVehicleWheel Name=Left_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_L"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=10.000000)
         WheelRadius=30.000000
     End Object
     Wheels(4)=SVehicleWheel'ROVehicles.SU76Destroyer.Left_Drive_Wheel'

     Begin Object Class=SVehicleWheel Name=Right_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_R"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=10.000000)
         WheelRadius=30.000000
     End Object
     Wheels(5)=SVehicleWheel'ROVehicles.SU76Destroyer.Right_Drive_Wheel'

     VehicleMass=9.000000
     bFPNoZFromCameraPitch=True
     DrivePos=(X=0.000000,Y=0.000000,Z=0.000000)
     DriveAnim="VSU76_driver_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=375.000000
     FPCamPos=(X=0.000000,Y=0.000000,Z=0.000000)
     TPCamDistance=600.000000
     TPCamLookat=(X=-50.000000)
     TPCamWorldOffset=(Z=250.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in a SU76"
     VehicleNameString="SU76"
     MaxDesireability=1.800000
     FlagBone="Mg_placement"
     FlagRotation=(Yaw=32768)
     HUDOverlayClass=Class'ROVehicles.SU76DriverOverlay'
     HUDOverlayFOV=85.000000
     PitchUpLimit=5000
     PitchDownLimit=60000
     HealthMax=500.000000
     Health=500
     Mesh=SkeletalMesh'allies_su76_anm.SU76_body_ext'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.SU76_ext'
     Skins(1)=Texture'allies_vehicles_tex.Treads.SU76_treads'
     Skins(2)=Texture'allies_vehicles_tex.Treads.SU76_treads'
     Skins(3)=Texture'allies_vehicles_tex.int_vehicles.SU76_int'
     CollisionRadius=175.000000
     CollisionHeight=60.000000
     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.SU76_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=3
}
