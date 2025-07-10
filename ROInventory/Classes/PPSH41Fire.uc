//=============================================================================
// PPSH41Fire
//=============================================================================
// Bullet firing class for the PPSH41 SMG
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class PPSH41Fire extends ROFastAutoFire;


//defaultproperties
//{
//  	ProjectileClass = class'ROPPSh41Bullet'
//  	ServerProjectileClass = class'ROInventory.ROPPSh41Bullet_S'
//
///* RO ANIMATIONS VARIABLES */
//  	PreFireAnim = Shoot1_start
//  	FireEndAnim = Shoot_end        // end animation for the firing loop
//  	FireLoopAnim = Shoot_Loop     // animation that is looped during the firing loop
//  	ROIronFireLoopAnim = Iron_Shoot_Loop
//  	ROIronFireEndAnim = iron_shoot_end
//
///* RO sound VARIABLES */
//  	AmbientFireSound = sound'Inf_Weapons.ppsh41_fire_loop'
//  	NoAmmoSound = Sound'empty_pistol'
//    AmbientFireVolume=255
//    AmbientFireSoundRadius=750.0
//    FireEndSound=sound'Inf_Weapons.ppsh41_fire_end'
//    LoopFireAnimRate=1.0
//    IronLoopFireAnimRate=1.0
//
//
///* RO SPECIFIC VARIABLES */
//  	maxVerticalRecoilAngle = 730//790      // The max vertical recoil angle possible without modifiers
//  	maxHorizontalRecoilAngle = 400//625    // The max horizontal recoil angle possible without modifiers
//
///* UT VARIABLES THAT WERE CHANGED for RO */
//  	AmmoClass=class'ROAmmo.ROppsh41Ammo'
//  	FireRate = 0.0666
//  	Spread = 460
//  	AimError = 1800
//  	BotRefireRate = 0.99
//
///* STANDARD UNCHANGED UT VARIABLES */
//    FlashEmitterClass=class'ROEffects.ROMuzzleFlash1st'
//    SpreadStyle=SS_Random
//
//    ShakeOffsetMag=(X=3.0,Y=1.0,Z=3.0)
//    ShakeOffsetRate=(X=1000.0,Y=1000.0,Z=1000.0)
//    ShakeOffsetTime=1.0
//    ShakeRotMag=(X=50.0,Y=50.0,Z=150.0)
//    ShakeRotRate=(X=10000.0,Y=10000.0,Z=10000.0)
//    ShakeRotTime=0.5
//}

defaultproperties
{
     FireEndSound=SoundGroup'Inf_Weapons.ppsh41.ppsh41_fire_end'
     AmbientFireSoundRadius=750.000000
     AmbientFireSound=SoundGroup'Inf_Weapons.ppsh41.ppsh41_fire_loop'
     AmbientFireVolume=255
     ServerProjectileClass=Class'ROInventory.PPSh41Bullet_S'
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-20.000000)
     FireIronAnim="Iron_Shoot_Loop"
     FireIronLoopAnim="Iron_Shoot_Loop"
     FireIronEndAnim="Iron_Shoot_End"
     maxVerticalRecoilAngle=730
     maxHorizontalRecoilAngle=400
     RecoilRate=0.050000
     ShellEjectClass=Class'ROAmmo.ShellEject1st762x25mm'
     ShellIronSightOffset=(X=15.000000)
     ShellRotOffsetIron=(Pitch=11000)
     PreFireAnim="Shoot1_start"
     FireAnim="Shoot_Loop"
     FireLoopAnim="Shoot_Loop"
     FireEndAnim="Shoot_End"
     TweenTime=0.000000
     FireRate=0.066700
     AmmoClass=Class'ROAmmo.SMG71Rd762x25Ammo'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=150.000000)
     ShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=0.500000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=3.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=1.000000
     ProjectileClass=Class'ROInventory.PPSH41Bullet'
     BotRefireRate=0.990000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stPPSH'
     SmokeEmitterClass=Class'ROEffects.ROMuzzleSmoke'
     aimerror=1800.000000
     Spread=460.000000
     SpreadStyle=SS_Random
}
