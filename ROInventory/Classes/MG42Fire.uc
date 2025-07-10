//=============================================================================
// MG42Fire
//=============================================================================
// Bullet firing class for the MG42 Machine Gun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MG42Fire extends ROMGAutomaticFire;

// So we don't have to cast 1200 times per minute :)
var MG42Weapon MGWeapon;

simulated function PostBeginPlay()
{
	super.PostBeginPlay();

	MGWeapon = MG42Weapon(Weapon);
}

event ModeDoFire()
{
	Super.ModeDoFire();

	if( Level.NetMode != NM_DedicatedServer )
		MGWeapon.UpdateAmmoBelt();
}

defaultproperties
{
     FireEndSound=SoundGroup'Inf_Weapons.mg42.mg42_fire_end'
     AmbientFireSoundRadius=750.000000
     AmbientFireSound=SoundGroup'Inf_Weapons.mg42.mg42_fire_loop'
     AmbientFireVolume=255
     PackingThresholdTime=0.120000
     ServerProjectileClass=Class'ROInventory.MG34Bullet_S'
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-145.000000,Y=-15.000000,Z=-15.000000)
     bUsesTracers=True
     TracerFrequency=4
     DummyTracerClass=Class'ROInventory.MG34ClientTracer'
     FireIronAnim="Shoot_Loop"
     FireIronLoopAnim="Shoot_Loop"
     FireIronEndAnim="Shoot_End"
     maxVerticalRecoilAngle=600
     maxHorizontalRecoilAngle=300
     RecoilRate=0.040000
     ShellEjectClass=Class'ROAmmo.ShellEject1st762x54mm'
     ShellIronSightOffset=(X=15.000000,Z=-6.000000)
     ShellRotOffsetIron=(Pitch=-1500)
     FireAnim="Shoot_Loop"
     FireLoopAnim="Shoot_Loop"
     FireEndAnim="Shoot_End"
     TweenTime=0.000000
     FireRate=0.050000
     AmmoClass=Class'ROAmmo.MG100Rd792x57Ammo'
     ShakeRotMag=(X=25.000000,Y=25.000000,Z=25.000000)
     ShakeRotRate=(X=5000.000000,Y=5000.000000,Z=5000.000000)
     ShakeRotTime=1.750000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=3.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=2.000000
     ProjectileClass=Class'ROInventory.ROMG34Bullet'
     BotRefireRate=0.990000
     WarnTargetPct=0.900000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash1stMG'
     SmokeEmitterClass=Class'ROEffects.ROMuzzleSmoke'
     aimerror=1800.000000
     Spread=350.000000
     SpreadStyle=SS_Random
}
