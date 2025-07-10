//=============================================================================
// ROGERole.
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003-2004 Erik Christensen
//=============================================================================

class ROGERole extends RORoleInfo
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     VoiceType="ROGame.ROGerman1Voice"
     AltVoiceType="ROGame.ROGerman1Voice"
     SleeveTexture=Texture'Weapons1st_tex.Arms.german_sleeves'
     DetachedArmClass=Class'ROEffects.SeveredArmGerTunic'
     DetachedLegClass=Class'ROEffects.SeveredLegGerTunic'
}
