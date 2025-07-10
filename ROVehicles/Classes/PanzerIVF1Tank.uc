//===================================================================
// PanzerIVF1Tank
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Panzer 4 F1 tank class
//===================================================================
class PanzerIVF1Tank extends PanzerIVF2Tank;

#exec OBJ LOAD FILE=..\Animations\axis_panzer4F1_anm.ukx

static function StaticPrecache(LevelInfo L)
{
    Super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.Panzer4F1_ext');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4F2_int');
    L.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.panzer4F1_treads');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.ext_vehicles.Panzer4F1_ext');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.int_vehicles.Panzer4F2_int');
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex.Treads.panzer4F1_treads');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     VehicleHudTurret=TexRotator'InterfaceArt_tex.Tank_Hud.panzer4F1_turret_rot'
     VehicleHudTurretLook=TexRotator'InterfaceArt_tex.Tank_Hud.panzer4F1_turret_look'
     GearRatios(4)=0.670000
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.PanzerIVF1CannonPawn')
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.PanzerIVF1MountedMGPawn')
     DestroyedVehicleMesh=StaticMesh'axis_vehicles_stc.Panzer4F1.Panzer4F1_Destroyed'
     VehicleHudImage=Texture'InterfaceArt_tex.Tank_Hud.panzer4F1_body'
     VehicleHudOccupantsX(0)=0.450000
     VehicleHudOccupantsX(2)=0.550000
     VehiclePositionString="in a Panzer IV F1"
     VehicleNameString="Panzer IV F1"
     Skins(0)=Texture'axis_vehicles_tex.ext_vehicles.Panzer4F1_ext'
     Skins(1)=Texture'axis_vehicles_tex.Treads.Panzer4f1_treads'
     Skins(2)=Texture'axis_vehicles_tex.Treads.Panzer4f1_treads'
}
