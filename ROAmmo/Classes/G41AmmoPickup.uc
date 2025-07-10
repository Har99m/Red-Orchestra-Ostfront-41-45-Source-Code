//=============================================================================
// G41AmmoPickup
//=============================================================================
// Ammo pickup for the G41
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class G41AmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: G41 mag pouch"
     AmmoAmount=5
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.G41Ammo'
     PickupMessage="You picked up a G41 mag pouch."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.pouches.kar98pouch'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
