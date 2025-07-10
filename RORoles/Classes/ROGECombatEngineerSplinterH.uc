//=============================================================================
// ROGECombatEngineerSplinterH
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003-2004 Erik Christensen
// 04/22/2004 changed InfoText DRR
//=============================================================================

class ROGECombatEngineerSplinterH extends ROGE_Splinter_Heer;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Combat Engineer"
     AltName="Stürmpioniere"
     Article="a "
     PluralName="Combat Engineers"
     InfoText="Stürmpioniere - Difficulty: Advanced||Combat engineers were specialists, trained originally as infantry, followed by additional Engineering training. They provided direct support to the division, carrying out the following tasks on a regular basis: demolitions, assaults on heavily-fortified positions, laying mines and booby-traps, finding and lifting enemy mines, building of emergency bridges, and assault river crossings."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Sturmpionier'
     PrimaryWeapons(0)=(Item=Class'ROInventory.MP40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROMP40AmmoPouch')
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=1)
     GivenItems(0)="ROInventory.SatchelCharge10lb10sWeapon"
     Headgear(0)=Class'ROInventory.ROGermanHelmetTwo'
     PrimaryWeaponType=WT_SMG
}
