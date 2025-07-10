//=============================================================================
// ROSUGunnerSpringNKVD
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2004
//=============================================================================
class ROSUGunnerSpringNKVD extends ROSU_SpringCamo_NKVD;

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
     MyName="Machine-gunner"
     AltName="Pulemetchik"
     Article="a "
     PluralName="Machine-gunners"
     InfoText="Pulemetchik - Difficulty: Advanced||The Pulemetchik provides the main firepower for each squad, whether on attack or defense. The Soviet Light MGs do not have the same firepower as the Germans - but they do not overheat so readily and the ammo is simpler to carry in the standard drums. However, the Soviets added a couple of extra Light MGs into the platoon to combat the German firepower. The LMG is not a close-combat weapon, so the Pulemetchik needs protection by his squad, as well as a constant supply of ammo.||Loadout: Light MG, pistol, entrenching tool||The Pulemetchik can bring the LMG into action more quickly than others; a leader spotting for him will increase his efficiency."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Pulemetchik'
     bIsGunner=True
     PrimaryWeapons(0)=(Item=Class'ROInventory.DP28Weapon',Amount=1)
     SecondaryWeapons(0)=(Item=Class'ROInventory.TT33Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.F1GrenadeWeapon',Amount=1)
     GivenItems(0)="ROInventory.BinocularsItem"
     Headgear(0)=Class'ROInventory.ROSovietSidecap'
     Headgear(1)=Class'ROInventory.ROSovietHelmet'
     Headgear(2)=Class'ROInventory.ROSovietHelmetTwo'
     PrimaryWeaponType=WT_LMG
}
