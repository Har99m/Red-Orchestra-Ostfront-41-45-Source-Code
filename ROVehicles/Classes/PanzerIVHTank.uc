//===================================================================
// PanzerIVHTank
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Panzer 4 H tank class
//===================================================================
class PanzerIVHTank extends PanzerIVF2Tank;

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
     FrontArmorFactor=8
     SideArmorFactor=4
     bHasAddedSideArmor=True
     PassengerWeapons(0)=(WeaponPawnClass=Class'ROVehicles.PanzerIVHCannonPawn')
     PassengerWeapons(1)=(WeaponPawnClass=Class'ROVehicles.PanzerIVHMountedMGPawn')
     DestroyedVehicleMesh=StaticMesh'axis_vehicles_stc.Panzer4H.Panzer4H_Destroyed'
     DriverPositions(0)=(PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_body_int')
     DriverPositions(1)=(PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_body_int')
     DriverPositions(2)=(PositionMesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_body_int')
     VehicleHudImage=Texture'InterfaceArt2_tex.Tank_Hud.panzer4H_body'
     VehiclePositionString="in a Panzer IV H"
     VehicleNameString="Panzer IV H"
     HealthMax=650.000000
     Health=650
     Mesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_body_ext'
     Skins(3)=Texture'axis_vehicles_tex2.ext_vehicles.Panzer4H_Armor'
     Skins(4)=Texture'axis_vehicles_tex.int_vehicles.Panzer4F2_int'
     HighDetailOverlayIndex=4
}
