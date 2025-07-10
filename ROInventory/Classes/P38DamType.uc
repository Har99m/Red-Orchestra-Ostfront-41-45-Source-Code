//=============================================================================
// P38DamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class P38DamType extends ROWeaponProjectileDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.b9mm'
     WeaponClass=Class'ROInventory.P38Weapon'
     DeathString="%o was killed by %k's P-38."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=750.000000
     KDeathVel=100.000000
     KDeathUpKick=0.000000
}
