//=============================================================================
// Sdkfz251Transport_Striped
//=============================================================================
// Sdkfz251 Half Track Transport Vehicle (Striped)
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2007 Tripwire Interactive LLC
// - Dayle Flowers
//=============================================================================

class Sdkfz251Transport_Striped extends Sdkfz251Transport;

static function StaticPrecache(LevelInfo L)
{
    Super.StaticPrecache(L);

 	L.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.halftrack_stripe_ext');
 	L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Halftrack_treads');
 	L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.halftrack_int');
 	L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.halftrack_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.halftrack_stripe_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.Halftrack_treads');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.halftrack_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.halftrack_int_s');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.Sdkfz251GunPawn_Striped')
     Skins(0)=Texture'axis_vehicles_tex2.ext_vehicles.halftrack_stripe_ext'
}
