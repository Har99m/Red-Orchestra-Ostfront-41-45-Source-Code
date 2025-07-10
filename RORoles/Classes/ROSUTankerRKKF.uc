//=============================================================================
// ROSUSquadLeaderRKKF
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2004
//=============================================================================
class ROSUTankerRKKF extends ROSU_RKKF_Units;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Tank Crewman"
     AltName="Ekipazh tanka"
     Article="a "
     PluralName="Tank Crewmen"
     InfoText="Ekipazh tanka - Difficulty: Advanced||The Ekipazh tanka (tank crew) consists of variations on gunner, loader, hull gunner/radio operator and the driver. Each is a specialized role, requiring specialized training. This was a major problem for the Soviets, so they picked those with most years school completed for the technical jobs. Each has a specific view sector out of the tank and is responsible for keeping watch in that direction, as well as performing their primary function."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Ekipazhtanka'
     Models(0)="R_VehCrew1"
     Models(1)="R_VehCrew2"
     Models(2)="R_VehCrew3"
     Models(3)="R_VehCrew4"
     Models(4)="R_VehCrew5"
     Models(5)="R_VehCrew6"
     SleeveTexture=Texture'Weapons1st_tex.Arms.RussianTankerSleeves'
     DetachedArmClass=Class'ROEffects.SeveredArmSovTanker'
     DetachedLegClass=Class'ROEffects.SeveredLegSovTanker'
     PrimaryWeapons(0)=(Item=Class'ROInventory.PPD40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROPPSh41AmmoPouch')
     PrimaryWeapons(1)=(Item=Class'ROInventory.PPSH41Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROPPSh41AmmoPouch')
     PrimaryWeapons(2)=(Item=Class'ROInventory.PPS43Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROPPS43AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'ROInventory.TT33Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.F1GrenadeWeapon',Amount=2)
     Headgear(0)=Class'ROInventory.ROSovietTankerHat'
     RolePawnClass="RORoles.RUTankerPawn"
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=True
     bCanBeTankCrew=True
}
