//=====================================================
// SVT40BayonetDamType
// started by Antarian 9/17/03
//
// Copyright (C) 2003 Jeffrey Nakai
//
// class that handles the SVT40 bayonet damage type
//=====================================================

class SVT40BayonetDamType extends ROWeaponBayonetDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     WeaponClass=Class'ROInventory.SVT40Weapon'
     DeathString="%o was stabbed by %k's mounted bayonet."
     FemaleSuicide="%o turned the bayonet on herself."
     MaleSuicide="%o turned the bayonet on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=400.000000
}
