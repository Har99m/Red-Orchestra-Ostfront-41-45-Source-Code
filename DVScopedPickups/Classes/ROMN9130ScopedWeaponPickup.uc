//-----------------------------------------------------------
//
//-----------------------------------------------------------
class ROMN9130ScopedWeaponPickup extends TeamPickup;

static function StaticPrecache(LevelInfo L)
{
	L.AddPrecacheStaticMesh(StaticMesh'WeaponPickupSM.Weapons.nagant9130scoped');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.nagant9130_world');
	L.AddPrecacheMaterial(Material'Weapons3rd_tex.Soviet.NagantScope_world');
	L.AddPrecacheMaterial(Material'Weapons1st_tex.Rifles.nagant9130_sniper');
}

defaultproperties
{
    TeamNum=ALLIES


    InventoryType=class'ROInventory.MN9130ScopedWeapon'
    WeaponType=class'ROInventory.MN9130ScopedWeapon'

    PickupMessage="You got the MN9130 Scoped."
    TouchMessage="Pick Up: MN9130 Scoped"
    PickupSound=Sound'Inf_Weapons_Foley.WeaponPickup'
    PickupForce="AssaultRiflePickup"  // jdf

    bAmmoPickupIsWeapon=true

	MaxDesireability=+0.78

    StaticMesh=StaticMesh'WeaponPickupSM.Weapons.nagant9130scoped'
    RespawnTime=3.000000
    AmmoAmount = 1
    DrawType=DT_StaticMesh
    DrawScale=1.0
    AmbientGlow=10

    CollisionRadius=25.0
    CollisionHeight=3.0
    PrePivot=(X=0.0,Y=0.0,Z=3.0)
}
