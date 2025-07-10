//===================================================================
// ROT34TankCannonPawn
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Russian T34 76tank cannon pawn
//===================================================================
class  T3476TankCannonPawn extends RussianTankCannonPawn;

defaultproperties
{
     CannonScopeOverlay=Texture'Vehicle_Optic.Scopes.T3476_sight_background'
     CannonScopeCenter=Texture'Vehicle_Optic.Scopes.T3476_sight_mover'
     bLockCameraDuringTransition=True
     BinocPositionIndex=2
     WeaponFov=34.000000
     AmmoShellTexture=Texture'InterfaceArt_tex.Tank_Hud.T3476_SU76_Kv1shell'
     AmmoShellReloadTexture=Texture'InterfaceArt_tex.Tank_Hud.T3476_SU76_Kv1shell_reload'
     DriverPositions(0)=(ViewLocation=(X=115.000000,Y=-15.000000),ViewFOV=34.000000,PositionMesh=SkeletalMesh'allies_t3476_anm.T3476_turret_int',TransitionUpAnim="com_open",DriverTransitionAnim="VT3476_com_close",ViewPitchUpLimit=6000,ViewPitchDownLimit=64500,ViewPositiveYawLimit=19000,ViewNegativeYawLimit=-20000,bDrawOverlays=True)
     DriverPositions(1)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'allies_t3476_anm.T3476_turret_int',TransitionDownAnim="com_close",DriverTransitionAnim="VT3476_com_open",ViewPitchUpLimit=5000,ViewPitchDownLimit=62000,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-10000,bExposed=True)
     DriverPositions(2)=(ViewFOV=20.000000,PositionMesh=SkeletalMesh'allies_t3476_anm.T3476_turret_int',ViewPitchUpLimit=5000,ViewPitchDownLimit=62000,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-10000,bDrawOverlays=True,bExposed=True)
     GunClass=Class'ROVehicles.T3476Cannon'
     CameraBone="Turret"
     RotateSound=Sound'Vehicle_Weapons.Turret.hydraul_turret_traverse'
     PitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_elevate'
     RotateAndPitchSound=Sound'Vehicle_Weapons.Turret.hydraul_turret_traverse'
     bPCRelativeFPRotation=True
     DriveAnim="VT3476_com_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=130.000000
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     VehiclePositionString="in a T34 76 cannon"
     VehicleNameString="T34 76 Cannon"
     PitchUpLimit=6000
     PitchDownLimit=64000
     SoundVolume=130
}
