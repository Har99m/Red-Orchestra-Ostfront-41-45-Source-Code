//=============================================================================
// M44BayonetDamType
//=============================================================================
// class that handles the M44 bayonet damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2006 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class M44BayonetDamType extends ROWeaponBayonetDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     WeaponClass=Class'ROInventory.M44Weapon'
     DeathString="%o was stabbed by %k's mounted bayonet."
     FemaleSuicide="%o turned the bayonet on herself."
     MaleSuicide="%o turned the bayonet on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=400.000000
}
