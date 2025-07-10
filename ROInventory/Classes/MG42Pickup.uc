//=============================================================================
// MG42Pickup
//=============================================================================
// MG42 Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class MG42Pickup extends ROMGWeaponPickup
   notplaceable;

//-----------------------------------------------------------------------------
// StaticPrecache
//-----------------------------------------------------------------------------

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Arms.hands_gergloves');

	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Weapons.mg42');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Ammo.mg42magazine');
	L.AddPrecacheStaticMesh(StaticMesh'EffectsSM.Ger_Tracer');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.German.MG42_World');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.MG.MG42_S');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.MG.mg42bipod_spec');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.MG.MG42Belt_S');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.MG.mg42barrel_s');
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.MG42_ammo');
}

defaultproperties
{
     TouchMessage="Pick Up: MG42"
     MaxDesireability=0.400000
     InventoryType=Class'ROInventory.MG42Weapon'
     PickupMessage="You got the MG42."
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Weapons.mg42'
     PrePivot=(Z=3.000000)
     CollisionRadius=25.000000
     CollisionHeight=3.000000
}
