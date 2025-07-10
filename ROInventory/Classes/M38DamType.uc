//=============================================================================
// M38DamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class M38DamType extends ROWeaponProjectileDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.b762mm'
     WeaponClass=Class'ROInventory.M38Weapon'
     DeathString="%o was killed by %k's M38."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=2250.000000
}
