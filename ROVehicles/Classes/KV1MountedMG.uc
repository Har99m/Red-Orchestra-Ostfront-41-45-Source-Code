//===================================================================
// KV1MountedMG
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// KV1 tank mounted machine gun
//===================================================================

class KV1MountedMG extends VisibleTankHullMG;

defaultproperties
{
     NumMags=15
     ReloadLength=9.600000
     DummyTracerClass=Class'ROInventory.DP28ClientTracer'
     mTracerInterval=0.300000
     YawBone="mg_yaw"
     YawStartConstraint=0.000000
     YawEndConstraint=65535.000000
     PitchBone="mg_pitch"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="mg_yaw"
     WeaponFireOffset=8.000000
     bInstantFire=False
     FireSoundClass=SoundGroup'Inf_Weapons.dt.dt_fire_loop'
     AmbientSoundScaling=1.300000
     ProjectileClass=Class'ROInventory.DP28Bullet'
     MaxPositiveYaw=10000
     MaxNegativeYaw=-5500
     bLimitYaw=True
     InitialPrimaryAmmo=60
     Mesh=SkeletalMesh'allies_kv1_anm.KV1_mg_ext'
}
