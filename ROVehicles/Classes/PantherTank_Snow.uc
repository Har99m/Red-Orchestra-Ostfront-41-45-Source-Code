class PantherTank_Snow extends PantherTank;

static function StaticPrecache(LevelInfo L)
{
    super(ROTreadCraft).StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int_s');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.panthergSnow_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.PantherG_treadsnow');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int_s');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.panthergSnow_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.PantherG_treadsnow');

	super(ROTreadCraft).UpdatePrecacheMaterials();
}

defaultproperties
{
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.PantherCannonPawn_Snow')
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.PantherMountedMGPawn_Snow')
     DestroyedVehicleMesh=StaticMesh'axis_vehicles_stc.PantherG.PantherG_Snow_Destroyed'
     Skins(0)=Texture'axis_vehicles_tex.ext_vehicles.panthergsnow_ext'
     Skins(1)=Texture'axis_vehicles_tex.Treads.PantherG_treadsnow'
     Skins(2)=Texture'axis_vehicles_tex.Treads.PantherG_treadsnow'
}
