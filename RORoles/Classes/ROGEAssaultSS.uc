//=============================================================================
// ROGEAssaultSS
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003-2004 Erik Christensen
//=============================================================================

class ROGEAssaultSS extends ROGE_Standard_SS;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="SS Assault Troop"
     AltName="Stoﬂtruppe-SS"
     Article="an "
     PluralName="SS Assault Troops"
     InfoText="Stoﬂtruppe-SS - Difficulty: Easy||The Germans set up both basic infantry and engineers as Stoﬂtruppe, with the primary objective of equipping them to take on heavily-defended positions. The equipment allows them to lay down heavy fire when close to the enemy, although they are potentially vulnerable at medium range. This was one reason for the introduction of the St¸rmGewehr, with its mix of firepower and range.||Loadout: MP40, grenades"
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Stosstruppe'
     PrimaryWeapons(0)=(Item=Class'ROInventory.MP40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROMP40AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'ROInventory.P08LugerWeapon',Amount=1)
     SecondaryWeapons(1)=(Item=Class'ROInventory.P38Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=2)
     Headgear(0)=Class'ROInventory.ROGermanHelmet'
     PrimaryWeaponType=WT_Assault
     bEnhancedAutomaticControl=True
}
