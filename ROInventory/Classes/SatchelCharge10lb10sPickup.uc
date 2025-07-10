//=============================================================================
// SatchelCharge10lb10sPickup
//=============================================================================
// SatchelCharge10lb10s Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class SatchelCharge10lb10sPickup extends ROOneShotWeaponPickup
   notplaceable;

//=============================================================================
// Functions
//=============================================================================

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Projectile.satchel');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Projectile.Satchel_throw');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.German.satchel_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Grenades.SatchelCharge');
	//L.AddPrecacheMaterial(Material'ROInterfaceArt.HUD.hud_sticknade');
}

defaultproperties
{
     TouchMessage="Pick Up: 10 lb Satchel Charge"
     MaxDesireability=0.780000
     InventoryType=Class'ROInventory.SatchelCharge10lb10sWeapon'
     PickupMessage="You got the 10 lb Satchel Charge."
     PickupSound=Sound'Inf_Weapons_Foley.Misc.ammopickup'
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Projectile.satchel'
     PrePivot=(Z=3.000000)
     CollisionRadius=15.000000
     CollisionHeight=3.000000
}
