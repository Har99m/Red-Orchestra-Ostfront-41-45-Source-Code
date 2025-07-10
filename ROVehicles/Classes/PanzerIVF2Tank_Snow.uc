class PanzerIVF2Tank_Snow extends PanzerIVF2Tank;

static function StaticPrecache(LevelInfo L)
{
    super(ROTreadCraft).StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.Panzer4F2Snow_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4F2_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Panzer4F2_treadsnow');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4f2_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4f2_int_s');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.Panzer4F2Snow_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4F2_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Panzer4F2_treadsnow');

	super(ROTreadCraft).UpdatePrecacheMaterials();
}

defaultproperties
{
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.PanzerIVF2CannonPawn_Snow')
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.PanzerIVF2MountedMGPawn_Snow')
     DestroyedVehicleMesh=StaticMesh'axis_vehicles_stc.Panzer4F2.Panzer4F2_Snow_Destroyed'
     Skins(0)=Texture'axis_vehicles_tex.ext_vehicles.panzer4F2snow_ext'
     Skins(1)=Texture'axis_vehicles_tex.Treads.Panzer4F2_treadsnow'
     Skins(2)=Texture'axis_vehicles_tex.Treads.Panzer4F2_treadsnow'
}
