//===================================================================
// PantherTank
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Mighty ROPanther tank
//===================================================================
class PantherTank extends ROTreadCraft;

#exec OBJ LOAD FILE=..\Animations\axis_pantherg_anm.ukx

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

    L.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.pantherg_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.PantherG_treads');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.pantherg_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.PantherG_treads');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int_s');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     MaxPitchSpeed=450.000000
     TreadVelocityScale=225.000000
     LeftTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_L05'
     RightTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_R05'
     RumbleSound=Sound'Vehicle_Engines.interior.tank_inside_rumble02'
     LeftTrackSoundBone="Track_L"
     RightTrackSoundBone="Track_R"
     RumbleSoundBone="body"
     VehicleHudTurret=TexRotator'InterfaceArt_tex.Tank_Hud.panther_turret_rot'
     VehicleHudTurretLook=TexRotator'InterfaceArt_tex.Tank_Hud.panther_turret_look'
     VehicleHudThreadsPosX(0)=0.380000
     VehicleHudThreadsPosX(1)=0.630000
     VehicleHudThreadsPosY=0.490000
     VehicleHudThreadsScale=0.610000
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
     WheelRotationScale=1500
     FrontArmorFactor=18
     RearArmorFactor=5
     SideArmorFactor=6
     TreadHitMinAngle=1.900000
     FrontLeftAngle=335.000000
     FrontRightAngle=25.000000
     RearRightAngle=154.000000
     RearLeftAngle=204.000000
     GearRatios(2)=0.400000
     GearRatios(3)=0.600000
     GearRatios(4)=0.760000
     TransRatio=0.090000
     ExhaustEffectClass=Class'ROEffects.ExhaustPetrolEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustPetrolEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-230.000000,Y=20.000000,Z=65.000000),ExhaustRotation=(Pitch=22000))
     ExhaustPipes(1)=(ExhaustPosition=(X=-230.000000,Y=-20.000000,Z=65.000000),ExhaustRotation=(Pitch=22000))
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.PantherCannonPawn',WeaponBone="Turret_placement")
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.PantherMountedMGPawn',WeaponBone="Mg_placement")
     IdleSound=SoundGroup'Vehicle_Engines.Panther.panther_engine_loop'
     StartUpSound=Sound'Vehicle_Engines.Panther.Panther_engine_start'
     ShutDownSound=Sound'Vehicle_Engines.Panther.Panther_engine_stop'
     DestroyedVehicleMesh=StaticMesh'axis_vehicles_stc.PantherG.PantherG_Destoyed'
     DisintegrationHealth=-900.000000
     DamagedEffectOffset=(X=-100.000000,Y=20.000000,Z=26.000000)
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'axis_pantherg_anm.PantherG_body_int',TransitionUpAnim="driver_hatch_open",DriverTransitionAnim="VPanther_driver_close",ViewPitchUpLimit=1,ViewPitchDownLimit=65535,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-6000,bDrawOverlays=True)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'axis_pantherg_anm.PantherG_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VPanther_driver_open",ViewPitchUpLimit=15000,ViewPitchDownLimit=64000,ViewPositiveYawLimit=16000,ViewNegativeYawLimit=-20000,bExposed=True)
     InitialPositionIndex=0
     VehicleHudImage=Texture'InterfaceArt_tex.Tank_Hud.panther_body'
     VehicleHudOccupantsX(0)=0.450000
     VehicleHudOccupantsX(2)=0.550000
     VehHitpoints(0)=(PointOffset=(X=-3.000000,Z=-2.000000))
     VehHitpoints(1)=(PointRadius=40.000000,PointOffset=(X=-90.000000,Z=6.000000),DamageMultiplier=1.000000)
     VehHitpoints(2)=(PointRadius=25.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=60.000000,Y=-25.000000,Z=5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(3)=(PointRadius=25.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=60.000000,Y=25.000000,Z=5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     DriverAttachmentBone="driver_attachment"
     Begin Object Class=SVehicleWheel Name=LF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=32.000000,Y=-15.000000,Z=-1.000000)
         WheelRadius=33.000000
     End Object
     Wheels(0)=SVehicleWheel'ROVehicles.PantherTank.LF_Steering'

     Begin Object Class=SVehicleWheel Name=RF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=32.000000,Y=15.000000,Z=-1.000000)
         WheelRadius=33.000000
     End Object
     Wheels(1)=SVehicleWheel'ROVehicles.PantherTank.RF_Steering'

     Begin Object Class=SVehicleWheel Name=LR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_LR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-14.000000,Y=-15.000000,Z=-1.000000)
         WheelRadius=33.000000
     End Object
     Wheels(2)=SVehicleWheel'ROVehicles.PantherTank.LR_Steering'

     Begin Object Class=SVehicleWheel Name=RR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-14.000000,Y=15.000000,Z=-1.000000)
         WheelRadius=33.000000
     End Object
     Wheels(3)=SVehicleWheel'ROVehicles.PantherTank.RR_Steering'

     Begin Object Class=SVehicleWheel Name=Left_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_L"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=-15.000000,Z=-1.000000)
         WheelRadius=33.000000
     End Object
     Wheels(4)=SVehicleWheel'ROVehicles.PantherTank.Left_Drive_Wheel'

     Begin Object Class=SVehicleWheel Name=Right_Drive_Wheel
         bPoweredWheel=True
         bHandbrakeWheel=True
         BoneName="drive_wheel_R"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=15.000000,Z=-1.000000)
         WheelRadius=33.000000
     End Object
     Wheels(5)=SVehicleWheel'ROVehicles.PantherTank.Right_Drive_Wheel'

     bFPNoZFromCameraPitch=True
     DrivePos=(X=0.000000,Y=0.000000,Z=0.000000)
     DriveAnim="VPanther_driver_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=375.000000
     FPCamPos=(X=120.000000,Y=-21.000000,Z=17.000000)
     TPCamDistance=600.000000
     TPCamLookat=(X=-50.000000)
     TPCamWorldOffset=(Z=250.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in a Panther"
     VehicleNameString="Panther"
     MaxDesireability=3.000000
     FlagBone="Mg_placement"
     FlagRotation=(Yaw=32768)
     HUDOverlayClass=Class'ROVehicles.PantherDriverOverlay'
     HUDOverlayOffset=(X=3.000000)
     HUDOverlayFOV=85.000000
     PitchUpLimit=5000
     PitchDownLimit=60000
     HealthMax=800.000000
     Health=800
     Mesh=SkeletalMesh'axis_pantherg_anm.PantherG_body_ext'
     Skins(0)=Texture'axis_vehicles_tex.ext_vehicles.pantherg_ext'
     Skins(1)=Texture'axis_vehicles_tex.Treads.PantherG_treads'
     Skins(2)=Texture'axis_vehicles_tex.Treads.PantherG_treads'
     Skins(3)=Texture'axis_vehicles_tex.int_vehicles.pantherg_int'
     CollisionRadius=175.000000
     CollisionHeight=60.000000
     Begin Object Class=KarmaParamsRBFull Name=KParams0
         KInertiaTensor(0)=1.000000
         KInertiaTensor(3)=3.000000
         KInertiaTensor(5)=3.000000
         KCOMOffset=(Z=-0.600000)
         KLinearDamping=0.050000
         KAngularDamping=0.050000
         KStartEnabled=True
         bKNonSphericalInertia=True
         KMaxAngularSpeed=1.000000
         bHighDetailOnly=False
         bClientOnly=False
         bKDoubleTickRate=True
         bDestroyOnWorldPenetrate=True
         bDoSafetime=True
         KFriction=0.500000
         KImpactThreshold=700.000000
     End Object
     KParams=KarmaParamsRBFull'ROVehicles.PantherTank.KParams0'

     HighDetailOverlay=Shader'axis_vehicles_tex.int_vehicles.pantherg_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=3
}
