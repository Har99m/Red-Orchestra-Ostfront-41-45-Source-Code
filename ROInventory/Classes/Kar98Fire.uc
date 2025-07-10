//=============================================================================
// Kar98Fire
//=============================================================================
// Bullet firing class for the Kar98 rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class Kar98Fire extends ROBoltFire;

defaultproperties
{
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-30.000000)
     FireIronAnim="Iron_shootrest"
     FireSounds(0)=SoundGroup'Inf_Weapons.kar98.kar98_fire01'
     FireSounds(1)=SoundGroup'Inf_Weapons.kar98.kar98_fire02'
     FireSounds(2)=SoundGroup'Inf_Weapons.kar98.kar98_fire03'
     maxVerticalRecoilAngle=1500
     maxHorizontalRecoilAngle=600
     ShellEjectClass=Class'ROAmmo.ShellEject1st762x54mm'
     ShellIronSightOffset=(X=10.000000,Y=3.000000,Z=-5.000000)
     ShellRotOffsetIron=(Pitch=14000)
     ShellRotOffsetHip=(Pitch=-3000,Yaw=-5000)
     bWaitForRelease=True
     FireAnim="shoot_last"
     TweenTime=0.000000
     FireForce="RocketLauncherFire"
     FireRate=2.600000
     AmmoClass=Class'ROAmmo.Kar792x57Ammo'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=300.000000)
     ShakeRotRate=(X=12500.000000,Y=12500.000000,Z=7500.000000)
     ShakeRotTime=2.000000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=5.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=1.000000
     ProjectileClass=Class'ROInventory.Kar98Bullet'
     BotRefireRate=0.500000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stKar'
     SmokeEmitterClass=Class'ROEffects.ROMuzzleSmoke'
     aimerror=800.000000
     Spread=50.000000
     SpreadStyle=SS_Random
}
