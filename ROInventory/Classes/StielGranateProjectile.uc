//=============================================================================
// StielGranateProjectile
//=============================================================================
// Grenade projectile for the Gaerman StielGranate concussion grenade
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

//=============================================================================

class StielGranateProjectile extends ROGrenadeProjectile;

// Give this nade some extra spin
simulated function PostBeginPlay()
{
	super(ROThrowableExplosiveProjectile).PostBeginPlay();

	if (Role == ROLE_Authority)
	{
		Velocity = Speed * Vector(Rotation);

		if (Instigator.HeadVolume.bWaterVolume)
		{
			Velocity = 0.25 * Velocity;
		}
	}

	RotationRate.Pitch = -(90000 + 30000 * FRand());

	Acceleration = 0.5 * PhysicsVolume.Gravity;
}

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     FuzeLengthTimer=4.500000
     ExplosionSound(0)=SoundGroup'Inf_Weapons.stielhandgranate24.stielhandgranate24_explode01'
     ExplosionSound(1)=SoundGroup'Inf_Weapons.stielhandgranate24.stielhandgranate24_explode02'
     ExplosionSound(2)=SoundGroup'Inf_Weapons.stielhandgranate24.stielhandgranate24_explode03'
     Speed=1100.000000
     Damage=180.000000
     DamageRadius=768.000000
     MyDamageType=Class'ROInventory.StielGranateDamType'
     StaticMesh=StaticMesh'WeaponPickupSM.Projectile.Stielhandgranate_throw'
}
