//=============================================================================
// PanzerIVF2Tank_Striped
//=============================================================================
// Panzer IVF2 Tank (Striped)
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2007 Tripwire Interactive LLC
// - Dayle Flowers
//=============================================================================

class PanzerIVF2Tank_Striped extends PanzerIVF2Tank;

static function StaticPrecache(LevelInfo L)
{
    super(ROTreadCraft).StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.panzer4_stripe_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4F2_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4f2_int_s');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Panzer4F2_treadsnow');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.panzer4_stripe_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4F2_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4f2_int_s');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Panzer4F2_treadsnow');

	super(ROTreadCraft).UpdatePrecacheMaterials();
}

defaultproperties
{
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.PanzerIVF2CannonPawn_Striped')
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.PanzerIVF2MountedMGPawn_Striped')
     Skins(0)=Texture'axis_vehicles_tex2.ext_vehicles.panzer4_stripe_ext'
}
