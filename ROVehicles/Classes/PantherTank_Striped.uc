//=============================================================================
// PantherTank_Striped
//=============================================================================
// Panther Tank (Striped)
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2007 Tripwire Interactive LLC
// - Dayle Flowers
//=============================================================================

class PantherTank_Striped extends PantherTank;

static function StaticPrecache(LevelInfo L)
{
    super(ROTreadCraft).StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int_s');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.pantherg_stripe_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.PantherG_treads');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.pantherg_int_s');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.pantherg_stripe_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.PantherG_treads');

	super(ROTreadCraft).UpdatePrecacheMaterials();
}

defaultproperties
{
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.PantherCannonPawn_Striped')
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.PantherMountedMGPawn_Striped')
     Skins(0)=Texture'axis_vehicles_tex2.ext_vehicles.pantherg_stripe_ext'
}
