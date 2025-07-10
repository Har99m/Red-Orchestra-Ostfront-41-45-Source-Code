class ROKar98kScopedWeaponPickup extends TeamPickup;

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Weapons.k98scoped');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.German.Kar98_world');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.German.Kars98_scope_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Rifles.k98_sniper_s');
}



defaultproperties
{
    TeamNum=AXIS

    InventoryType=class'ROInventory.Kar98ScopedWeapon'
    WeaponType=class'ROInventory.Kar98ScopedWeapon'

    PickupMessage="You got the Kar98k Scoped."
    TouchMessage="Pick Up: Kar98k Scoped"
    PickupSound=Sound'Inf_Weapons_Foley.WeaponPickup'
    PickupForce="AssaultRiflePickup"  // jdf

    bAmmoPickupIsWeapon=true

	MaxDesireability=+0.78

    StaticMesh=StaticMesh'WeaponPickupSM.Weapons.k98scoped'
    RespawnTime=3.000000
    AmmoAmount = 1
    DrawType=DT_StaticMesh
    DrawScale=1.0
    AmbientGlow=10

    CollisionRadius=25.0
    CollisionHeight=3.0
    PrePivot=(X=0.0,Y=0.0,Z=3.0)
}
