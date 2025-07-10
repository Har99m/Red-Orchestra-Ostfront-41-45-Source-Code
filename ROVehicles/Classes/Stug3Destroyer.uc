//===================================================================
// Stug3Destroyer
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Stug3Destroyer tank class
//===================================================================
class Stug3Destroyer extends ROTreadCraft;

#exec OBJ LOAD FILE=..\Animations\axis_stug3_anm.ukx

simulated function SetupTreads()
{
	LeftTreadPanner = VariableTexPanner(Level.ObjectPool.AllocateObject(class'VariableTexPanner'));
	if ( LeftTreadPanner != None )
	{
		LeftTreadPanner.Material = Skins[1];//1
		LeftTreadPanner.PanDirection = rot(0, 0, 16384);
		LeftTreadPanner.PanRate = 0.0;
		Skins[1] = LeftTreadPanner;//1
	}
	RightTreadPanner = VariableTexPanner(Level.ObjectPool.AllocateObject(class'VariableTexPanner'));
	if ( RightTreadPanner != None )
	{
		RightTreadPanner.Material = Skins[2];//2
		RightTreadPanner.PanDirection = rot(0, 0, 16384);
		RightTreadPanner.PanRate = 0.0;
		Skins[2] = RightTreadPanner;//2
	}
}

