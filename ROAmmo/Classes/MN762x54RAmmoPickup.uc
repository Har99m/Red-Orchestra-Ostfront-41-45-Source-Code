//=============================================================================
// MN762x54RAmmoPickup
//=============================================================================
// Ammo pickup for Mosin Nagant rifles using 7.62x54R ammo
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MN762x54RAmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: Mosin-Nagant ammo pouch"
     AmmoAmount=5
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.MN762x54RAmmo'
     PickupMessage="You picked up a 7.62x54R ammo pouch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.nagantpouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
