//=============================================================================
// ROSUSquadLeaderRKKF
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2004
//=============================================================================
class ROSUTankCommanderRKKF extends ROSU_RKKF_Units;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Tank Commander"
     AltName="Komandir tanka"
     Article="a "
     PluralName="Tank Commanders"
     InfoText="Komandir tanka - Difficulty: Very Advanced||The Komandir tanka is the tank commander, either an NCO or officer. His primary task was to spot targets for the gunner, as well as to direct the rest of the tank crew. He was usually the only crew member with any form of all-round view. He might, as a platoon commander, be required to lead a complete platoon of tanks, as well as direct his own. It was a complex job, made more complex in some tanks with the requirement for the commander to also man the main gun."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Komandirtanka'
     Models(0)="R_VehCrew1"
     Models(1)="R_VehCrew2"
     Models(2)="R_VehCrew3"
     Models(3)="R_VehCrew4"
     Models(4)="R_VehCrew5"
     Models(5)="R_VehCrew6"
     bIsLeader=True
     ObjCaptureWeight=2
     PointValue=3.000000
     SleeveTexture=Texture'Weapons1st_tex.Arms.RussianTankerSleeves'
     DetachedArmClass=Class'ROEffects.SeveredArmSovTanker'
     DetachedLegClass=Class'ROEffects.SeveredLegSovTanker'
     PrimaryWeapons(0)=(Item=Class'ROInventory.PPD40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROPPSh41AmmoPouch')
     PrimaryWeapons(1)=(Item=Class'ROInventory.PPSH41Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROPPSh41AmmoPouch')
     PrimaryWeapons(2)=(Item=Class'ROInventory.PPS43Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROPPS43AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'ROInventory.TT33Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.F1GrenadeWeapon',Amount=2)
     GivenItems(0)="ROInventory.BinocularsItem"
     Headgear(0)=Class'ROInventory.ROSovietSidecap'
     RolePawnClass="RORoles.RUTankerPawn"
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=True
     bCanBeTankCrew=True
     bCanBeTankCommander=True
}
