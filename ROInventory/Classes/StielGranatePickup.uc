//=============================================================================
// StielGranatePickup
//=============================================================================
// StielGranate Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class StielGranatePickup extends ROOneShotWeaponPickup
   notplaceable;

//=============================================================================
// Functions
//=============================================================================

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Projectile.Stielhandgranate');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Projectile.Stielhandgranate_throw');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.German.Stielhandgranate');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Grenades.Stiel_S');
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.sticknade_ammo');
}

defaultproperties
{
     TouchMessage="Pick Up: German Stick Grenade"
     MaxDesireability=0.780000
     InventoryType=Class'ROInventory.StielGranateWeapon'
     PickupMessage="You got the German Stick Grenade."
     PickupSound=Sound'Inf_Weapons_Foley.Misc.ammopickup'
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Projectile.Stielhandgranate'
     PrePivot=(Z=3.000000)
     CollisionRadius=15.000000
     CollisionHeight=3.000000
}
