//=============================================================================
// Kar98VehDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 John "Ramm-Jaeger" Gibson
//=============================================================================

class Kar98VehDamType extends ROVehicleDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.b792mm'
     WeaponClass=Class'ROInventory.Kar98Weapon'
     DeathString="%o was killed by %k's Kar98K."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=200.000000
}
