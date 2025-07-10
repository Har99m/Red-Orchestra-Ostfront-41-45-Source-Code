//=============================================================================
// P08LugerFire
//=============================================================================
// Bullet firing class for the P08 Luger pistol
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class P08LugerFire extends ROPistolFire;

defaultproperties
{
     FireLastAnim="Shoot_Empty"
     FireIronLastAnim="iron_shoot_empty"
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-15.000000)
     FireIronAnim="iron_shoot"
     FireSounds(0)=SoundGroup'Inf_Weapons.lugerp08.lugerp08_fire01'
     FireSounds(1)=SoundGroup'Inf_Weapons.lugerp08.lugerp08_fire02'
     FireSounds(2)=SoundGroup'Inf_Weapons.lugerp08.lugerp08_fire03'
     maxVerticalRecoilAngle=500
     maxHorizontalRecoilAngle=200
     ShellEjectClass=Class'ROAmmo.ShellEject1st9x19mm'
     ShellIronSightOffset=(X=10.000000)
     ShellHipOffset=(Y=-7.000000)
     bWaitForRelease=True
     FireAnim="shoot"
     TweenTime=0.000000
     FireRate=0.200000
     AmmoClass=Class'ROAmmo.P08LugerAmmo'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=50.000000)
     ShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=1.000000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=3.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=1.000000
     ProjectileClass=Class'ROInventory.P08LugerBullet'
     BotRefireRate=0.500000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stPistol'
     aimerror=800.000000
     Spread=725.000000
     SpreadStyle=SS_Random
}
