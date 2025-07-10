//===================================================================
// TigerTankCannonPawn
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Tiger 1 tank cannon pawn
//==================================================================

class  TigerTankCannonPawn extends GermanTankCannonPawn;

defaultproperties
{
     ScopeCenterScale=0.680000
     ScopeCenterRotator=TexRotator'Vehicle_Optic.Scopes.tiger_sight_center'
     CenterRotationFactor=820
     CannonScopeOverlay=Texture'Vehicle_Optic.Scopes.tiger_sight_background'
     ScopePositionX=0.237000
     ScopePositionY=0.150000
     WeaponFov=34.000000
     AmmoShellTexture=Texture'InterfaceArt_tex.Tank_Hud.Tigershell'
     AmmoShellReloadTexture=Texture'InterfaceArt_tex.Tank_Hud.Tigershell_reload'
     DriverPositions(0)=(ViewLocation=(X=100.000000,Y=-30.000000),ViewFOV=34.000000,PositionMesh=SkeletalMesh'axis_tiger1_anm.Tiger1_turret_int',ViewPitchUpLimit=6000,ViewPitchDownLimit=64000,ViewPositiveYawLimit=19000,ViewNegativeYawLimit=-20000,bDrawOverlays=True)
     DriverPositions(1)=(ViewFOV=75.000000,PositionMesh=SkeletalMesh'axis_tiger1_anm.Tiger1_turret_int',TransitionUpAnim="com_open",DriverTransitionAnim="VTiger_com_close",ViewPitchUpLimit=5000,ViewPitchDownLimit=64000,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-10000)
     DriverPositions(2)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'axis_tiger1_anm.Tiger1_turret_int',TransitionDownAnim="com_close",DriverTransitionAnim="VTiger_com_open",ViewPitchUpLimit=10000,ViewPitchDownLimit=64000,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-10000,bExposed=True)
     DriverPositions(3)=(ViewFOV=20.000000,PositionMesh=SkeletalMesh'axis_tiger1_anm.Tiger1_turret_int',ViewPitchUpLimit=10000,ViewPitchDownLimit=64000,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-10000,bDrawOverlays=True,bExposed=True)
     FireImpulse=(X=-110000.000000)
     GunClass=Class'ROVehicles.TigerCannon'
     CameraBone="Turret"
     RotateSound=Sound'Vehicle_Weapons.Turret.hydraul_turret_traverse'
     PitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_elevate'
     RotateAndPitchSound=Sound'Vehicle_Weapons.Turret.hydraul_turret_traverse'
     bPCRelativeFPRotation=True
     bFPNoZFromCameraPitch=True
     DriveAnim="VTiger_com_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=130.000000
     FPCamPos=(X=50.000000,Y=-30.000000,Z=11.000000)
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     VehiclePositionString="in a Tiger 1 cannon"
     VehicleNameString="Tiger 1 Cannon"
     PitchUpLimit=6000
     PitchDownLimit=64000
     SoundVolume=130
}
