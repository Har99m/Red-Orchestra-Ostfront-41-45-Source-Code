//=============================================================================
// SVT40ScopedPickup
//=============================================================================
// SVT40 Sniper Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class SVT40ScopedPickup extends ROWeaponPickup
   notplaceable;

#exec OBJ LOAD FILE=..\StaticMeshes\WeaponPickupSM.usx
#exec OBJ LOAD File=..\Textures\Weapons3rd_tex.utx
#exec OBJ LOAD File=Weapons1st_tex.utx

//=============================================================================
// Functions
//=============================================================================

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Weapons.svt40Scope');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.pouches.svt40pouch');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.svt40_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Rifles.svt40_sniper_s');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.SniperScopes.svt_scope_s');
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.svt40_ammo');
	L.AddPrecacheMaterial(Material'Weapon_overlays.Scopes.Rus_sniperscope_overlay');
}

defaultproperties
{
     TouchMessage="Pick Up: SVT40 Scoped"
     MaxDesireability=0.780000
     InventoryType=Class'ROInventory.SVT40ScopedWeapon'
     PickupMessage="You got the SVT40 Scoped."
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Weapons.svt40scope'
     PrePivot=(Z=3.000000)
     CollisionRadius=25.000000
     CollisionHeight=3.000000
}
