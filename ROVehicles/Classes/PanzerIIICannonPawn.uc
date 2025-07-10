//===================================================================
// PanzerIIICannonPawn
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// PanzerIII tank cannon pawn
//==================================================================

class  PanzerIIICannonPawn extends GermanTankCannonPawn;

defaultproperties
{
     ScopeCenterRotator=TexRotator'Vehicle_Optic.Scopes.PZ3_Sight_Center'
     CenterRotationFactor=985
     CannonScopeOverlay=Texture'Vehicle_Optic.Scopes.PZ3_sight_background'
     ScopePositionX=0.237000
     ScopePositionY=0.150000
     WeaponFov=35.000000
     AmmoShellTexture=Texture'InterfaceArt_tex.Tank_Hud.Panzer3shell'
     AmmoShellReloadTexture=Texture'InterfaceArt_tex.Tank_Hud.Panzer3shell_reload'
     DriverPositions(0)=(ViewLocation=(X=75.000000,Y=-15.000000,Z=2.000000),ViewFOV=35.000000,PositionMesh=SkeletalMesh'axis_panzer3_anm.Panzer3_turret_int',ViewPitchUpLimit=6000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=19000,ViewNegativeYawLimit=-20000,bDrawOverlays=True)
     DriverPositions(1)=(ViewFOV=70.000000,PositionMesh=SkeletalMesh'axis_panzer3_anm.Panzer3_turret_int',TransitionUpAnim="com_open",DriverTransitionAnim="VPanzer3_com_close",ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-10000)
     DriverPositions(2)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'axis_panzer3_anm.Panzer3_turret_int',TransitionDownAnim="com_close",DriverTransitionAnim="VPanzer3_com_open",ViewPitchUpLimit=5000,ViewPitchDownLimit=60000,ViewPositiveYawLimit=10000,ViewNegativeYawLimit=-10000,bExposed=True)
     DriverPositions(3)=(ViewFOV=20.000000,PositionMesh=SkeletalMesh'axis_panzer3_anm.Panzer3_turret_int',ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=10000,ViewNegativeYawLimit=-10000,bDrawOverlays=True,bExposed=True)
     GunClass=Class'ROVehicles.PanzerIIICannon'
     CameraBone="Turret"
     RotateSound=Sound'Vehicle_Weapons.Turret.manual_turret_traverse'
     PitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_elevate'
     RotateAndPitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_traverse'
     bPCRelativeFPRotation=True
     bFPNoZFromCameraPitch=True
     DriveAnim="VPanzer3_com_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=130.000000
     FPCamPos=(X=50.000000,Y=-30.000000,Z=11.000000)
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     VehiclePositionString="in a Panzer III cannon"
     VehicleNameString="Panzer III Cannon"
     PitchUpLimit=6000
     PitchDownLimit=64000
}
