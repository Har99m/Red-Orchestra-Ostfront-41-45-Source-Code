//===================================================================
// Stug3CannonPawn
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// Stug III tank destroyer cannon pawn
//==================================================================

class  Stug3CannonPawn extends AssaultGunCannonPawn;

defaultproperties
{
     CannonScopeOverlay=Texture'Vehicle_Optic.Scopes.stug3_sight'
     bLockCameraDuringTransition=True
     BinocPositionIndex=2
     WeaponFov=17.000000
     AmmoShellTexture=Texture'InterfaceArt_tex.Tank_Hud.panzer4F2shell'
     AmmoShellReloadTexture=Texture'InterfaceArt_tex.Tank_Hud.panzer4F2shell_reload'
     DriverPositions(0)=(ViewLocation=(X=50.000000,Y=-15.000000,Z=11.000000),ViewFOV=17.000000,PositionMesh=SkeletalMesh'axis_stug3_anm.Stug3_turret_int',TransitionUpAnim="com_open",DriverTransitionAnim="VStug3_com_close",ViewPitchUpLimit=6000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=2000,ViewNegativeYawLimit=-2000,bDrawOverlays=True)
     DriverPositions(1)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'axis_stug3_anm.Stug3_turret_int',TransitionDownAnim="com_close",DriverTransitionAnim="VStug3_com_open",ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=65535,ViewNegativeYawLimit=-65535,bExposed=True)
     DriverPositions(2)=(ViewFOV=20.000000,PositionMesh=SkeletalMesh'axis_stug3_anm.Stug3_turret_int',ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=65535,ViewNegativeYawLimit=-65535,bDrawOverlays=True,bExposed=True)
     GunClass=Class'ROVehicles.Stug3Cannon'
     bHasAltFire=False
     CameraBone="Turret"
     RotateSound=Sound'Vehicle_Weapons.Turret.manual_gun_traverse'
     PitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_elevate'
     RotateAndPitchSound=Sound'Vehicle_Weapons.Turret.manual_gun_traverse'
     bPCRelativeFPRotation=True
     bFPNoZFromCameraPitch=True
     DriveAnim="VStug3_com_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=130.000000
     FPCamPos=(X=50.000000,Y=-30.000000,Z=11.000000)
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     VehiclePositionString="in a Stug III cannon"
     VehicleNameString="Stug III Cannon"
     PitchUpLimit=6000
     PitchDownLimit=64000
}
