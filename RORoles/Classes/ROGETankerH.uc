//=============================================================================
// ROGESquadLeaderH
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003-2004 Erik Christensen
//=============================================================================

class ROGETankerH extends ROGE_Heer_Units;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Tank Crewman"
     AltName="Panzerbesatzung"
     Article="a "
     PluralName="Tank Crewmen"
     InfoText="Panzerbesatzung - Difficulty: Advanced||The Panzerbesatzung (tank crew) consists of variations on gunner, loader, hull gunner/radio operator and the driver. Each is a specialized role, requiring specialized training. Each has a specific view sector out of the tank and is responsible for keeping watch in that direction, as well as performing their primary function."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Panzerbezatsung'
     Models(0)="G_VehCrew1"
     Models(1)="G_VehCrew2"
     Models(2)="G_VehCrew3"
     Models(3)="G_VehCrew4"
     Models(4)="G_VehCrew5"
     Models(5)="G_VehCrew6"
     Models(6)="G_VehCrew1"
     SleeveTexture=Texture'Weapons1st_tex.Arms.GermanTankerSleeves'
     DetachedArmClass=Class'ROEffects.SeveredArmGerTanker'
     DetachedLegClass=Class'ROEffects.SeveredLegGerTanker'
     PrimaryWeapons(0)=(Item=Class'ROInventory.MP40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROMP40AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'ROInventory.P08LugerWeapon',Amount=1)
     SecondaryWeapons(1)=(Item=Class'ROInventory.P38Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=2)
     GivenItems(0)="ROInventory.BinocularsItem"
     Headgear(0)=Class'ROInventory.ROGermanTankerHat'
     RolePawnClass="RORoles.GETankerPawn"
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=True
     bCanBeTankCrew=True
}
