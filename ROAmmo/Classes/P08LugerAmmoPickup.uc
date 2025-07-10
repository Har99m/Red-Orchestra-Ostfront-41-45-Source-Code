//=============================================================================
// P08LugerAmmoPickup
//=============================================================================
// Ammo pickup for the P08 Luger
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class P08LugerAmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: P08 Luger mag pouch"
     AmmoAmount=8
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.P08LugerAmmo'
     PickupMessage="You picked up a P08 Luger mag pouch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.pistolpouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
