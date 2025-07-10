//=============================================================================
// DP28Fire
//=============================================================================
// Bullet firing class for the DP28 Machine Gun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class DP28Fire extends ROMGAutomaticFire;

defaultproperties
{
     FireEndSound=SoundGroup'Inf_Weapons.dp1927.dp1927_fire_end'
     AmbientFireSoundRadius=750.000000
     AmbientFireSound=SoundGroup'Inf_Weapons.dp1927.dp1927_fire_loop'
     AmbientFireVolume=255
     PackingThresholdTime=0.120000
     ServerProjectileClass=Class'ROInventory.DP28Bullet_S'
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-20.000000)
     bUsesTracers=True
     TracerFrequency=3
     DummyTracerClass=Class'ROInventory.DP28ClientTracer'
     FireIronAnim="Bipod_Shoot_Loop"
     FireIronLoopAnim="Bipod_Shoot_Loop"
     FireIronEndAnim="Bipod_Shoot_End"
     maxVerticalRecoilAngle=750
     maxHorizontalRecoilAngle=300
     RecoilRate=0.050000
     ShellEjectClass=Class'ROAmmo.ShellEject1st762x54mmGreen'
     ShellIronSightOffset=(X=15.000000,Z=-5.000000)
     ShellHipOffset=(X=-20.000000)
     ShellRotOffsetIron=(Pitch=0)
     ShellRotOffsetHip=(Yaw=10000)
     FireAnim="Shoot_Loop"
     FireLoopAnim="Shoot_Loop"
     FireEndAnim="Shoot_End"
     TweenTime=0.000000
     FireRate=0.100000
     AmmoClass=Class'ROAmmo.DP28Ammo'
     ShakeRotMag=(X=75.000000,Y=50.000000,Z=150.000000)
     ShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=0.500000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=3.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=1.000000
     ProjectileClass=Class'ROInventory.DP28Bullet'
     BotRefireRate=0.990000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stDP'
     SmokeEmitterClass=Class'ROEffects.ROMuzzleSmoke'
     aimerror=1800.000000
     Spread=250.000000
     SpreadStyle=SS_Random
}
