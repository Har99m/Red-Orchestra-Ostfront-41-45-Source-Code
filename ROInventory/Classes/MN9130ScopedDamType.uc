//=============================================================================
// MN9130ScopedDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class MN9130ScopedDamType extends ROWeaponProjectileDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt2_tex.deathicons.sniperkill'
     WeaponClass=Class'ROInventory.MN9130ScopedWeapon'
     DeathString="%o was sniped by %k's MN 91/30 scoped."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=2500.000000
}
