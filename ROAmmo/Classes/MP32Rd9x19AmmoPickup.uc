//=============================================================================
// SVT40AmmoPickup
//=============================================================================
// Ammo pickup for MP40 style machine pistols
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MP32Rd9x19AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: 32 round 9mm mag pouch"
     AmmoAmount=32
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.MP32Rd9x19Ammo'
     PickupMessage="32 round 9x19mm mag pouch added to inventory."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.MP40Pouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
