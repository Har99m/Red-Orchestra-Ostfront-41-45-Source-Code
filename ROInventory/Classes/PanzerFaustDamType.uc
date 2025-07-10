//=============================================================================
// PanzerFaustDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2006 John "Ramm-Jaeger" Gibson
//=============================================================================

class PanzerFaustDamType extends ROAntiTankProjectileDamType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt2_tex.deathicons.faustkill'
     WeaponClass=Class'ROInventory.PanzerFaustWeapon'
     DeathOverlayMaterial=Combiner'Effects_Tex.GoreDecals.PlayerDeathOverlay'
     DeathOverlayTime=999.000000
     KDeathVel=150.000000
     KDeathUpKick=50.000000
}
