//=============================================================================
// MP40Fire
//=============================================================================
// Bullet firing class for the SVT40 rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MP40Fire extends ROAutomaticFire;

function ModeTick(float dt)
{
    Super.ModeTick(dt);

	// WeaponTODO: See how to properly reimplement this
	if ( bIsFiring && !AllowFire() /*|| bNowWaiting */)  // stopped firing, magazine empty or barrel overheat
    {
		Weapon.StopFire(ThisModeNum);
	}
}

defaultproperties
{
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-20.000000)
     FireIronAnim="Iron_Shoot_Loop"
     FireIronLoopAnim="Iron_Shoot_Loop"
     FireIronEndAnim="Iron_Shoot_End"
     FireSounds(0)=SoundGroup'Inf_Weapons.mp40.mp40_fire01'
     FireSounds(1)=SoundGroup'Inf_Weapons.mp40.mp40_fire02'
     FireSounds(2)=SoundGroup'Inf_Weapons.mp40.mp40_fire03'
     maxVerticalRecoilAngle=800
     maxHorizontalRecoilAngle=400
     PctProneIronRecoil=0.500000
     RecoilRate=0.075000
     ShellEjectClass=Class'ROAmmo.ShellEject1st9x19mm'
     ShellIronSightOffset=(X=15.000000)
     FireAnim="Shoot_Loop"
     FireLoopAnim="Shoot_Loop"
     FireEndAnim="Shoot_End"
     TweenTime=0.000000
     NoAmmoSound=Sound'Inf_Weapons_Foley.Misc.dryfire_smg'
     FireRate=0.120000
     AmmoClass=Class'ROAmmo.MP32Rd9x19Ammo'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=150.000000)
     ShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=0.500000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=3.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=1.000000
     ProjectileClass=Class'ROInventory.MP40Bullet'
     BotRefireRate=0.990000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stMP'
     SmokeEmitterClass=Class'ROEffects.ROMuzzleSmoke'
     aimerror=1200.000000
     Spread=410.000000
     SpreadStyle=SS_Random
}
