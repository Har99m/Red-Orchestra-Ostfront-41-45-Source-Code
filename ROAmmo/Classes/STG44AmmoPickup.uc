//=============================================================================
// STG44AmmoPickup
//=============================================================================
// Ammo pickup for the STG44
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class STG44AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: STG44 mag pouch"
     AmmoAmount=30
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.STG44Ammo'
     PickupMessage="You picked up a STG44 mag pouch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.stg44pouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
