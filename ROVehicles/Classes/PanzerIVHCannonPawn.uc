//===================================================================
// PanzerIVHCannonPawn
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Panzer 4 H tank cannon pawn
//==================================================================

class  PanzerIVHCannonPawn extends PanzerIVF2CannonPawn;

defaultproperties
{
     DriverPositions(0)=(ViewLocation=(X=95.000000,Z=10.000000),ViewFOV=30.000000,PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_turret_int')
     DriverPositions(1)=(PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_turret_int')
     DriverPositions(2)=(PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_turret_int')
     DriverPositions(3)=(PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_turret_int')
     GunClass=Class'ROVehicles.PanzerIVHCannon'
     VehiclePositionString="in a Panzer IV H cannon"
     VehicleNameString="Panzer IV H Cannon"
}
