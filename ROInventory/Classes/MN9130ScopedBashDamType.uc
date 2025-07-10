//=============================================================================
// MN9130ScopedBashDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class MN9130ScopedBashDamType extends ROWeaponBashDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     WeaponClass=Class'ROInventory.MN9130ScopedWeapon'
     DeathString="%o was smacked with %k's MN 91/30 scoped."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     KDamageImpulse=400.000000
}
