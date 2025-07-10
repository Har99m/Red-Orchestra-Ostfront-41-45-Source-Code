//===================================================================
// PanzerIVF2MountedMG
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Panzer 4 tank mounted machine gun
//===================================================================

class PanzerIVF2MountedMG extends HiddenTankHullMG;

defaultproperties
{
     ReloadSound=Sound'Vehicle_reloads.Reloads.MG34_ReloadHidden'
     NumMags=4
     DummyTracerClass=Class'ROInventory.MG34ClientTracer'
     mTracerInterval=0.280000
     hudAltAmmoIcon=Texture'InterfaceArt_tex.HUD.mg42_ammo'
     YawBone="mg_yaw"
     YawStartConstraint=0.000000
     YawEndConstraint=65535.000000
     PitchBone="mg_pitch"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="mg_yaw"
     WeaponFireOffset=28.000000
     bInstantFire=False
     FireInterval=0.070580
     FireSoundClass=SoundGroup'Inf_Weapons.mg34_p.mg34_p_fire_loop'
     AmbientSoundScaling=1.300000
     ProjectileClass=Class'ROInventory.ROMG34Bullet'
     MaxPositiveYaw=10000
     MaxNegativeYaw=-10000
     bLimitYaw=True
     InitialPrimaryAmmo=150
     Mesh=SkeletalMesh'axis_panzer4F2_anm.Panzer4F2_mg_ext'
}
