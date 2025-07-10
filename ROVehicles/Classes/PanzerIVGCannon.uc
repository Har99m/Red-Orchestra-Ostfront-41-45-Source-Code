//=============================================================================
// PanzerIVGCannon
//=============================================================================
// Panzer IVG Cannon
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2007 Tripwire Interactive LLC
// - Dayle Flowers
//=============================================================================

class PanzerIVGCannon extends PanzerIVF2Cannon;

defaultproperties
{
     ProjectileClass=Class'ROVehicles.PanzerIVHCannonShell'
     PrimaryProjectileClass=Class'ROVehicles.PanzerIVHCannonShell'
     SecondaryProjectileClass=Class'ROVehicles.PanzerIVHCannonShellHE'
     Mesh=SkeletalMesh'axis_panzer4H_anm.Panzer4H_turret_ext'
     Skins(1)=Texture'axis_vehicles_tex2.ext_vehicles.Panzer4H_Armor'
     Skins(2)=Texture'axis_vehicles_tex.int_vehicles.Panzer4F2_int'
     HighDetailOverlayIndex=2
}
