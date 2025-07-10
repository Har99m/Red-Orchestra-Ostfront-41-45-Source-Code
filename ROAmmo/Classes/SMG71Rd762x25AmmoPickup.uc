//=============================================================================
// SMG71Rd762x25AmmoPickup
//=============================================================================
// Ammo pickup for PPSH style smgs
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class SMG71Rd762x25AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: 71 round 7.62x25mm drum pouch"
     AmmoAmount=71
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.SMG71Rd762x25Ammo'
     PickupMessage="You picked up a 71 round 7.62x25mm drum pouch"
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.ppshpouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
