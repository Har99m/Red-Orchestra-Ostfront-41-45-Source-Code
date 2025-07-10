//=============================================================================
// G41Fire
//=============================================================================
// Bullet firing class for the G41 rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class G41Fire extends ROSemiAutoFire;

defaultproperties
{
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-30.000000)
     FireIronAnim="iron_shoot"
     FireSounds(0)=SoundGroup'Inf_WeaponsTwo.g41.g41_fire01'
     FireSounds(1)=SoundGroup'Inf_WeaponsTwo.g41.g41_fire02'
     FireSounds(2)=SoundGroup'Inf_WeaponsTwo.g41.g41_fire03'
     maxVerticalRecoilAngle=2400
     maxHorizontalRecoilAngle=700
     ShellEjectClass=Class'ROAmmo.ShellEject1st762x54mm'
     ShellIronSightOffset=(X=15.000000)
     ShellRotOffsetHip=(Pitch=-3000,Yaw=-3000)
     bWaitForRelease=True
     FireAnim="shoot"
     TweenTime=0.000000
     FireForce="RocketLauncherFire"
     FireRate=0.200000
     AmmoClass=Class'ROAmmo.G41Ammo'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=200.000000)
     ShakeRotRate=(X=12500.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=2.000000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=3.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=1.000000
     ProjectileClass=Class'ROInventory.G41Bullet'
     BotRefireRate=0.500000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stSVT'
     SmokeEmitterClass=Class'ROEffects.ROMuzzleSmoke'
     aimerror=1200.000000
     Spread=100.000000
     SpreadStyle=SS_Random
}
