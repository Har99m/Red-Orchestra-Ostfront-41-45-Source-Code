//=============================================================================
// SVT40Pickup
//=============================================================================
// SVT40 Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class SVT40Pickup extends ROWeaponPickup
   notplaceable;

#exec OBJ LOAD FILE=..\StaticMeshes\WeaponPickupSM.usx
#exec OBJ LOAD File=..\Textures\Weapons3rd_tex.utx
#exec OBJ LOAD File=Weapons1st_tex.utx

//=============================================================================
// Functions
//=============================================================================

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Weapons.svt40');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.pouches.svt40pouch');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.svt40_world');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.svt40_bayonet_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Rifles.SVT40_S');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.bayonet.SVTBayonet_S');
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.svt40_ammo');
}

defaultproperties
{
     TouchMessage="Pick Up: SVT40"
     MaxDesireability=0.780000
     InventoryType=Class'ROInventory.SVT40Weapon'
     PickupMessage="You got the SVT40."
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Weapons.svt40'
     PrePivot=(Z=3.000000)
     CollisionRadius=25.000000
     CollisionHeight=3.000000
}
