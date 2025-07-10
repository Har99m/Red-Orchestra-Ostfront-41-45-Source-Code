//===================================================================
// PanzerIIITank
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// Panzer 3 light tank class
//===================================================================
class PanzerIIITank extends ROTreadCraft;

#exec OBJ LOAD FILE=..\Animations\axis_panzer3_anm.ukx

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
		RightTreadPanner.Material = Skins[2];//2
		RightTreadPanner.PanDirection = rot(0, 0, 16384);
		RightTreadPanner.PanRate = 0.0;
		Skins[2] = RightTreadPanner;
	}
}

static function StaticPrecache(LevelInfo L)
{
    Super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.panzer3_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Panzer3_treads');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.panzer3_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.panzer3_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.panzer3_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Panzer3_treads');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.panzer3_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.panzer3_int_s');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     MaxPitchSpeed=450.000000
     TreadVelocityScale=225.000000
     LeftTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_L01'
     RightTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_R01'
     RumbleSound=Sound'Vehicle_Engines.interior.tank_inside_rumble01'
     LeftTrackSoundBone="Track_L"
     RightTrackSoundBone="Track_R"
     RumbleSoundBone="body"
     VehicleHudTurret=TexRotator'InterfaceArt_tex.Tank_Hud.panzer3_turret_rot'
     VehicleHudTurretLook=TexRotator'InterfaceArt_tex.Tank_Hud.panzer3_turret_look'
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
     WheelRotationScale=1000
     FrontArmorFactor=3
     TreadHitMinAngle=1.900000
     GearRatios(4)=0.650000
     LeftLeverBoneName="lever_L"
     LeftLeverAxis=AXIS_Z
     RightLeverBoneName="lever_R"
     RightLeverAxis=AXIS_Z
     ExhaustEffectClass=Class'ROEffects.ExhaustPetrolEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustPetrolEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-175.000000,Y=60.000000,Z=-15.000000),ExhaustRotation=(Pitch=34000))
     ExhaustPipes(1)=(ExhaustPosition=(X=-175.000000,Y=-60.000000,Z=-15.000000),ExhaustRotation=(Pitch=34000))
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.PanzerIIICannonPawn',WeaponBone="Turret_placement")
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.PanzerIIIMountedMGPawn',WeaponBone="Mg_placement")
     IdleSound=SoundGroup'Vehicle_Engines.Panzeriii.PanzerIII_engine_loop'
     StartUpSound=Sound'Vehicle_Engines.Panzeriii.PanzerIII_engine_start'
     ShutDownSound=Sound'Vehicle_Engines.Panzeriii.PanzerIII_engine_stop'
     DestroyedVehicleMesh=StaticMesh'axis_vehicles_stc.Panzer3.Panzer3_Destoyed'
     DisintegrationHealth=-1000.000000
     DamagedEffectScale=0.850000
     DamagedEffectOffset=(X=-100.000000,Y=20.000000,Z=26.000000)
     SteeringScaleFactor=0.750000
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'axis_panzer3_anm.Panzer3_body_int',TransitionUpAnim="Overlay_Out",ViewPitchUpLimit=1,ViewPitchDownLimit=65535,bDrawOverlays=True)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'axis_panzer3_anm.Panzer3_body_int',TransitionUpAnim="driver_hatch_open",TransitionDownAnim="Overlay_In",DriverTransitionAnim="VPanzer3_driver_close",ViewPitchUpLimit=2730,ViewPitchDownLimit=61922,ViewPositiveYawLimit=5500,ViewNegativeYawLimit=-5500)
     DriverPositions(2)=(PositionMesh=SkeletalMesh'axis_panzer3_anm.Panzer3_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VPanzer3_driver_open",ViewPitchUpLimit=15000,ViewPitchDownLimit=65000,ViewPositiveYawLimit=15000,ViewNegativeYawLimit=-15000,bExposed=True,ViewFOV=85.000000)
     VehicleHudImage=Texture'InterfaceArt_tex.Tank_Hud.panzer3_body'
     VehHitpoints(0)=(PointOffset=(X=1.000000),bPenetrationPoint=False)
     VehHitpoints(1)=(PointRadius=15.000000,PointBone="driver_player",PointOffset=(Z=-22.000000),HitPointType=HP_Driver)
     VehHitpoints(2)=(PointRadius=35.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=-85.000000),DamageMultiplier=1.000000,HitPointType=HP_Engine)
     VehHitpoints(3)=(PointRadius=20.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=35.000000,Y=-25.000000,Z=5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(4)=(PointRadius=15.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=14.000000,Y=45.000000,Z=30.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(5)=(PointRadius=15.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=-14.000000,Y=45.000000,Z=30.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     DriverAttachmentBone="driver_attachment"
     Begin Object Class=SVehicleWheel Name=LF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=40.000000,Y=-5.000000,Z=7.000000)
         WheelRadius=30.000000
     End Object
     Wheels(0)=SVehicleWheel'ROVehicles.PanzerIIITank.LF_Steering'

     Begin Object Class=SVehicleWheel Name=RF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=40.000000,Y=5.000000,Z=7.000000)
         WheelRadius=30.000000
     End Object
     Wheels(1)=SVehicleWheel'ROVehicles.PanzerIIITank.RF_Steering'

     Begin Object Class=SVehicleWheel Name=LR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_LR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-5.000000,Y=-5.000000,Z=7.000000)
         WheelRadius=30.000000
     End Object
     Wheels(2)=SVehicleWheel'ROVehicles.PanzerIIITank.LR_Steering'

     Begin Object Class=SVehicleWheel Name=RR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-5.000000,Y=5.000000,Z=7.000000)
         WheelRadius=30.000000
     End Object
     Wheels(3)=SVehicleWheel'ROVehicles.PanzerIIITank.RR_Steering'

     Begin Object Class=SVehicleWheel Name=Left_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_L"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=10.000000,Z=7.000000)
         WheelRadius=30.000000
     End Object
     Wheels(4)=SVehicleWheel'ROVehicles.PanzerIIITank.Left_Drive_Wheel'

     Begin Object Class=SVehicleWheel Name=Right_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_R"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=10.000000,Z=7.000000)
         WheelRadius=30.000000
     End Object
     Wheels(5)=SVehicleWheel'ROVehicles.PanzerIIITank.Right_Drive_Wheel'

     VehicleMass=11.000000
     bFPNoZFromCameraPitch=True
     DrivePos=(X=0.000000,Y=0.000000,Z=0.000000)
     DriveAnim="VPanzer3_driver_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=375.000000
     FPCamPos=(X=0.000000,Y=0.000000,Z=0.000000)
     TPCamDistance=600.000000
     TPCamLookat=(X=-50.000000)
     TPCamWorldOffset=(Z=250.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in a Panzer III"
     VehicleNameString="Panzer III"
     MaxDesireability=1.800000
     FlagBone="Mg_placement"
     FlagRotation=(Yaw=32768)
     HUDOverlayClass=Class'ROVehicles.PanzerIIIDriverOverlay'
     HUDOverlayOffset=(X=2.000000)
     HUDOverlayFOV=85.000000
     PitchUpLimit=5000
     PitchDownLimit=60000
     HealthMax=500.000000
     Health=500
     Mesh=SkeletalMesh'axis_panzer3_anm.Panzer3_body_ext'
     Skins(0)=Texture'axis_vehicles_tex.ext_vehicles.panzer3_ext'
     Skins(1)=Texture'axis_vehicles_tex.Treads.Panzer3_treads'
     Skins(2)=Texture'axis_vehicles_tex.Treads.Panzer3_treads'
     Skins(3)=Texture'axis_vehicles_tex.int_vehicles.panzer3_int'
     CollisionRadius=175.000000
     CollisionHeight=60.000000
     HighDetailOverlay=Shader'axis_vehicles_tex.int_vehicles.panzer3_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=3
}
