//=============================================================================
// PanzerFaustImpactDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2006 John "Ramm-Jaeger" Gibson
//=============================================================================

class PanzerFaustImpactDamType extends RORocketImpactDamage
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt2_tex.deathicons.faustkill'
     WeaponClass=Class'ROInventory.PanzerFaustWeapon'
     DeathString="%o was killed by %k's Panzerfaust."
     FemaleSuicide="%o was careless with her Panzerfaust."
     MaleSuicide="%o was careless with his Panzerfaust."
     DeathOverlayMaterial=Combiner'Effects_Tex.GoreDecals.PlayerDeathOverlay'
     DeathOverlayTime=999.000000
}
