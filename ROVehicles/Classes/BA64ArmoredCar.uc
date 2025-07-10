//=====================================================
// BA64ArmoredCar
//
// Copyright (C) 2005 Ramm-Jaeger
//
// BA64 Armored Car
//=====================================================
class BA64ArmoredCar extends ROWheeledVehicle;

#exec OBJ LOAD FILE=..\Animations\allies_ba64_anm.ukx

static function StaticPrecache(LevelInfo L)
{
    Super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.BA64_ext');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.BA64_int');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.BA64_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.BA64_ext');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.BA64_int');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.BA64_int_s');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     WheelSoftness=0.025000
     WheelPenScale=1.200000
     WheelPenOffset=0.010000
     WheelRestitution=0.100000
     WheelInertia=0.100000
     WheelLongFrictionFunc=(Points=(,(InVal=100.000000,OutVal=1.000000),(InVal=200.000000,OutVal=0.900000),(InVal=10000000000.000000,OutVal=0.900000)))
     WheelLongSlip=0.001000
     WheelLatSlipFunc=(Points=(,(InVal=30.000000,OutVal=0.009000),(InVal=45.000000),(InVal=10000000000.000000)))
     WheelLongFrictionScale=1.100000
     WheelLatFrictionScale=1.550000
     WheelHandbrakeSlip=0.010000
     WheelHandbrakeFriction=0.100000
     WheelSuspensionTravel=10.000000
     WheelSuspensionMaxRenderTravel=5.000000
     FTScale=0.030000
     ChassisTorqueScale=0.095000
     MinBrakeFriction=4.000000
     MaxSteerAngleCurve=(Points=((OutVal=45.000000),(InVal=300.000000,OutVal=30.000000),(InVal=500.000000,OutVal=20.000000),(InVal=600.000000,OutVal=15.000000),(InVal=1000000000.000000,OutVal=10.000000)))
     TorqueCurve=(Points=((OutVal=1.000000),(InVal=200.000000,OutVal=0.750000),(InVal=1500.000000,OutVal=2.000000),(InVal=2200.000000)))
     GearRatios(0)=-0.200000
     GearRatios(1)=0.200000
     GearRatios(2)=0.350000
     GearRatios(3)=0.600000
     GearRatios(4)=0.850000
     TransRatio=0.160000
     ChangeUpPoint=1990.000000
     ChangeDownPoint=1000.000000
     LSDFactor=1.000000
     EngineBrakeFactor=0.000100
     EngineBrakeRPMScale=0.100000
     MaxBrakeTorque=20.000000
     SteerSpeed=160.000000
     TurnDamping=35.000000
     StopThreshold=100.000000
     HandbrakeThresh=200.000000
     EngineInertia=0.100000
     IdleRPM=500.000000
     EngineRPMSoundRange=5000.000000
     SteerBoneName="Steering"
     RevMeterScale=4000.000000
     ExhaustEffectClass=Class'ROEffects.ExhaustPetrolEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustPetrolEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-20.000000,Y=30.000000,Z=-35.000000),ExhaustRotation=(Pitch=34000,Yaw=-5000))
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.BA64GunPawn',WeaponBone="Turret_placement")
     IdleSound=SoundGroup'Vehicle_Engines.BA64.ba64_engine_loop'
     StartUpSound=Sound'Vehicle_Engines.BA64.BA64_engine_start'
     ShutDownSound=Sound'Vehicle_Engines.BA64.BA64_engine_stop'
     DestroyedVehicleMesh=StaticMesh'allies_vehicles_stc.BA64.BA64_Destoyed'
     DisintegrationHealth=-10000.000000
     DestructionLinearMomentum=(Min=100.000000,Max=350.000000)
     DestructionAngularMomentum=(Max=150.000000)
     DamagedEffectScale=0.750000
     DamagedEffectOffset=(X=-40.000000,Y=10.000000,Z=10.000000)
     VehicleTeam=1
     SteeringScaleFactor=4.000000
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'allies_ba64_anm.BA64_body_int',TransitionUpAnim="Overlay_Out",ViewPitchUpLimit=1,ViewPitchDownLimit=65535,bDrawOverlays=True)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'allies_ba64_anm.BA64_body_int',TransitionUpAnim="driver_hatch_open",TransitionDownAnim="Overlay_In",DriverTransitionAnim="VBA64_driver_close",ViewPitchUpLimit=2730,ViewPitchDownLimit=60065,ViewPositiveYawLimit=5500,ViewNegativeYawLimit=-5500)
     DriverPositions(2)=(PositionMesh=SkeletalMesh'allies_ba64_anm.BA64_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VBA64_driver_open",ViewPitchUpLimit=9500,ViewPitchDownLimit=62835,ViewPositiveYawLimit=9500,ViewNegativeYawLimit=-9500,bExposed=True,ViewFOV=85.000000)
     VehicleHudImage=Texture'InterfaceArt_tex.Tank_Hud.BA64_body'
     VehicleHudOccupantsX(0)=0.500000
     VehicleHudOccupantsX(2)=0.000000
     VehicleHudOccupantsY(0)=0.500000
     VehicleHudOccupantsY(1)=0.665000
     VehicleHudOccupantsY(2)=0.000000
     VehicleHudEngineY=0.300000
     VehHitpoints(0)=(PointRadius=7.000000,PointOffset=(X=-10.000000,Z=-7.000000),bPenetrationPoint=False)
     VehHitpoints(1)=(PointRadius=22.000000,PointBone="Engine",PointOffset=(X=60.000000,Z=-10.000000),DamageMultiplier=5.000000)
     bIsApc=True
     DriverAttachmentBone="driver_attachment"
     Begin Object Class=SVehicleWheel Name=LFWheel
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=-9.000000,Z=2.000000)
         WheelRadius=26.000000
         SupportBoneName="Axle_RF"
         SupportBoneAxis=AXIS_X
     End Object
     Wheels(0)=SVehicleWheel'ROVehicles.BA64ArmoredCar.LFWheel'

     Begin Object Class=SVehicleWheel Name=RFWheel
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=9.000000,Z=2.000000)
         WheelRadius=26.000000
         SupportBoneName="Axle_LF"
         SupportBoneAxis=AXIS_X
     End Object
     Wheels(1)=SVehicleWheel'ROVehicles.BA64ArmoredCar.RFWheel'

     Begin Object Class=SVehicleWheel Name=LRWheel
         bPoweredWheel=True
         bHandbrakeWheel=True
         BoneName="steer_wheel_LR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=-9.000000,Z=2.000000)
         WheelRadius=26.000000
         SupportBoneName="Axle_LR"
         SupportBoneAxis=AXIS_X
     End Object
     Wheels(2)=SVehicleWheel'ROVehicles.BA64ArmoredCar.LRWheel'

     Begin Object Class=SVehicleWheel Name=RRWheel
         bPoweredWheel=True
         bHandbrakeWheel=True
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Y=9.000000,Z=2.000000)
         WheelRadius=26.000000
         SupportBoneName="Axle_RR"
         SupportBoneAxis=AXIS_X
     End Object
     Wheels(3)=SVehicleWheel'ROVehicles.BA64ArmoredCar.RRWheel'

     VehicleMass=3.000000
     bHasHandbrake=True
     DriveAnim="VBA64_driver_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     ExitPositions(2)=(Y=-200.000000,Z=100.000000)
     ExitPositions(3)=(Y=200.000000,Z=100.000000)
     EntryRadius=160.000000
     FPCamPos=(X=42.000000,Y=-18.000000,Z=33.000000)
     TPCamDistance=375.000000
     CenterSpringForce="SpringONSSRV"
     TPCamLookat=(X=0.000000,Z=0.000000)
     TPCamWorldOffset=(Z=100.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in a BA-64 armored car"
     VehicleNameString="BA-64"
     MaxDesireability=0.100000
     ObjectiveGetOutDist=1500.000000
     HUDOverlayClass=Class'ROVehicles.BA64DriverOverlay'
     HUDOverlayOffset=(X=2.000000)
     HUDOverlayFOV=85.000000
     GroundSpeed=325.000000
     PitchUpLimit=500
     PitchDownLimit=58000
     HealthMax=250.000000
     Health=250
     Mesh=SkeletalMesh'allies_ba64_anm.BA64_body_ext'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.BA64_ext'
     Skins(1)=Texture'allies_vehicles_tex.int_vehicles.BA64_int'
     CollisionRadius=175.000000
     CollisionHeight=40.000000
     Begin Object Class=KarmaParamsRBFull Name=KParams0
         KInertiaTensor(0)=1.300000
         KInertiaTensor(3)=3.000000
         KInertiaTensor(5)=3.000000
         KCOMOffset=(X=0.300000,Z=-0.525000)
         KLinearDamping=0.050000
         KAngularDamping=0.050000
         KStartEnabled=True
         bKNonSphericalInertia=True
         bHighDetailOnly=False
         bClientOnly=False
         bKDoubleTickRate=True
         bDestroyOnWorldPenetrate=True
         bDoSafetime=True
         KFriction=0.500000
         KImpactThreshold=700.000000
     End Object
     KParams=KarmaParamsRBFull'ROVehicles.BA64ArmoredCar.KParams0'

     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.BA64_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=1
}
