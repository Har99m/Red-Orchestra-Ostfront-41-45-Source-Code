//===================================================================
// SU76CannonPawn
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// SU76 tank destroyer cannon pawn
//==================================================================

class  SU76CannonPawn extends AssaultGunCannonPawn;

// Overriden because the animation needs to play on the server for this vehicle for the commanders hit detection
function ServerChangeViewPoint(bool bForward)
{
	if (bForward)
	{
		if ( DriverPositionIndex < (DriverPositions.Length - 1) )
		{
			LastPositionIndex = DriverPositionIndex;
			DriverPositionIndex++;

			if(  Level.Netmode == NM_Standalone  || Level.NetMode == NM_ListenServer )
			{
				NextViewPoint();
			}

			if( Level.NetMode == NM_DedicatedServer )
			{
				AnimateTransition();
			}
		}
     }
     else
     {
		if ( DriverPositionIndex > 0 )
		{
			LastPositionIndex = DriverPositionIndex;
			DriverPositionIndex--;

			if(  Level.Netmode == NM_Standalone || Level.Netmode == NM_ListenServer )
			{
				NextViewPoint();
			}

			if( Level.NetMode == NM_DedicatedServer )
			{
				AnimateTransition();
			}
		}
     }
}

defaultproperties
{
     CannonScopeOverlay=Texture'Vehicle_Optic.Scopes.Su76_sight'
     WeaponFov=34.000000
     AmmoShellTexture=Texture'InterfaceArt_tex.Tank_Hud.T3476_SU76_Kv1shell'
     AmmoShellReloadTexture=Texture'InterfaceArt_tex.Tank_Hud.T3476_SU76_Kv1shell_reload'
     DriverPositions(0)=(ViewLocation=(X=85.000000,Y=-10.000000,Z=11.000000),ViewFOV=34.000000,PositionMesh=SkeletalMesh'allies_su76_anm.SU76_turret_int',ViewPitchUpLimit=6000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=3000,ViewNegativeYawLimit=-3000,bDrawOverlays=True,bExposed=True)
     DriverPositions(1)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'allies_su76_anm.SU76_turret_int',TransitionUpAnim="com_open",DriverTransitionAnim="VSU76_com_close",ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=65536,ViewNegativeYawLimit=-65536,bExposed=True)
     DriverPositions(2)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'allies_su76_anm.SU76_turret_int',TransitionDownAnim="com_close",DriverTransitionAnim="VSU76_com_open",ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=65536,ViewNegativeYawLimit=-65536,bExposed=True)
     DriverPositions(3)=(ViewFOV=20.000000,PositionMesh=SkeletalMesh'allies_su76_anm.SU76_turret_int',ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=65536,ViewNegativeYawLimit=-65536,bDrawOverlays=True,bExposed=True)
     FireImpulse=(X=-70000.000000)
     GunClass=Class'ROVehicles.SU76Cannon'
     bHasAltFire=False
     CameraBone="Turret"
     RotateSound=Sound'Vehicle_Weapons.Turret.manual_gun_traverse'
     PitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_elevate'
     RotateAndPitchSound=Sound'Vehicle_Weapons.Turret.manual_gun_traverse'
     bPCRelativeFPRotation=True
     bFPNoZFromCameraPitch=True
     DriveAnim="VSU76_com_idle_close"
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=130.000000
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     VehiclePositionString="in a SU76 cannon"
     VehicleNameString="SU76 Cannon"
     PitchUpLimit=6000
     PitchDownLimit=64000
}
