class RORocketImpactDamage extends ROWeaponProjectileDamageType
	abstract;

defaultproperties
{
     TankDamageModifier=1.000000
     APCDamageModifier=1.000000
     VehicleDamageModifier=1.000000
     TreadDamageModifier=1.000000
     DeathString="%o was killed by %k's Rocket."
     FemaleSuicide="%o was careless with her Rocket."
     MaleSuicide="%o was careless with his Rocket."
     bDetonatesGoop=True
     bDelayedDamage=True
     GibModifier=10.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=4000.000000
     KDeathVel=225.000000
     KDeathUpKick=100.000000
}
