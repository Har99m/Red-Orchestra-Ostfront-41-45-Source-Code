//=============================================================================
// PPS43AmmoPickup
//=============================================================================
// Ammo pickup for the PPS43
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class PPS43AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: PPS43 mag pouch"
     AmmoAmount=35
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.PPS43Ammo'
     PickupMessage="You picked up a PPS43 mag puch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.pps43pouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
