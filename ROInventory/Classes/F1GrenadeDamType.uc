//=============================================================================
// F1GrenadeDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class F1GrenadeDamType extends ROGrenadeDamType
	abstract;

//=============================================================================
// defaultproperties  `quit
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.rusgrenade'
     WeaponClass=Class'ROInventory.F1GrenadeWeapon'
     DeathString="%o was blown up by %k's F1 grenade."
     DeathOverlayMaterial=Combiner'Effects_Tex.GoreDecals.PlayerDeathOverlay'
     DeathOverlayTime=999.000000
}
