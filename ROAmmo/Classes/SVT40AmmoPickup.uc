//=============================================================================
// SVT40AmmoPickup
//=============================================================================
// Ammo pickup for the SVT40
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class SVT40AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: SVT-40 mag pouch"
     AmmoAmount=10
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.SVT40Ammo'
     PickupMessage="You picked up a SVT-40 mag pouch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.svt40pouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
