//=====================================================
// MN9130BayonetDamType
// started by Antarian 9/17/03
//
// Copyright (C) 2003 Jeffrey Nakai
//
// class that handles the MN9130 bayonet damage type
//=====================================================

class MN9130BayonetDamType extends ROWeaponBayonetDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     WeaponClass=Class'ROInventory.MN9130Weapon'
     DeathString="%o was stabbed by %k's mounted bayonet."
     FemaleSuicide="%o turned the bayonet on herself."
     MaleSuicide="%o turned the bayonet on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=400.000000
}
