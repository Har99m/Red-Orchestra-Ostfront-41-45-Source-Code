//=============================================================================
// ROMG34DamType
//=============================================================================

class ROVehMountedMGDamType extends ROWeaponProjectileDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.b792mm'
     APCDamageModifier=0.100000
     VehicleDamageModifier=0.350000
     DeathString="%o was killed by %k's mounted MG."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
}
