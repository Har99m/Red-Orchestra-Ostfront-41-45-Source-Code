//=============================================================================
// PanzerFaustBashDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class PanzerFaustBashDamType extends ROWeaponBashDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     WeaponClass=Class'ROInventory.PanzerFaustWeapon'
     DeathString="%o was smacked with %k's Panzerfaust."
     FemaleSuicide="%o turned the rocket on herself."
     MaleSuicide="%o turned the rocket on himself."
     GibModifier=0.000000
     KDamageImpulse=400.000000
}
