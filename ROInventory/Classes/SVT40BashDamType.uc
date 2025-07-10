//=============================================================================
// SVT40BashDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class SVT40BashDamType extends ROWeaponBashDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     WeaponClass=Class'ROInventory.SVT40Weapon'
     DeathString="%o was smacked with %k's SVT40."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     KDamageImpulse=400.000000
}
