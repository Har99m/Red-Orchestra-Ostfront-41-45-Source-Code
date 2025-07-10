//================================================================
// ROWeaponBayonetDamageType
//
// started by Antarian 12/26/03
//
// Master class for all Red Orchestra knife-based damage.  This will
//	include bayonet damage and eventually knife damage.
//	Only includes damage classes with the 'Bayonet' -prefix or the
//	'Knife' -prefix
//================================================================

class ROWeaponBayonetDamageType extends ROWeaponBayonetDamType
	abstract;

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.knife'
     bCauseViewJarring=True
     KDamageImpulse=1000.000000
     KDeathVel=100.000000
     KDeathUpKick=10.000000
}
