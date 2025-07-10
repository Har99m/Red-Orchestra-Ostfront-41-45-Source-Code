//=============================================================================
// ROGERifleman_Fall_SS
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================

class ROGERifleman_Fall_SS extends ROGE_FallCamo_SS;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="SS Rifleman"
     AltName="Schütze-SS"
     Article="a "
     PluralName="Riflemen"
     InfoText="Schütze - Difficulty: Medium||The Schütze is the main-stay of the German infantry platoon.  He is tasked with the vital role of taking and holding ground.  Using his standard issue rifle, he can effectively engage the enemy at moderate to long range.||Loadout: Kar98K, bayonet, grenades"
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Schutze'
     PrimaryWeapons(0)=(Item=Class'ROInventory.Kar98Weapon',Amount=18,AssociatedAttachment=Class'ROInventory.ROKar98AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'ROInventory.P08LugerWeapon',Amount=1)
     SecondaryWeapons(1)=(Item=Class'ROInventory.P38Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=2)
     Headgear(0)=Class'ROInventory.ROGermanHelmet'
}
