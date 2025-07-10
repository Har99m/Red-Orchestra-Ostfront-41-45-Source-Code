class Stug3Destroyer_Snow extends Stug3Destroyer;

static function StaticPrecache(LevelInfo L)
{
    super(ROTreadCraft).StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.Stug3Snow_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Stug3_treadsnow');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Stug3_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.stug3_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.Stug3Snow_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Stug3_treadsnow');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Stug3_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.stug3_int_s');

	super(ROTreadCraft).UpdatePrecacheMaterials();
}

defaultproperties
{
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.Stug3CannonPawn_Snow')
     DestroyedVehicleMesh=StaticMesh'axis_vehicles_stc.Stug3.Stug3_Snow_Destroyed'
     Skins(0)=Texture'axis_vehicles_tex.ext_vehicles.Stug3snow_ext'
     Skins(1)=Texture'axis_vehicles_tex.Treads.Stug3_treadsnow'
     Skins(2)=Texture'axis_vehicles_tex.Treads.Stug3_treadsnow'
}
