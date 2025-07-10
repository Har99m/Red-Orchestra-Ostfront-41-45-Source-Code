//=============================================================================
// SVT40ScopedVehDamType
//=============================================================================
// Vehicle Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 John "Ramm-Jaeger" Gibson
//=============================================================================

class SVT40ScopedVehDamType extends ROVehicleDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt2_tex.deathicons.sniperkill'
     WeaponClass=Class'ROInventory.SVT40ScopedWeapon'
     DeathString="%o was sniped by %k's SVT-40."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=200.000000
}
