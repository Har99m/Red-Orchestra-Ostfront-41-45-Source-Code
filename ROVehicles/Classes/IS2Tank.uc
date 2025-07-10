//===================================================================
// ROIS2Tank
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// IS2 Heavy tank class
//===================================================================

class IS2Tank extends ROTreadCraft;

#exec OBJ LOAD FILE=..\Animations\allies_is2_anm.ukx

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

    L.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.IS2_ext');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.IS2_int');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.IS2_treads');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.IS2_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.IS2_ext');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.IS2_int');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.IS2_treads');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.IS2_int_s');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     MaxPitchSpeed=450.000000
     TreadVelocityScale=125.000000
     LeftTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_L03'
     RightTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_R03'
     RumbleSound=Sound'Vehicle_Engines.interior.tank_inside_rumble02'
     LeftTrackSoundBone="Track_L"
     RightTrackSoundBone="Track_R"
     RumbleSoundBone="body"
     VehicleHudTurret=TexRotator'InterfaceArt_tex.Tank_Hud.IS2_turret_rot'
     VehicleHudTurretLook=TexRotator'InterfaceArt_tex.Tank_Hud.IS2_turret_look'
     VehicleHudThreadsPosX(0)=0.380000
     VehicleHudThreadsPosX(1)=0.630000
     VehicleHudThreadsPosY=0.505000
     VehicleHudThreadsScale=0.720000
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
     WheelRotationScale=600
     FrontArmorFactor=14
     RearArmorFactor=10
     SideArmorFactor=11
     TreadHitMinAngle=1.900000
     FrontLeftAngle=336.000000
     FrontRightAngle=24.000000
     RearRightAngle=155.000000
     RearLeftAngle=205.000000
     GearRatios(4)=0.720000
     TransRatio=0.090000
     LeftLeverBoneName="lever_L"
     LeftLeverAxis=AXIS_Z
     RightLeverBoneName="lever_R"
     RightLeverAxis=AXIS_Z
     ExhaustEffectClass=Class'ROEffects.ExhaustDieselEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustDieselEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-150.000000,Y=60.000000,Z=40.000000),ExhaustRotation=(Pitch=34000,Roll=-10000))
     ExhaustPipes(1)=(ExhaustPosition=(X=-150.000000,Y=-60.000000,Z=40.000000),ExhaustRotation=(Pitch=34000,Roll=10000))
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.IS2CannonPawn',WeaponBone="Turret_placement")
     IdleSound=SoundGroup'Vehicle_Engines.IS2.IS2_engine_loop'
     StartUpSound=Sound'Vehicle_Engines.IS2.IS2_engine_start'
     ShutDownSound=Sound'Vehicle_Engines.IS2.IS2_engine_stop'
     DestroyedVehicleMesh=StaticMesh'allies_vehicles_stc.IS2.IS2_Destroyed'
     DisintegrationHealth=-900.000000
     DamagedEffectOffset=(X=-100.000000,Y=20.000000,Z=26.000000)
     VehicleTeam=1
     SteeringScaleFactor=0.750000
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'allies_is2_anm.IS2_body_int',TransitionUpAnim="Overlay_Out",ViewPitchUpLimit=1,ViewPitchDownLimit=65535,bDrawOverlays=True)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'allies_is2_anm.IS2_body_int',TransitionUpAnim="driver_hatch_open",TransitionDownAnim="Overlay_In",DriverTransitionAnim="VIS2_driver_close",ViewPitchUpLimit=2730,ViewPitchDownLimit=61900,ViewPositiveYawLimit=5500,ViewNegativeYawLimit=-5500)
     DriverPositions(2)=(PositionMesh=SkeletalMesh'allies_is2_anm.IS2_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VIS2_driver_open",ViewPitchUpLimit=5500,ViewPitchDownLimit=65000,ViewPositiveYawLimit=12000,ViewNegativeYawLimit=-12000,bExposed=True,ViewFOV=85.000000)
     VehicleHudImage=Texture'InterfaceArt_tex.Tank_Hud.IS2_body'
     VehicleHudOccupantsX(0)=0.500000
     VehicleHudOccupantsX(2)=0.000000
     VehicleHudOccupantsY(1)=0.450000
     VehicleHudOccupantsY(2)=0.000000
     bVehicleHudUsesLargeTexture=True
     VehHitpoints(0)=(PointOffset=(X=-3.000000,Z=-3.000000))
     VehHitpoints(1)=(PointRadius=40.000000,PointOffset=(X=-100.000000),DamageMultiplier=1.000000)
     VehHitpoints(2)=(PointRadius=25.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=16.000000,Y=-25.000000,Z=-5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(3)=(PointRadius=25.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=16.000000,Y=25.000000,Z=-5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     DriverAttachmentBone="driver_attachment"
     Begin Object Class=SVehicleWheel Name=LF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=30.000000,Y=-10.000000,Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(0)=SVehicleWheel'ROVehicles.IS2Tank.LF_Steering'

     Begin Object Class=SVehicleWheel Name=RF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=30.000000,Y=10.000000,Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(1)=SVehicleWheel'ROVehicles.IS2Tank.RF_Steering'

     Begin Object Class=SVehicleWheel Name=LR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_LR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-18.000000,Y=-10.000000,Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(2)=SVehicleWheel'ROVehicles.IS2Tank.LR_Steering'

     Begin Object Class=SVehicleWheel Name=RR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-18.000000,Y=10.000000,Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(3)=SVehicleWheel'ROVehicles.IS2Tank.RR_Steering'

     Begin Object Class=SVehicleWheel Name=Left_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_L"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=-10.000000,Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(4)=SVehicleWheel'ROVehicles.IS2Tank.Left_Drive_Wheel'

     Begin Object Class=SVehicleWheel Name=Right_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_R"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=10.000000,Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(5)=SVehicleWheel'ROVehicles.IS2Tank.Right_Drive_Wheel'

     bFPNoZFromCameraPitch=True
     DrivePos=(X=0.000000,Y=0.000000,Z=0.000000)
     DriveAnim="VIS2_driver_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=375.000000
     FPCamPos=(X=0.000000,Y=0.000000,Z=0.000000)
     TPCamDistance=600.000000
     TPCamLookat=(X=-50.000000)
     TPCamWorldOffset=(Z=250.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in an IS2"
     VehicleNameString="IS2"
     MaxDesireability=1.900000
     FlagBone="Mg_placement"
     FlagRotation=(Yaw=32768)
     HUDOverlayClass=Class'ROVehicles.IS2DriverOverlay'
     HUDOverlayFOV=85.000000
     PitchUpLimit=5000
     PitchDownLimit=60000
     HealthMax=800.000000
     Health=800
     Mesh=SkeletalMesh'allies_is2_anm.IS2_body_ext'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.IS2_ext'
     Skins(1)=Texture'allies_vehicles_tex.Treads.IS2_treads'
     Skins(2)=Texture'allies_vehicles_tex.Treads.IS2_treads'
     Skins(3)=Texture'allies_vehicles_tex.int_vehicles.IS2_int'
     CollisionRadius=175.000000
     CollisionHeight=60.000000
     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.IS2_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=3
}
