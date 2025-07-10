//=============================================================================
// ROSUCombatEngineerSpringNKVD
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2004
//=============================================================================
class ROSUCombatEngineerSpringNKVD extends ROSU_SpringCamo_NKVD;

//=============================================================================
// Functions
//=============================================================================

//-----------------------------------------------------------------------------
// GetHeadgear
//-----------------------------------------------------------------------------

function class<ROHeadgear> GetHeadgear()
{
	if (FRand() < 0.2)
	{
		if (FRand() < 0.5)
			return Headgear[2];
		else
			return Headgear[1];
	}
	else
	{
		return Headgear[0];
	}
}

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Combat Engineer"
     AltName="Saper"
     Article="a "
     PluralName="Combat Engineers"
     InfoText="Saper - Difficulty: Advanced||Combat engineers were specialists, trained originally as infantry, followed by additional Engineering training. They provided direct support to the division, carrying out the following tasks on a regular basis: demolitions, assaults on heavily-fortified positions, laying mines and booby-traps, finding and lifting enemy mines, building of emergency bridges, and assault river crossings."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Saper'
     PrimaryWeapons(0)=(Item=Class'ROInventory.PPD40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROPPSh41AmmoPouch')
     PrimaryWeapons(1)=(Item=Class'ROInventory.PPSH41Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROPPSh41AmmoPouch')
     PrimaryWeapons(2)=(Item=Class'ROInventory.PPS43Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROPPS43AmmoPouch')
     Grenades(0)=(Item=Class'ROInventory.F1GrenadeWeapon',Amount=1)
     GivenItems(0)="ROInventory.SatchelCharge10lb10sWeapon"
     Headgear(0)=Class'ROInventory.ROSovietSidecap'
     Headgear(1)=Class'ROInventory.ROSovietHelmet'
     Headgear(2)=Class'ROInventory.ROSovietHelmetTwo'
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=True
}
