//=============================================================================
// PanzerIVGTank
//=============================================================================
// Panzer IVG Tank
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2007 Tripwire Interactive LLC
// - Dayle Flowers
//=============================================================================

class PanzerIVGTank extends PanzerIVF2Tank;

#exec OBJ LOAD FILE=..\Animations\axis_panzer4H_anm.ukx
#exec OBJ LOAD FILE=..\textures\axis_vehicles_tex2.utx

static function StaticPrecache(LevelInfo L)
{
    Super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.Panzer4H_Armor');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'axis_vehicles_tex2.ext_vehicles.Panzer4H_Armor');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     VehicleHudTurret=TexRotator'InterfaceArt2_tex.Tank_Hud.panzer4H_turret_rot'
     VehicleHudTurretLook=TexRotator'InterfaceArt2_tex.Tank_Hud.panzer4H_turret_look'
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.PanzerIVGCannonPawn')
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.PanzerIVGMountedMGPawn')
     DestroyedVehicleMesh=StaticMesh'axis_vehicles_stc.Panzer4G.Panzer4G_destroyed'
     VehiclePositionString="in a Panzer IV G"
     VehicleNameString="Panzer IV G"
     HealthMax=650.000000
     Health=650
     HighDetailOverlayIndex=4
}
