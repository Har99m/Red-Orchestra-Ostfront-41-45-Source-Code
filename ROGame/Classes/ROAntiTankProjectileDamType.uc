//=============================================================================
// ROAntiTankProjectileDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2004 John "Ramm-Jaeger" Gibson
//=============================================================================

class ROAntiTankProjectileDamType extends ROWeaponProjectileDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.Strike'
     TankDamageModifier=1.000000
     APCDamageModifier=1.000000
     VehicleDamageModifier=1.000000
     TreadDamageModifier=1.000000
     DeathString="%o was killed by %k's Panzerfaust."
     FemaleSuicide="%o was careless with her Panzerfaust."
     MaleSuicide="%o was careless with his Panzerfaust."
     bLocationalHit=False
     bDetonatesGoop=True
     bDelayedDamage=True
     GibModifier=10.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=3000.000000
     KDeathVel=200.000000
     KDeathUpKick=300.000000
}