static function StaticPrecache(LevelInfo L)
{
    Super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.Stug3_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Stug3_treads');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Stug3_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.stug3_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.Stug3_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Stug3_treads');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Stug3_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.stug3_int_s');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     MaxPitchSpeed=450.000000
     TreadVelocityScale=55.000000
     LeftTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_L08'
     RightTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_R08'
     RumbleSound=Sound'Vehicle_Engines.interior.tank_inside_rumble01'
     LeftTrackSoundBone="Track_L"
     RightTrackSoundBone="Track_R"
     RumbleSoundBone="body"
     VehicleHudTurret=TexRotator'InterfaceArt_tex.Tank_Hud.Stug3_turret_rot'
     VehicleHudTurretLook=TexRotator'InterfaceArt_tex.Tank_Hud.Stug3_turret_look'
     VehicleHudThreadsPosX(0)=0.370000
     VehicleHudThreadsPosY=0.510000
     VehicleHudThreadsScale=0.660000
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
     WheelRotationScale=300
     FrontArmorFactor=8
     RearArmorFactor=4
     TreadHitMinAngle=1.900000
     LeftLeverBoneName="lever_L"
     LeftLeverAxis=AXIS_Z
     RightLeverBoneName="lever_R"
     RightLeverAxis=AXIS_Z
     ExhaustEffectClass=Class'ROEffects.ExhaustPetrolEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustPetrolEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-175.000000,Y=40.000000,Z=-25.000000),ExhaustRotation=(Pitch=34000))
     ExhaustPipes(1)=(ExhaustPosition=(X=-175.000000,Y=-40.000000,Z=-25.000000),ExhaustRotation=(Pitch=34000))
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.Stug3CannonPawn',WeaponBone="Turret_placement")
     IdleSound=SoundGroup'Vehicle_Engines.STUGiii.stugiii_engine_loop'
     StartUpSound=Sound'Vehicle_Engines.STUGiii.stugiii_engine_start'
     ShutDownSound=Sound'Vehicle_Engines.STUGiii.stugiii_engine_stop'
     DestroyedVehicleMesh=StaticMesh'axis_vehicles_stc.Stug3.Stug3_Destoyed'
     DisintegrationHealth=-1000.000000
     DamagedEffectScale=0.900000
     DamagedEffectOffset=(X=-100.000000,Y=20.000000,Z=26.000000)
     SteeringScaleFactor=0.750000
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'axis_stug3_anm.Stug3_body_int',TransitionUpAnim="Overlay_Out",ViewPitchUpLimit=1,ViewPitchDownLimit=65535,bDrawOverlays=True)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'axis_stug3_anm.Stug3_body_int',TransitionUpAnim="driver_hatch_open",TransitionDownAnim="Overlay_In",DriverTransitionAnim="VStug3_driver_close",ViewPitchUpLimit=2730,ViewPitchDownLimit=61900,ViewPositiveYawLimit=5500,ViewNegativeYawLimit=-5500)
     DriverPositions(2)=(PositionMesh=SkeletalMesh'axis_stug3_anm.Stug3_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VStug3_driver_open",ViewPitchUpLimit=12000,ViewPitchDownLimit=62500,ViewPositiveYawLimit=18000,ViewNegativeYawLimit=-19500,bExposed=True,ViewFOV=85.000000)
     VehicleHudImage=Texture'InterfaceArt_tex.Tank_Hud.Stug3_body'
     VehicleHudOccupantsX(0)=0.450000
     VehicleHudOccupantsX(1)=0.510000
     VehicleHudOccupantsX(2)=0.000000
     VehicleHudOccupantsY(2)=0.000000
     VehicleHudEngineX=0.450000
     VehHitpoints(0)=(PointOffset=(Z=-5.000000),bPenetrationPoint=False)
     VehHitpoints(1)=(PointRadius=35.000000,PointOffset=(X=-85.000000),DamageMultiplier=1.000000)
     VehHitpoints(2)=(PointRadius=20.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=35.000000,Y=-25.000000,Z=5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(3)=(PointRadius=15.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=14.000000,Y=45.000000,Z=30.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(4)=(PointRadius=15.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=-14.000000,Y=45.000000,Z=30.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     DriverAttachmentBone="driver_attachment"
     Begin Object Class=SVehicleWheel Name=LF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=35.000000,Y=-5.000000,Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(0)=SVehicleWheel'ROVehicles.Stug3Destroyer.LF_Steering'

     Begin Object Class=SVehicleWheel Name=RF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=35.000000,Y=5.000000,Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(1)=SVehicleWheel'ROVehicles.Stug3Destroyer.RF_Steering'

     Begin Object Class=SVehicleWheel Name=LR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_LR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-7.000000,Y=-5.000000,Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(2)=SVehicleWheel'ROVehicles.Stug3Destroyer.LR_Steering'

     Begin Object Class=SVehicleWheel Name=RR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-7.000000,Y=5.000000,Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(3)=SVehicleWheel'ROVehicles.Stug3Destroyer.RR_Steering'

     Begin Object Class=SVehicleWheel Name=Left_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_L"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(4)=SVehicleWheel'ROVehicles.Stug3Destroyer.Left_Drive_Wheel'

     Begin Object Class=SVehicleWheel Name=Right_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_R"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=6.000000)
         WheelRadius=30.000000
     End Object
     Wheels(5)=SVehicleWheel'ROVehicles.Stug3Destroyer.Right_Drive_Wheel'

     bFPNoZFromCameraPitch=True
     DrivePos=(X=0.000000,Y=0.000000,Z=0.000000)
     DriveAnim="VStug3_driver_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=375.000000
     FPCamPos=(X=0.000000,Y=0.000000,Z=0.000000)
     TPCamDistance=600.000000
     TPCamLookat=(X=-50.000000)
     TPCamWorldOffset=(Z=250.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in a Stug III"
     VehicleNameString="Stug III"
     MaxDesireability=1.800000
     FlagBone="Mg_placement"
     FlagRotation=(Yaw=32768)
     HUDOverlayClass=Class'ROVehicles.StugIIIDriverOverlay'
     HUDOverlayFOV=85.000000
     PitchUpLimit=5000
     PitchDownLimit=60000
     HealthMax=600.000000
     Health=600
     Mesh=SkeletalMesh'axis_stug3_anm.Stug3_body_ext'
     Skins(0)=Texture'axis_vehicles_tex.ext_vehicles.Stug3_ext'
     Skins(1)=Texture'axis_vehicles_tex.Treads.Stug3_treads'
     Skins(2)=Texture'axis_vehicles_tex.Treads.Stug3_treads'
     Skins(3)=Texture'axis_vehicles_tex.int_vehicles.stug3_int'
     CollisionRadius=175.000000
     CollisionHeight=60.000000
     HighDetailOverlay=Shader'axis_vehicles_tex.int_vehicles.stug3_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=3
}
