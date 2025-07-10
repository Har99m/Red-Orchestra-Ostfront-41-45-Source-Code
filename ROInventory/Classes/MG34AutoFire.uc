//=============================================================================
// MG34AutoFire
//=============================================================================
// Automatic bullet firing class for the MG34 Machine Gun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MG34AutoFire extends ROMGAutomaticFire;

defaultproperties
{
     PctHipMGPenalty=1.500000
     FireEndSound=SoundGroup'Inf_Weapons.mg34.mg34_fire_end'
     AmbientFireSoundRadius=750.000000
     AmbientFireSound=SoundGroup'Inf_Weapons.mg34.mg34_fire_loop'
     AmbientFireVolume=255
     PackingThresholdTime=0.120000
     ServerProjectileClass=Class'ROInventory.MG34Bullet_S'
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-20.000000)
     bUsesTracers=True
     TracerFrequency=4
     DummyTracerClass=Class'ROInventory.MG34ClientTracer'
     FireIronAnim="Shoot_Loop"
     FireIronLoopAnim="Bipod_Shoot_Loop"
     FireIronEndAnim="Bipod_Shoot_End"
     maxVerticalRecoilAngle=600
     maxHorizontalRecoilAngle=300
     RecoilRate=0.040000
     ShellEjectClass=Class'ROAmmo.ShellEject1st762x54mm'
     ShellIronSightOffset=(X=20.000000,Z=-10.000000)
     ShellRotOffsetIron=(Pitch=-13000)
     ShellRotOffsetHip=(Pitch=-13000)
     FireAnim="Shoot_Loop"
     FireLoopAnim="Shoot_Loop"
     FireEndAnim="Hip_Shoot_End"
     TweenTime=0.000000
     FireRate=0.070000
     AmmoClass=Class'ROAmmo.MG50Rd792x57DrumAmmo'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=50.000000)
     ShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=2.000000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=3.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=2.000000
     ProjectileClass=Class'ROInventory.ROMG34Bullet'
     BotRefireRate=0.990000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stMG'
     SmokeEmitterClass=Class'ROEffects.ROMuzzleSmoke'
     aimerror=1800.000000
     Spread=250.000000
     SpreadStyle=SS_Random
}
