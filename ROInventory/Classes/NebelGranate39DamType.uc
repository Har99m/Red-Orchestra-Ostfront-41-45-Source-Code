//=============================================================================
// NebelGranate39DamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2006 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class NebelGranate39DamType extends ROGrenadeDamType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.germgrenade'
     WeaponClass=Class'ROInventory.NebelGranate39Weapon'
     DeathString="%o was burned up by %k's smoke grenade."
     DeathOverlayMaterial=Combiner'Effects_Tex.GoreDecals.PlayerDeathOverlay'
     DeathOverlayTime=999.000000
}
