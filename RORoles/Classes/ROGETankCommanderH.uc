//=============================================================================
// ROGESquadLeaderH
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003-2004 Erik Christensen
//=============================================================================

class ROGETankCommanderH extends ROGE_Heer_Units;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Tank Commander"
     AltName="Panzerführer"
     Article="a "
     PluralName="Tank Commanders"
     InfoText="Panzerführer - Difficulty: Very Advanced||The Panzerführer is the tank commander, either an NCO or officer. His primary task was to spot targets for the gunner, as well as to direct the rest of the tank crew. He was usually the only crew member with any form of all-round view. He might, as a platoon commander, be required to lead a complete platoon of tanks, as well as direct his own. It was a complex job, made more complex in some tanks with the requirement for the commander to also man the main gun."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Panzerfuhrer'
     Models(0)="G_VehCrew1"
     Models(1)="G_VehCrew2"
     Models(2)="G_VehCrew3"
     Models(3)="G_VehCrew4"
     Models(4)="G_VehCrew5"
     Models(5)="G_VehCrew6"
     Models(6)="G_VehCrew1"
     bIsLeader=True
     ObjCaptureWeight=2
     PointValue=3.000000
     SleeveTexture=Texture'Weapons1st_tex.Arms.GermanTankerSleeves'
     DetachedArmClass=Class'ROEffects.SeveredArmGerTanker'
     DetachedLegClass=Class'ROEffects.SeveredLegGerTanker'
     PrimaryWeapons(0)=(Item=Class'ROInventory.MP40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROMP40AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'ROInventory.P08LugerWeapon',Amount=1)
     SecondaryWeapons(1)=(Item=Class'ROInventory.P38Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=2)
     GivenItems(0)="ROInventory.BinocularsItem"
     Headgear(0)=Class'ROInventory.ROGermanHat'
     RolePawnClass="RORoles.GETankerPawn"
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=True
     bCanBeTankCrew=True
     bCanBeTankCommander=True
}
