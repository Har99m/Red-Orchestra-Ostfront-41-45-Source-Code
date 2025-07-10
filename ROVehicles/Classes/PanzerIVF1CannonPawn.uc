//===================================================================
// PanzerIVF1CannonPawn
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Panzer 4 F1 tank cannon pawn
//==================================================================

class  PanzerIVF1CannonPawn extends PanzerIVF2CannonPawn;

defaultproperties
{
     DriverPositions(0)=(ViewLocation=(X=95.000000,Z=10.000000),ViewFOV=30.000000,PositionMesh=SkeletalMesh'axis_panzer4F1_anm.Panzer4F1_turret_int')
     DriverPositions(1)=(PositionMesh=SkeletalMesh'axis_panzer4F1_anm.Panzer4F1_turret_int')
     DriverPositions(2)=(PositionMesh=SkeletalMesh'axis_panzer4F1_anm.Panzer4F1_turret_int')
     DriverPositions(3)=(PositionMesh=SkeletalMesh'axis_panzer4F1_anm.Panzer4F1_turret_int')
     GunClass=Class'ROVehicles.PanzerIVF1Cannon'
     VehiclePositionString="in a Panzer IV F1 cannon"
     VehicleNameString="Panzer IV F1 Cannon"
}
