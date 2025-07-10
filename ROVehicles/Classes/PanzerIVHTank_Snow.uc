class PanzerIVHTank_Snow extends PanzerIVHTank;

static function StaticPrecache(LevelInfo L)
{
    super(ROTreadCraft).StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.Panzer4F2Snow_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4F2_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Panzer4F2_treadsnow');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.Panzer4H_Armor_SNOWCAMO');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4f2_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.Panzer4F2Snow_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4F2_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Panzer4F2_treadsnow');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.Panzer4H_Armor_SNOWCAMO');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4f2_int_s');

	super(ROTreadCraft).UpdatePrecacheMaterials();
}

defaultproperties
{
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.PanzerIVHCannonPawn_Snow')
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.PanzerIVHMountedMGPawn_Snow')
     Skins(0)=Texture'axis_vehicles_tex.ext_vehicles.panzer4F2snow_ext'
     Skins(1)=Texture'axis_vehicles_tex.Treads.Panzer4F2_treadsnow'
     Skins(2)=Texture'axis_vehicles_tex.Treads.Panzer4F2_treadsnow'
     Skins(3)=Texture'axis_vehicles_tex2.ext_vehicles.Panzer4H_Armor_SNOWCAMO'
}
