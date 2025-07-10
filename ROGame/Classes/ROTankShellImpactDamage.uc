class ROTankShellImpactDamage extends ROWeaponDamageType
	abstract;

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.Strike'
     TankDamageModifier=1.000000
     APCDamageModifier=1.000000
     VehicleDamageModifier=1.000000
     TreadDamageModifier=1.000000
     DeathString="%o was killed by %k's tank shell."
     FemaleSuicide="%o fired her shell prematurely."
     MaleSuicide="%o fired his shell prematurely."
     bArmorStops=False
     bDetonatesGoop=True
     bDelayedDamage=True
     bThrowRagdoll=True
     bFlaming=True
     GibModifier=4.000000
     DeathOverlayMaterial=Combiner'Effects_Tex.GoreDecals.PlayerDeathOverlay'
     DeathOverlayTime=999.000000
     GibPerterbation=0.150000
     KDamageImpulse=5000.000000
     KDeathVel=350.000000
     KDeathUpKick=50.000000
     VehicleMomentumScaling=1.300000
     HumanObliterationThreshhold=150
}
