//=============================================================================
// P08LugerPickup
//=============================================================================
// P08 Luger Weapon pickup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class P08LugerPickup extends ROWeaponPickup
   notplaceable;

//=============================================================================
// Functions
//=============================================================================

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Weapons.luger');
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.pouches.pistolpouch');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.German.luger_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Pistols.luger_s');
	L.AddPrecacheMaterial(Material'InterfaceArt_tex.HUD.luger_ammo');
}

defaultproperties
{
     TouchMessage="Pick Up: P08 Luger Pistol"
     MaxDesireability=0.100000
     InventoryType=Class'ROInventory.P08LugerWeapon'
     PickupMessage="You got the P08 Luger."
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Weapons.luger'
     PrePivot=(Z=3.000000)
     CollisionRadius=15.000000
     CollisionHeight=3.000000
}
