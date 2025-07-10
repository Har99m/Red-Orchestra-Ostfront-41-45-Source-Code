//=============================================================================
// ROGERiflemanSplinterH
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003-2004 Erik Christensen
//=============================================================================

class ROGERiflemanSplinterH extends ROGE_Splinter_Heer;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Rifleman"
     AltName="Schütze"
     Article="a "
     PluralName="Riflemen"
     InfoText="Schütze - Difficulty: Medium||The Schütze is the main-stay of the German infantry platoon.  He is tasked with the vital role of taking and holding ground.  Using his standard issue rifle, he can effectively engage the enemy at moderate to long range.||Loadout: Kar98K, bayonet, grenades"
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Schutze'
     PrimaryWeapons(0)=(Item=Class'ROInventory.Kar98Weapon',Amount=18,AssociatedAttachment=Class'ROInventory.ROKar98AmmoPouch')
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=2)
     Headgear(0)=Class'ROInventory.ROGermanHelmetTwo'
}
