//=============================================================================
// ROGERiflemanSS
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003-2004 Erik Christensen
//=============================================================================

class ROGESemiAutoSS extends ROGE_Standard_SS;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="SS Semi-Auto Rifleman"
     AltName="Schütze-SS mit MK"
     Article="a "
     PluralName="Semi-Auto Riflemen"
     InfoText="Schütze mit MK - Difficulty: Easy||Some of the Schütze were issued with automatic rifles, as they became available. They had the same vital role of taking and holding ground. These were standard riflemen lucky enough to get their hands on the latest technology in rifles to engage the enemy at moderate to long range.||Loadout: G43, grenades."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.SchutzemitMK'
     PrimaryWeapons(0)=(Item=Class'ROInventory.G43Weapon',Amount=9,AssociatedAttachment=Class'ROInventory.ROG43AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'ROInventory.P08LugerWeapon',Amount=1)
     SecondaryWeapons(1)=(Item=Class'ROInventory.P38Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=2)
     Headgear(0)=Class'ROInventory.ROGermanHelmet'
     PrimaryWeaponType=WT_SemiAuto
}
