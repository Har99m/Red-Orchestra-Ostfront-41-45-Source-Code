//=============================================================================
// PTRDAmmoPickup
//=============================================================================
// Ammo pickup for PTRD AT rifle using 14.5mm ammo
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class PTRDAmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: 14.5mm PTRD ammo pouch"
     AmmoAmount=1
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.PTRDAmmo'
     PickupMessage="You picked up a 14.5mm PTRD ammo pouch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.ptrdpouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
