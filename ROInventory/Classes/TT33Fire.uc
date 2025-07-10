//=============================================================================
// TT33Fire
//=============================================================================
// Bullet firing class for the TT33 pistol
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class TT33Fire extends ROPistolFire;


//defaultproperties
//{
//  	ProjectileClass = class'ROTT33Bullet'
//
//  	maxVerticalRecoilAngle=500
//  	maxHorizontalRecoilAngle=200
//// RO added or changed default properties
//  	AmmoClass=class'ROAmmo.ROtt33Ammo'
//  	bMultiFireSounds = true
//  	RONumWeapSounds = 3
//  	ROFireSound(0) = Sound'Inf_Weapons.tt33.tt33_fire01'
//  	ROFireSound(1) = Sound'Inf_Weapons.tt33.tt33_fire02'
//  	ROFireSound(2) = Sound'Inf_Weapons.tt33.tt33_fire02'
//  	NoAmmoSound=Sound'ROweaponsounds_old.generalwpn.empty_pistol'
//
//  	Spread = 825
//  	FireAnim=shoot
//  	FireAnimLast = shoot_empty
//  	FireAnimIron = iron_shoot
//  	FireAnimIronLast = iron_shoot_empty
//  	FireRate = 0.20
//
///* STANDARD UNCHANGED UT VARIABLES */
//    bPawnRapidFireAnim=true
//
//    FlashEmitterClass=class'ROMuzzleFlash1st'
//
//    SpreadStyle=SS_Random
//
//    AimError=800
//
//    ShakeOffsetMag=(X=3.0,Y=1.0,Z=3.0)
//    ShakeOffsetRate=(X=1000.0,Y=1000.0,Z=1000.0)
//    ShakeOffsetTime=1.0
//    ShakeRotMag=(X=50.0,Y=50.0,Z=50.0)
//    ShakeRotRate=(X=10000.0,Y=10000.0,Z=10000.0)
//    ShakeRotTime=1.0
//}

defaultproperties
{
     FireLastAnim="Shoot_Empty"
     FireIronLastAnim="iron_shoot_empty"
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-15.000000)
     FireIronAnim="iron_shoot"
     FireSounds(0)=SoundGroup'Inf_Weapons.tt33.tt33_fire01'
     FireSounds(1)=SoundGroup'Inf_Weapons.tt33.tt33_fire02'
     FireSounds(2)=SoundGroup'Inf_Weapons.tt33.tt33_fire03'
     maxVerticalRecoilAngle=500
     maxHorizontalRecoilAngle=200
     ShellEjectClass=Class'ROAmmo.ShellEject1st762x25mm'
     ShellIronSightOffset=(X=10.000000)
     ShellHipOffset=(Y=3.000000)
     ShellRotOffsetHip=(Pitch=2500,Yaw=4000)
     bReverseShellSpawnDirection=True
     bWaitForRelease=True
     FireAnim="shoot"
     TweenTime=0.000000
     FireRate=0.200000
     AmmoClass=Class'ROAmmo.TT33Ammo'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=50.000000)
     ShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=1.000000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=3.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=1.000000
     ProjectileClass=Class'ROInventory.TT33Bullet'
     BotRefireRate=0.500000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stPistol'
     aimerror=800.000000
     Spread=825.000000
     SpreadStyle=SS_Random
}
