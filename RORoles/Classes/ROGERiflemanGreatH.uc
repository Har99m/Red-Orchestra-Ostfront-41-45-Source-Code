//=============================================================================
// ROGERiflemanGreatH
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================

class ROGERiflemanGreatH extends ROGE_Greatcoat_Heer;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Rifleman"
     AltName="Sch�tze"
     Article="a "
     PluralName="Riflemen"
     InfoText="Sch�tze - Difficulty: Medium||The Sch�tze is the main-stay of the German infantry platoon.  He is tasked with the vital role of taking and holding ground.  Using his standard issue rifle, he can effectively engage the enemy at moderate to long range.||Loadout: Kar98K, bayonet, grenades"
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Schutze'
     PrimaryWeapons(0)=(Item=Class'ROInventory.Kar98Weapon',Amount=18,AssociatedAttachment=Class'ROInventory.ROKar98AmmoPouch')
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=2)
     Headgear(0)=Class'ROInventory.ROGermanHelmet'
}
