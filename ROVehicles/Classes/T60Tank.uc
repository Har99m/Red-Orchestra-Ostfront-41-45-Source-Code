//===================================================================
// T60Tank
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// Russian T60 light tank
//===================================================================
class T60Tank extends ROTreadCraft;

#exec OBJ LOAD FILE=..\Animations\allies_t60_anm.ukx

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

    L.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.T60_ext');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.T60_int');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.T60_treads');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.T60_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.T60_ext');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.T60_int');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.T60_treads');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.T60_int_s');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     MaxPitchSpeed=450.000000
     TreadVelocityScale=80.000000
     LeftTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_L09'
     RightTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_R09'
     RumbleSound=Sound'Vehicle_Engines.interior.tank_inside_rumble01'
     LeftTrackSoundBone="Track_L"
     RightTrackSoundBone="Track_R"
     RumbleSoundBone="body"
     VehicleHudTurret=TexRotator'InterfaceArt_tex.Tank_Hud.T60_turret_rot'
     VehicleHudTurretLook=TexRotator'InterfaceArt_tex.Tank_Hud.T60_turret_look'
     VehicleHudThreadsPosX(1)=0.660000
     VehicleHudThreadsPosY=0.510000
     LeftWheelBones(0)="Wheel_L_1"
     LeftWheelBones(1)="Wheel_L_2"
     LeftWheelBones(2)="Wheel_L_3"
     LeftWheelBones(3)="Wheel_L_4"
     LeftWheelBones(4)="Wheel_L_5"
     LeftWheelBones(5)="Wheel_L_6"
     LeftWheelBones(6)="Wheel_L_7"
     LeftWheelBones(7)="Wheel_L_8"
     LeftWheelBones(8)="Wheel_L_9"
     RightWheelBones(0)="Wheel_R_1"
     RightWheelBones(1)="Wheel_R_2"
     RightWheelBones(2)="Wheel_R_3"
     RightWheelBones(3)="Wheel_R_4"
     RightWheelBones(4)="Wheel_R_5"
     RightWheelBones(5)="Wheel_R_6"
     RightWheelBones(6)="Wheel_R_7"
     RightWheelBones(7)="Wheel_R_8"
     RightWheelBones(8)="Wheel_R_9"
     FrontArmorFactor=5
     RearArmorFactor=1
     SideArmorFactor=2
     TreadHitMinAngle=1.900000
     TransRatio=0.130000
     LeftLeverBoneName="lever_L"
     LeftLeverAxis=AXIS_Z
     RightLeverBoneName="lever_R"
     RightLeverAxis=AXIS_Z
     ExhaustEffectClass=Class'ROEffects.ExhaustPetrolEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustPetrolEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-135.000000,Y=70.000000,Z=15.000000),ExhaustRotation=(Pitch=34000,Yaw=-16384))
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.T60CannonPawn',WeaponBone="Turret_placement")
     IdleSound=SoundGroup'Vehicle_Engines.T60.T60_engine_loop'
     StartUpSound=Sound'Vehicle_Engines.T60.t60_engine_start'
     ShutDownSound=Sound'Vehicle_Engines.T60.t60_engine_stop'
     DestroyedVehicleMesh=StaticMesh'allies_vehicles_stc.T60.T60_Destroyed'
     DisintegrationHealth=-1000.000000
     DamagedEffectScale=0.750000
     DamagedEffectOffset=(X=-100.000000,Y=20.000000,Z=26.000000)
     VehicleTeam=1
     SteeringScaleFactor=0.750000
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'allies_t60_anm.T60_body_int',TransitionUpAnim="Overlay_Out",ViewPitchUpLimit=1,ViewPitchDownLimit=65535,bDrawOverlays=True)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'allies_t60_anm.T60_body_int',TransitionUpAnim="driver_hatch_open",TransitionDownAnim="Overlay_In",DriverTransitionAnim="VT60_driver_close",ViewPitchUpLimit=2730,ViewPitchDownLimit=61923,ViewPositiveYawLimit=5500,ViewNegativeYawLimit=-5500)
     DriverPositions(2)=(PositionMesh=SkeletalMesh'allies_t60_anm.T60_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VT60_driver_open",ViewPitchUpLimit=2730,ViewPitchDownLimit=60000,ViewPositiveYawLimit=9500,ViewNegativeYawLimit=-9500,bExposed=True,ViewFOV=85.000000)
     VehicleHudImage=Texture'InterfaceArt_tex.Tank_Hud.T60_body'
     VehicleHudOccupantsX(0)=0.500000
     VehicleHudOccupantsX(1)=0.465000
     VehicleHudOccupantsX(2)=0.000000
     VehicleHudOccupantsY(0)=0.390000
     VehicleHudOccupantsY(1)=0.550000
     VehicleHudOccupantsY(2)=0.000000
     VehHitpoints(0)=(PointOffset=(X=-11.000000,Z=-30.000000))
     VehHitpoints(1)=(PointRadius=40.000000,PointOffset=(X=-90.000000),DamageMultiplier=1.000000)
     VehHitpoints(2)=(PointRadius=25.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=13.000000,Y=-25.000000,Z=-5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(3)=(PointRadius=25.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=13.000000,Y=25.000000,Z=-5.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     DriverAttachmentBone="driver_attachment"
     Begin Object Class=SVehicleWheel Name=LF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=25.000000,Y=-3.000000,Z=11.000000)
         WheelRadius=33.000000
     End Object
     Wheels(0)=SVehicleWheel'ROVehicles.T60Tank.LF_Steering'

     Begin Object Class=SVehicleWheel Name=RF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=25.000000,Y=3.000000,Z=11.000000)
         WheelRadius=33.000000
     End Object
     Wheels(1)=SVehicleWheel'ROVehicles.T60Tank.RF_Steering'

     Begin Object Class=SVehicleWheel Name=LR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_RL"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-7.000000,Y=-3.000000,Z=11.000000)
         WheelRadius=33.000000
     End Object
     Wheels(2)=SVehicleWheel'ROVehicles.T60Tank.LR_Steering'

     Begin Object Class=SVehicleWheel Name=RR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-7.000000,Y=3.000000,Z=11.000000)
         WheelRadius=33.000000
     End Object
     Wheels(3)=SVehicleWheel'ROVehicles.T60Tank.RR_Steering'

     Begin Object Class=SVehicleWheel Name=Left_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_L"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=-3.000000,Z=11.000000)
         WheelRadius=33.000000
     End Object
     Wheels(4)=SVehicleWheel'ROVehicles.T60Tank.Left_Drive_Wheel'

     Begin Object Class=SVehicleWheel Name=Right_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_R"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=-3.000000,Z=11.000000)
         WheelRadius=33.000000
     End Object
     Wheels(5)=SVehicleWheel'ROVehicles.T60Tank.Right_Drive_Wheel'

     VehicleMass=6.500000
     bFPNoZFromCameraPitch=True
     DrivePos=(X=0.000000,Y=0.000000,Z=0.000000)
     DriveAnim="VT60_driver_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=375.000000
     FPCamPos=(X=0.000000,Y=0.000000,Z=0.000000)
     TPCamDistance=600.000000
     TPCamLookat=(X=-50.000000)
     TPCamWorldOffset=(Z=250.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in a T60"
     VehicleNameString="T60"
     MaxDesireability=1.800000
     FlagBone="Mg_placement"
     FlagRotation=(Yaw=32768)
     HUDOverlayClass=Class'ROVehicles.T60DriverOverlay'
     HUDOverlayOffset=(X=2.000000)
     HUDOverlayFOV=85.000000
     PitchUpLimit=5000
     PitchDownLimit=60000
     HealthMax=400.000000
     Health=400
     Mesh=SkeletalMesh'allies_t60_anm.T60_body_ext'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.T60_ext'
     Skins(1)=Texture'allies_vehicles_tex.Treads.T60_treads'
     Skins(2)=Texture'allies_vehicles_tex.Treads.T60_treads'
     Skins(3)=Texture'allies_vehicles_tex.int_vehicles.T60_int'
     CollisionHeight=100.000000
     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.T60_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=3
}
