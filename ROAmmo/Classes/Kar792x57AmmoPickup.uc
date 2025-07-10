//=============================================================================
// Kar792x57AmmoPickup
//=============================================================================
// Ammo pickup for Kar98 rifles using 7.92x57mm ammo
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class Kar792x57AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: 7.92x57mm ammo pouch"
     AmmoAmount=5
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.Kar792x57Ammo'
     PickupMessage="You picked up a 7.92x57mm ammo pouch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.kar98pouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
