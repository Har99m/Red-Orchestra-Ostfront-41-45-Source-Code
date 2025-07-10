//=============================================================================
// DP28AmmoPickup
//=============================================================================
// Ammo pickup for DP28 machine guns
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class DP28AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: DP28 magazines"
     AmmoAmount=47
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.DP28Ammo'
     PickupMessage="DP28 magazines added to inventory."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.dp27pouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
