//=============================================================================
// TigerTank_Striped
//=============================================================================
// Tiger Tank (Striped)
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2007 Tripwire Interactive LLC
// - Dayle Flowers
//=============================================================================

class TigerTank_Striped extends TigerTank;

static function StaticPrecache(LevelInfo L)
{
    super(ROTreadCraft).StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.Tiger_stripe_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Tiger1_treads');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.tiger1_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.tiger1_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.Tiger_stripe_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Tiger1_treads');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.tiger1_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.tiger1_int_s');

	super(ROTreadCraft).UpdatePrecacheMaterials();
}

defaultproperties
{
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.TigerCannonPawn_Striped')
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.TigerMountedMGPawn_Striped')
     Skins(0)=Texture'axis_vehicles_tex2.ext_vehicles.Tiger_stripe_ext'
}
