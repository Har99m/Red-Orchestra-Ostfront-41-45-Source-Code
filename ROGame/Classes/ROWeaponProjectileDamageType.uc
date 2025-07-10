//================================================================
// ROWeaponProjectileDamageType
//
// started by Antarian 1/18/04
//
// Master class for all Red Orchestra projectile damage.  This includes
//	bullets and shrapnel
//================================================================

class ROWeaponProjectileDamageType extends ROWeaponDamageType
	abstract;

defaultproperties
{
     bRagdollBullet=True
     LowGoreDamageEmitter=Class'ROEffects.ROBloodPuffNoGore'
     LowDetailEmitter=Class'ROEffects.ROBloodPuffSmall'
     KDamageImpulse=1250.000000
     KDeathVel=115.000000
     KDeathUpKick=5.000000
}
