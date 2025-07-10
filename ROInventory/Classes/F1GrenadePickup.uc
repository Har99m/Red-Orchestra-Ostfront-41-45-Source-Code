//=============================================================================
// F1GrenadePickup
//=============================================================================
// F1Grenade Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class F1GrenadePickup extends ROOneShotWeaponPickup
   notplaceable;

//=============================================================================
// Functions
//=============================================================================

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Projectile.F1Grenade');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Projectile.F1Grenade-throw');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.f1grenade_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Grenades.F1grenade_S');
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.F1nade_ammo');
}

defaultproperties
{
     TouchMessage="Pick Up: F1 Grenade"
     MaxDesireability=0.780000
     InventoryType=Class'ROInventory.F1GrenadeWeapon'
     PickupMessage="You got the F1 Grenade."
     PickupSound=Sound'Inf_Weapons_Foley.Misc.ammopickup'
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Projectile.F1Grenade'
     PrePivot=(Z=3.000000)
     CollisionRadius=15.000000
     CollisionHeight=3.000000
}
