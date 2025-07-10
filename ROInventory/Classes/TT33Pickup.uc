//=============================================================================
// TT33Pickup
//=============================================================================
// TT33 Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class TT33Pickup extends ROWeaponPickup
   notplaceable;

//=============================================================================
// Functions
//=============================================================================

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Weapons.tt33');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.pouches.tt33pouch');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.tt33_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Pistols.TT33_S');
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.tt33_ammo');
}

defaultproperties
{
     TouchMessage="Pick Up: TT33 Pistol"
     MaxDesireability=0.100000
     InventoryType=Class'ROInventory.TT33Weapon'
     PickupMessage="You got the TT33."
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Weapons.tt33'
     PrePivot=(Z=3.000000)
     CollisionRadius=15.000000
     CollisionHeight=3.000000
}
