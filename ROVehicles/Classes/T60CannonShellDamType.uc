//=============================================================================
// T60CannonShellDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 John "Ramm-Jaeger" Gibson
//=============================================================================

class T60CannonShellDamType extends ROWeaponProjectileDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.Strike'
     TankDamageModifier=0.500000
     APCDamageModifier=0.350000
     VehicleDamageModifier=0.350000
     TreadDamageModifier=1.000000
     WeaponClass=Class'ROInventory.PTRDWeapon'
     DeathString="%o was killed by %k's tank shell."
     FemaleSuicide="%o fired her shell prematurely."
     MaleSuicide="%o fired his shell prematurely."
     bThrowRagdoll=True
     GibModifier=3.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     GibPerterbation=0.150000
     KDamageImpulse=4500.000000
     KDeathVel=200.000000
     KDeathUpKick=15.000000
     VehicleMomentumScaling=0.300000
}
