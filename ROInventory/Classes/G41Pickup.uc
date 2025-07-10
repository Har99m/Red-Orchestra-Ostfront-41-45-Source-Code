//=============================================================================
// G43Pickup
//=============================================================================
// G43 Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class G41Pickup extends ROWeaponPickup
   notplaceable;

//=============================================================================
// Functions
//=============================================================================

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Weapons.g41');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.pouches.kar98pouch');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.German.g41_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex2.Rifles.G41_S');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Bullets.kar98k_stripper_s');
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.kar98_ammo');
}

defaultproperties
{
     TouchMessage="Pick Up: G41"
     MaxDesireability=0.780000
     InventoryType=Class'ROInventory.G41Weapon'
     PickupMessage="You got the G41."
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Weapons.g41'
     PrePivot=(Z=3.000000)
     CollisionRadius=25.000000
     CollisionHeight=3.000000
}
