class SU76Destroyer_Snow extends SU76Destroyer;

static function StaticPrecache(LevelInfo L)
{
    super(ROTreadCraft).StaticPrecache(L);

    L.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.SU76Snow_ext');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.SU76_Treadsnow');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.SU76Snow_Int');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.SU76_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.SU76Snow_ext');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.SU76_Treadsnow');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.SU76Snow_Int');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.SU76_int_s');

	super(ROTreadCraft).UpdatePrecacheMaterials();
}

defaultproperties
{
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.SU76CannonPawn_Snow')
     DestroyedVehicleMesh=StaticMesh'allies_vehicles_stc.SU76.SU76_Snow_Destroyed'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.SU76snow_ext'
     Skins(1)=Texture'allies_vehicles_tex.Treads.SU76_Treadsnow'
     Skins(2)=Texture'allies_vehicles_tex.Treads.SU76_Treadsnow'
     Skins(3)=Texture'allies_vehicles_tex.int_vehicles.SU76Snow_Int'
     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.SU76Snow_int_s'
}
