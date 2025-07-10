//=============================================================================
// P38AmmoPickup
//=============================================================================
// Ammo pickup for the P38
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class P38AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: P38 mag pouch"
     AmmoAmount=8
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.P38Ammo'
     PickupMessage="You picked up a P38 mag pouch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.pistolpouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
