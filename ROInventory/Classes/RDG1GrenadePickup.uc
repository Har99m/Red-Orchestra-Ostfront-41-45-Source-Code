//=============================================================================
// RDG1GrenadePickup
//=============================================================================
// Russian RDG1 smoke grenade Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2006 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class RDG1GrenadePickup extends ROOneShotWeaponPickup
   notplaceable;

//=============================================================================
// Functions
//=============================================================================

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Projectile.rgd1');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Projectile.rgd1_throw');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.RDG1_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Grenades.RDG_1'); // replaceme
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.RDG1_ammo');
}

defaultproperties
{
     TouchMessage="Pick Up: Russian RDG-1 Smoke Grenade"
     MaxDesireability=0.780000
     InventoryType=Class'ROInventory.RDG1GrenadeWeapon'
     PickupMessage="You got the Russian RDG-1 Smoke Grenade."
     PickupSound=Sound'Inf_Weapons_Foley.Misc.ammopickup'
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Projectile.RGD1'
     PrePivot=(Z=3.000000)
     CollisionRadius=15.000000
     CollisionHeight=3.000000
}
