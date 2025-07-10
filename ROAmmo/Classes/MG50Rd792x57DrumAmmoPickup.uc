//=============================================================================
// MG100Rd792x57AmmoPickup
//=============================================================================
// Ammo pickup for German machine guns using 50 round ammo drums
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MG50Rd792x57DrumAmmoPickup extends ROMultiMagAmmoPickup;

defaultproperties
{
     TouchMessage="Pick Up: 50 round 792x57mm ammo drums"
     AmmoAmount=50
     MaxDesireability=0.300000
     InventoryType=Class'ROAmmo.MG50Rd792x57DrumAmmo'
     PickupMessage="50 round 792x57mm drums added to inventory."
     PickupForce="MinigunAmmoPickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Ammo.mg34magazine'
     PrePivot=(Z=5.000000)
     CollisionRadius=10.000000
     CollisionHeight=3.000000
}
