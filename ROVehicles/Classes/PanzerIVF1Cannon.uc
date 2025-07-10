//===================================================================
// PanzerIVF1Cannon
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Panzer 4 tank cannon class
//===================================================================
class PanzerIVF1Cannon extends PanzerIVF2Cannon;

defaultproperties
{
     ReloadSoundOne=Sound'Vehicle_reloads.Reloads.Pz_IV_F1_Reload_01'
     ReloadSoundTwo=Sound'Vehicle_reloads.Reloads.Pz_IV_F1_Reload_02'
     ReloadSoundThree=Sound'Vehicle_reloads.Reloads.Pz_IV_F1_Reload_03'
     ReloadSoundFour=Sound'Vehicle_reloads.Reloads.Pz_IV_F1_Reload_04'
     CannonFireSound(0)=SoundGroup'Vehicle_Weapons.PanzerIV_F1.75mm_S_fire01'
     CannonFireSound(1)=SoundGroup'Vehicle_Weapons.PanzerIV_F1.75mm_S_fire02'
     CannonFireSound(2)=SoundGroup'Vehicle_Weapons.PanzerIV_F1.75mm_S_fire03'
     WeaponFireOffset=110.000000
     FireInterval=9.000000
     ProjectileClass=Class'ROVehicles.PanzerIVF1CannonShell'
     InitialPrimaryAmmo=40
     InitialSecondaryAmmo=40
     PrimaryProjectileClass=Class'ROVehicles.PanzerIVF1CannonShell'
     SecondaryProjectileClass=Class'ROVehicles.PanzerIVF1CannonShellHE'
     Mesh=SkeletalMesh'axis_panzer4F1_anm.Panzer4F1_turret_EXT'
     Skins(0)=Texture'axis_vehicles_tex.ext_vehicles.Panzer4F1_ext'
}
