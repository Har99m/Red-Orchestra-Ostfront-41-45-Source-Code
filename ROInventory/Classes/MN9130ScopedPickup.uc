//=============================================================================
// MN9130ScopedPickup
//=============================================================================
// MN9130 Scoped Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class MN9130ScopedPickup extends ROWeaponPickup
   notplaceable;

//-----------------------------------------------------------------------------
// StaticPrecache
//-----------------------------------------------------------------------------

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Weapons.Nagant9130Scoped');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.pouches.nagantpouch');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.Nagant9130_world');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.NagantScope_world');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.nagantstripper_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Rifles.MN9130_S');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.SniperScopes.nagantscope_s');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Rifles.NagantForearm_S');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Bullets.mn_stripper_s');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Bayonet.MNBayonet_s');
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.nagant_ammo');
	L.AddPrecacheMaterial(Material'Weapon_overlays.Scopes.Rus_sniperscope_overlay');
}

defaultproperties
{
     TouchMessage="Pick Up: MN 91/30 sniper"
     MaxDesireability=0.400000
     InventoryType=Class'ROInventory.MN9130ScopedWeapon'
     PickupMessage="You got the MN 91/30 sniper."
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Weapons.Nagant9130scoped'
     PrePivot=(Z=3.000000)
     CollisionRadius=25.000000
     CollisionHeight=3.000000
}
