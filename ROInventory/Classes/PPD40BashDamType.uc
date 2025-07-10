//=============================================================================
// PPD40BashDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class PPD40BashDamType extends ROWeaponBashDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     WeaponClass=Class'ROInventory.PPD40Weapon'
     DeathString="%o was smacked with %k's PPD40."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     KDamageImpulse=400.000000
}
