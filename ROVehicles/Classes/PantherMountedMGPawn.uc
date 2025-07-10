//===================================================================
// PantherMountedMGPawn
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Panther tank mounted machine gun pawn
//===================================================================

class PantherMountedMGPawn extends ROMountedTankMGPawn;

defaultproperties
{
     WeaponFov=42.500000
     GunClass=Class'ROVehicles.PantherMountedMG'
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
     VehiclePositionString="in a Panther Mounted MG"
     VehicleNameString="Panther Mounted MG"
     PitchUpLimit=3000
     PitchDownLimit=63000
}
