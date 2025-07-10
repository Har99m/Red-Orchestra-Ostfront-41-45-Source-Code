//=============================================================================
// TT33AmmoPickup
//=============================================================================
// Ammo pickup for the TT33
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class TT33AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: TT33 mag pouch"
     AmmoAmount=8
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.TT33Ammo'
     PickupMessage="You picked up a TT33 mag pouch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.tt33pouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
