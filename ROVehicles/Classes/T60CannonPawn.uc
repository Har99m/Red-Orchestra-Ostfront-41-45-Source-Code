//===================================================================
// T60CannonPawn
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// T60 tank cannon pawn
//===================================================================
class  T60CannonPawn extends RussianTankCannonPawn;

defaultproperties
{
     ScopeCenterScaleX=2.000000
     CannonScopeOverlay=Texture'Vehicle_Optic.Scopes.T60_sight'
     CannonScopeCenter=Texture'Vehicle_Optic.Scopes.T3476_sight_mover'
     ScopePositionX=0.075000
     WeaponFov=34.000000
     AmmoShellTexture=Texture'InterfaceArt_tex.Tank_Hud.t60shell'
     AmmoShellReloadTexture=Texture'InterfaceArt_tex.Tank_Hud.t60_reload'
     DriverPositions(0)=(ViewLocation=(X=85.000000,Y=2.000000),ViewFOV=34.000000,PositionMesh=SkeletalMesh'allies_t60_anm.T60_turret_int',ViewPitchUpLimit=6000,ViewPitchDownLimit=64500,ViewPositiveYawLimit=19000,ViewNegativeYawLimit=-20000,bDrawOverlays=True)
     DriverPositions(1)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'allies_t60_anm.T60_turret_int',TransitionUpAnim="com_open",DriverTransitionAnim="VT60_com_close",ViewPitchUpLimit=5000,ViewPitchDownLimit=65535,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-10000)
     DriverPositions(2)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'allies_t60_anm.T60_turret_int',TransitionDownAnim="com_close",DriverTransitionAnim="VT60_com_open",ViewPitchUpLimit=5000,ViewPitchDownLimit=62000,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-10000,bExposed=True)
     DriverPositions(3)=(ViewFOV=20.000000,PositionMesh=SkeletalMesh'allies_t60_anm.T60_turret_int',ViewPitchUpLimit=5000,ViewPitchDownLimit=62000,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-10000,bDrawOverlays=True,bExposed=True)
     FireImpulse=(X=-10000.000000)
     GunClass=Class'ROVehicles.T60Cannon'
     CameraBone="Turret_placement1"
     RotateSound=Sound'Vehicle_Weapons.Turret.manual_turret_traverse'
     PitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_elevate'
     RotateAndPitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_traverse'
     bPCRelativeFPRotation=True
     DriveAnim="VT60_com_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=130.000000
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     VehiclePositionString="in a T60 cannon"
     VehicleNameString="T60 Cannon"
     PitchUpLimit=6000
     PitchDownLimit=64000
}
