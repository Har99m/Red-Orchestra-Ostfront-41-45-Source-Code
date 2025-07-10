//===================================================================
// KV1MountedMGPawn
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// KV1 tank mounted machine gun pawn
//===================================================================

class KV1MountedMGPawn extends ROMountedTankMGPawn;

defaultproperties
{
     MGOverlay=Texture'Vehicle_Optic.Scopes.MG_sight'
     GunClass=Class'ROVehicles.KV1MountedMG'
     bHasAltFire=False
     CameraBone="mg_yaw"
     bDrawDriverInTP=False
     DrivePos=(Z=130.000000)
     ExitPositions(0)=(Y=-200.000000,Z=100.000000)
     ExitPositions(1)=(Y=200.000000,Z=100.000000)
     EntryRadius=130.000000
     FPCamViewOffset=(X=10.000000,Z=5.000000)
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     DriverDamageMult=0.000000
     VehiclePositionString="in a KV1S Mounted MG"
     VehicleNameString="KV1S Mounted MG"
     HUDOverlayClass=Class'ROVehicles.ROVehDTOverlay'
     HUDOverlayOffset=(X=-40.000000)
     HUDOverlayFOV=45.000000
     PitchUpLimit=3000
     PitchDownLimit=63000
}
