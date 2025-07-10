//=============================================================================
// PTRDDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 John "Ramm-Jaeger" Gibson
//=============================================================================

class PTRDDamType extends ROWeaponProjectileDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.b762mm'
     TankDamageModifier=1.000000
     APCDamageModifier=0.500000
     VehicleDamageModifier=0.350000
     TreadDamageModifier=1.000000
     WeaponClass=Class'ROInventory.PTRDWeapon'
     DeathString="%o was killed by %k's PTRD."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     bThrowRagdoll=True
     GibModifier=4.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuffLarge'
     GibPerterbation=0.150000
     KDamageImpulse=4500.000000
     KDeathVel=200.000000
     KDeathUpKick=25.000000
     VehicleMomentumScaling=0.600000
}
