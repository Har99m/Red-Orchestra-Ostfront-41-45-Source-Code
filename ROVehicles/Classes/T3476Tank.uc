//===================================================================
// ROT34Tank
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Mighty Russian T34 76 tank
//===================================================================
class T3476Tank extends T3485Tank;

#exec OBJ LOAD FILE=..\Animations\allies_t3476_anm.ukx

static function StaticPrecache(LevelInfo L)
{
    Super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.T3476_ext');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.T3476_treads');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.T3476_int');
    L.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.t3476_int_s');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.ext_vehicles.T3476_ext');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.Treads.T3476_treads');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.T3476_int');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex.int_vehicles.t3476_int_s');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     VehicleHudTurret=TexRotator'InterfaceArt_tex.Tank_Hud.T3476_turret_rot'
     VehicleHudTurretLook=TexRotator'InterfaceArt_tex.Tank_Hud.T3476_turret_look'
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.T3476TankCannonPawn')
     DestroyedVehicleMesh=StaticMesh'allies_vehicles_stc.T3476.T3476_Destroyed'
     VehicleHudImage=Texture'InterfaceArt_tex.Tank_Hud.T3476_body'
     DriveAnim="VT3476_driver_idle_close"
     VehiclePositionString="in a T34/76"
     VehicleNameString="T34/76"
     HUDOverlayClass=Class'ROVehicles.T3476DriverOverlay'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.T3476_ext'
     Skins(1)=Texture'allies_vehicles_tex.Treads.T3476_treads'
     Skins(2)=Texture'allies_vehicles_tex.Treads.T3476_treads'
     Skins(3)=Texture'allies_vehicles_tex.int_vehicles.T3476_int'
     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.t3476_int_s'
}
