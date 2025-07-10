//=============================================================================
// ROMine
//=============================================================================
// A basic landmine
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class ROMine extends Actor
	abstract;

//=============================================================================
// Variables
//=============================================================================

var()	int			Damage;
var()	int			DamageRadius;
var()	class<DamageType>	MyDamageType;
var()	int			Momentum;
var()	class<Effects>		ExplodeEffect;
var()	Sound			ExplosionSound;

//=============================================================================
// Functions
//=============================================================================

//-----------------------------------------------------------------------------
// Touch - The mine explodes on contact
//-----------------------------------------------------------------------------

singular function Touch(Actor Other)
{
	if (Pawn(Other) == None)
		return;

	if (Role == ROLE_Authority)
	{
		HurtRadius(Damage, DamageRadius, MyDamageType, Momentum, Location);
		SetCollision(false, false, false);
	}

	SpawnExplosionEffects();
}

//-----------------------------------------------------------------------------
// SpawnExplosionEffects - Creates any effects for the explosion
//-----------------------------------------------------------------------------

function SpawnExplosionEffects()
{
	if (ExplosionSound != None)
		PlaySound(ExplosionSound,, 2.5 * TransientSoundVolume);

	Spawn(class'GrenadeExplosion',,, Location);

	//Spawn(ExplosionDecal,Other,,HitLocation, rotator(-HitNormal));
}

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     ExplosionSound=SoundGroup'Inf_Weapons.antitankmine.antitankmine_explode01'
     DrawType=DT_None
     bAcceptsProjectors=False
     RemoteRole=ROLE_None
     CollisionRadius=8.000000
     CollisionHeight=8.000000
     bUseCylinderCollision=True
}
