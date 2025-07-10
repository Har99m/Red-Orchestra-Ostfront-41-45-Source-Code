//=============================================================================
// G43AmmoPickup
//=============================================================================
// Ammo pickup for the G43
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class G43AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: G43 mag pouch"
     AmmoAmount=10
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.G43Ammo'
     PickupMessage="You picked up a G43 mag pouch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.g43pouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
