//=============================================================================
// StielGranateDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class StielGranateDamType extends ROGrenadeDamType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.germgrenade'
     WeaponClass=Class'ROInventory.StielGranateWeapon'
     DeathString="%o was blown up by %k's StG39 grenade."
     DeathOverlayMaterial=Combiner'Effects_Tex.GoreDecals.PlayerDeathOverlay'
     DeathOverlayTime=999.000000
}
