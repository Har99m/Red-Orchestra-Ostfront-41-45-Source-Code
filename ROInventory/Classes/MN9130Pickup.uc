//=============================================================================
// MN9130Pickup
//=============================================================================
// MN9130 Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class MN9130Pickup extends ROWeaponPickup
   notplaceable;

//-----------------------------------------------------------------------------
// StaticPrecache
//-----------------------------------------------------------------------------

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Weapons.Nagant9130');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.pouches.nagantpouch');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.Nagant9130_world');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.nagantstripper_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Rifles.MN9130_S');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Rifles.NagantForearm_S');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Bullets.mn_stripper_s');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Bayonet.MNBayonet_s');
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.nagant_ammo');
}

defaultproperties
{
     TouchMessage="Pick Up: MN 91/30"
     MaxDesireability=0.400000
     InventoryType=Class'ROInventory.MN9130Weapon'
     PickupMessage="You got the MN 91/30."
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Weapons.nagant9130'
     PrePivot=(Z=3.000000)
     CollisionRadius=25.000000
     CollisionHeight=3.000000
}
