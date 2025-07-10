//=============================================================================
// SVT40ScopedFire
//=============================================================================
// Bullet firing class for the SVT40 Sniper rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class SVT40ScopedFire extends ROSemiAutoFire;

defaultproperties
{
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-35.000000)
     FireIronAnim="Scope_Shoot"
     FireSounds(0)=SoundGroup'Inf_Weapons.svt40.svt40_fire01'
     FireSounds(1)=SoundGroup'Inf_Weapons.svt40.svt40_fire02'
     FireSounds(2)=SoundGroup'Inf_Weapons.svt40.svt40_fire03'
     maxVerticalRecoilAngle=2275
     maxHorizontalRecoilAngle=1000
     ShellEjectClass=Class'ROAmmo.ShellEject1st762x54mmGreen'
     ShellIronSightOffset=(X=15.000000)
     ShellRotOffsetHip=(Pitch=-3000,Roll=-3000)
     bWaitForRelease=True
     FireAnim="shoot"
     TweenTime=0.000000
     FireForce="RocketLauncherFire"
     FireRate=0.200000
     AmmoClass=Class'ROAmmo.SVT40Ammo'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=200.000000)
     ShakeRotRate=(X=12500.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=2.000000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=3.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=1.000000
     ProjectileClass=Class'ROInventory.SVT40ScopedBullet'
     BotRefireRate=0.500000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stSVT'
     SmokeEmitterClass=Class'ROEffects.ROMuzzleSmoke'
     aimerror=1500.000000
     Spread=150.000000
     SpreadStyle=SS_Random
}
