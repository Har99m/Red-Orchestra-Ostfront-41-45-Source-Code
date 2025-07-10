//===================================================================
// T3485MountedTankMGPawn
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Russian T34 tank mounted machine gun pawn
//===================================================================

class T3485MountedTankMGPawn extends ROMountedTankMGPawn;

defaultproperties
{
     MGOverlay=Texture'Vehicle_Optic.Scopes.MG_sight'
     GunClass=Class'ROVehicles.T3485MountedMG'
     bHasAltFire=False
     CameraBone="T34_mg"
     bDrawDriverInTP=False
     DrivePos=(Z=130.000000)
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=130.000000
     FPCamViewOffset=(X=5.000000,Z=10.000000)
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     DriverDamageMult=0.000000
     VehiclePositionString="in a T34 Mounted MG"
     VehicleNameString="T32 Mounted MG"
     HUDOverlayClass=Class'ROVehicles.ROVehDTOverlay'
     HUDOverlayOffset=(X=-40.000000)
     HUDOverlayFOV=45.000000
     PitchUpLimit=3000
     PitchDownLimit=64000
}
