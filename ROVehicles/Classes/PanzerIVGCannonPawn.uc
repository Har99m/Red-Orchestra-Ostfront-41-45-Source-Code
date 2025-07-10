//=============================================================================
// PanzerIVGCannonPawn
//=============================================================================
// Panzer IVG Cannon Pawn
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2007 Tripwire Interactive LLC
// - Dayle Flowers
//=============================================================================

class  PanzerIVGCannonPawn extends PanzerIVF2CannonPawn;

defaultproperties
{
     DriverPositions(0)=(ViewLocation=(X=95.000000,Z=10.000000),ViewFOV=30.000000,PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_turret_int')
     DriverPositions(1)=(PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_turret_int')
     DriverPositions(2)=(PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_turret_int')
     DriverPositions(3)=(PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_turret_int')
     GunClass=Class'ROVehicles.PanzerIVGCannon'
     VehiclePositionString="in a Panzer IV G cannon"
     VehicleNameString="Panzer IV G Cannon"
}
