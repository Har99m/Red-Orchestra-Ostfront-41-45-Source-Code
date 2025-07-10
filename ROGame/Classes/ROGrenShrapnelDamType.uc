//=============================================================================
// RODamTypeGrenShrapnel
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class ROGrenShrapnelDamType extends ROWeaponProjectileDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     DeathString="%o was killed by %k's shrapnel."
     FemaleSuicide="%o was killed by his own shrapnel."
     MaleSuicide="%o was killed by his own shrapnel."
     bDelayedDamage=True
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
}
