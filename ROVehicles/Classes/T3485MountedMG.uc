//===================================================================
// T3485MountedMG
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Russian T34 tank mounted machine gun
//===================================================================

class T3485MountedMG extends VisibleTankHullMG;

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
     WeaponFireOffset=11.000000
     bInstantFire=False
     FireSoundClass=SoundGroup'Inf_Weapons.dt.dt_fire_loop'
     AmbientSoundScaling=1.300000
     ProjectileClass=Class'ROInventory.DP28Bullet'
     MaxPositiveYaw=6000
     MaxNegativeYaw=-10000
     bLimitYaw=True
     InitialPrimaryAmmo=60
     Mesh=SkeletalMesh'allies_t3485_anm.t3485_mg_ext'
}
