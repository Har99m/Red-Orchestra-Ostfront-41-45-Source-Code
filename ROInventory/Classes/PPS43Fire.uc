//=============================================================================
// PPS43Fire
//=============================================================================
// Bullet firing class for the PPS43 SMG
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class PPS43Fire extends ROFastAutoFire;

defaultproperties
{
     FireEndSound=SoundGroup'Inf_Weapons.pps43.pps43_fire_end'
     AmbientFireSoundRadius=750.000000
     AmbientFireSound=SoundGroup'Inf_Weapons.pps43.pps43_fire_loop'
     AmbientFireVolume=255
     ServerProjectileClass=Class'ROInventory.PPS43Bullet_S'
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-20.000000)
     FireIronAnim="Iron_Shoot_Loop"
     FireIronLoopAnim="Iron_Shoot_Loop"
     FireIronEndAnim="Iron_Shoot_End"
     maxVerticalRecoilAngle=760
     maxHorizontalRecoilAngle=435
     RecoilRate=0.050000
     ShellEjectClass=Class'ROAmmo.ShellEject1st762x25mm'
     ShellIronSightOffset=(X=15.000000)
     ShellRotOffsetIron=(Pitch=5000)
     PreFireAnim="Shoot1_start"
     FireAnim="Shoot_Loop"
     FireLoopAnim="Shoot_Loop"
     FireEndAnim="Shoot_End"
     TweenTime=0.000000
     FireRate=0.085700
     AmmoClass=Class'ROAmmo.PPS43Ammo'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=150.000000)
     ShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=0.500000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=3.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=1.000000
     ProjectileClass=Class'ROInventory.PPS43Bullet'
     BotRefireRate=0.990000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stPPSH'
     SmokeEmitterClass=Class'ROEffects.ROMuzzleSmoke'
     aimerror=1200.000000
     Spread=410.000000
     SpreadStyle=SS_Random
}
