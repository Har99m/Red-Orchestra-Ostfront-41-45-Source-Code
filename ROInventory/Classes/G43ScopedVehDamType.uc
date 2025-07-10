//=============================================================================
// G43ScopedVehDamType
//=============================================================================
// Vehicle Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 John "Ramm-Jaeger" Gibson
//=============================================================================

class G43ScopedVehDamType extends ROVehicleDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt2_tex.deathicons.sniperkill'
     WeaponClass=Class'ROInventory.G43ScopedWeapon'
     DeathString="%o was sniped by %k's G43."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=200.000000
}
