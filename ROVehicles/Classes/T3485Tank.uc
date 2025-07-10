//===================================================================
// T3485Tank
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Mighty Russian T34 tank
//===================================================================
class T3485Tank extends ROTreadCraft;

#exec OBJ LOAD FILE=..\Animations\allies_t3485_anm.ukx

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

static function StaticPrecache(LevelInfo L)
{
    Super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.T3485_ext');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.T3485_treads');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.T3485_int');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.T3485_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.T3485_ext');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.T3485_treads');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.T3485_int');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.T3485_int_s');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     MaxPitchSpeed=450.000000
     TreadVelocityScale=110.000000
     LeftTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_L07'
     RightTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_L07'
     RumbleSound=Sound'Vehicle_Engines.interior.tank_inside_rumble02'
     LeftTrackSoundBone="Track_L"
     RightTrackSoundBone="Track_R"
     RumbleSoundBone="body"
     VehicleHudTurret=TexRotator'InterfaceArt_tex.Tank_Hud.t3485_turret_rot'
     VehicleHudTurretLook=TexRotator'InterfaceArt_tex.Tank_Hud.t3485_turret_rot'
     VehicleHudThreadsPosX(0)=0.370000
     VehicleHudThreadsPosY=0.510000
     VehicleHudThreadsScale=0.720000
     LeftWheelBones(0)="Wheel_L_1"
     LeftWheelBones(1)="Wheel_L_2"
     LeftWheelBones(2)="Wheel_L_3"
     LeftWheelBones(3)="Wheel_L_4"
     LeftWheelBones(4)="Wheel_L_5"
     LeftWheelBones(5)="Wheel_L_6"
     LeftWheelBones(6)="Wheel_L_7"
     RightWheelBones(0)="Wheel_R_1"
     RightWheelBones(1)="Wheel_R_2"
     RightWheelBones(2)="Wheel_R_3"
     RightWheelBones(3)="Wheel_R_4"
     RightWheelBones(4)="Wheel_R_5"
     RightWheelBones(5)="Wheel_R_6"
     RightWheelBones(6)="Wheel_R_7"
     FrontArmorFactor=11
     RearArmorFactor=5
     SideArmorFactor=6
     TreadHitMinAngle=1.900000
     GearRatios(3)=0.650000
     GearRatios(4)=0.750000
     TransRatio=0.130000
     ExhaustEffectClass=Class'ROEffects.ExhaustDieselEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustDieselEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-175.000000,Y=30.000000,Z=10.000000),ExhaustRotation=(Pitch=36000))
     ExhaustPipes(1)=(ExhaustPosition=(X=-175.000000,Y=-30.000000,Z=10.000000),ExhaustRotation=(Pitch=36000))
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.T3485CannonPawn',WeaponBone="Turret_placement")
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.T3485MountedTankMGPawn',WeaponBone="Mg_placement")
     IdleSound=SoundGroup'Vehicle_Engines.T34.t34_engine_loop'
     StartUpSound=Sound'Vehicle_Engines.T34.t34_engine_start'
     ShutDownSound=Sound'Vehicle_Engines.T34.t34_engine_stop'
     DestroyedVehicleMesh=StaticMesh'allies_vehicles_stc.t3485.T3485_Destroyed'
     DisintegrationHealth=-900.000000
     DamagedEffectScale=0.900000
     DamagedEffectOffset=(X=-100.000000,Y=20.000000,Z=26.000000)
     VehicleTeam=1
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'allies_t3485_anm.t3485_body_int',TransitionUpAnim="driver_hatch_open",DriverTransitionAnim="Vt3485_driver_close",ViewPitchDownLimit=65535,bDrawOverlays=True)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'allies_t3485_anm.t3485_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="Vt3485_driver_open",ViewPitchUpLimit=5500,ViewPitchDownLimit=63500,ViewPositiveYawLimit=11000,ViewNegativeYawLimit=-12500,bExposed=True)
     InitialPositionIndex=0
     VehicleHudImage=Texture'InterfaceArt_tex.Tank_Hud.t3485_body'
     VehicleHudOccupantsX(0)=0.440000
     VehicleHudOccupantsX(2)=0.560000
     VehicleHudEngineX=0.510000
     VehHitpoints(0)=(PointOffset=(X=17.000000,Z=5.000000))
     VehHitpoints(1)=(PointRadius=40.000000,PointOffset=(X=-90.000000),DamageMultiplier=1.000000)
     VehHitpoints(2)=(PointRadius=25.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=13.000000,Y=-25.000000,Z=-5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(3)=(PointRadius=25.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=13.000000,Y=25.000000,Z=-5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     DriverAttachmentBone="driver_attachment"
     Begin Object Class=SVehicleWheel Name=LF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=35.000000,Y=-10.000000,Z=2.000000)
         WheelRadius=33.000000
     End Object
     Wheels(0)=SVehicleWheel'ROVehicles.T3485Tank.LF_Steering'

     Begin Object Class=SVehicleWheel Name=RF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=35.000000,Y=10.000000,Z=2.000000)
         WheelRadius=33.000000
     End Object
     Wheels(1)=SVehicleWheel'ROVehicles.T3485Tank.RF_Steering'

     Begin Object Class=SVehicleWheel Name=LR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_LR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-12.000000,Y=-10.000000,Z=2.000000)
         WheelRadius=33.000000
     End Object
     Wheels(2)=SVehicleWheel'ROVehicles.T3485Tank.LR_Steering'

     Begin Object Class=SVehicleWheel Name=RR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-12.000000,Y=10.000000,Z=2.000000)
         WheelRadius=33.000000
     End Object
     Wheels(3)=SVehicleWheel'ROVehicles.T3485Tank.RR_Steering'

     Begin Object Class=SVehicleWheel Name=Left_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_L"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=10.000000,Z=2.000000)
         WheelRadius=33.000000
     End Object
     Wheels(4)=SVehicleWheel'ROVehicles.T3485Tank.Left_Drive_Wheel'

     Begin Object Class=SVehicleWheel Name=Right_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_R"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=-10.000000,Z=2.000000)
         WheelRadius=33.000000
     End Object
     Wheels(5)=SVehicleWheel'ROVehicles.T3485Tank.Right_Drive_Wheel'

     bFPNoZFromCameraPitch=True
     DrivePos=(X=0.000000,Y=0.000000,Z=0.000000)
     DriveAnim="Vt3485_driver_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=375.000000
     FPCamPos=(X=0.000000,Y=0.000000,Z=0.000000)
     TPCamDistance=600.000000
     TPCamLookat=(X=-50.000000)
     TPCamWorldOffset=(Z=250.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in a T34/85"
     VehicleNameString="T34/85"
     MaxDesireability=2.500000
     FlagBone="Mg_placement"
     FlagRotation=(Yaw=32768)
     HUDOverlayClass=Class'ROVehicles.T34DriverOverlay'
     HUDOverlayFOV=85.000000
     PitchUpLimit=5000
     PitchDownLimit=60000
     HealthMax=800.000000
     Health=800
     Mesh=SkeletalMesh'allies_t3485_anm.t3485_body_ext'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.T3485_ext'
     Skins(1)=Texture'allies_vehicles_tex.Treads.T3485_treads'
     Skins(2)=Texture'allies_vehicles_tex.Treads.T3485_treads'
     Skins(3)=Texture'allies_vehicles_tex.int_vehicles.T3485_int'
     CollisionRadius=175.000000
     CollisionHeight=60.000000
     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.T3485_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=3
}
