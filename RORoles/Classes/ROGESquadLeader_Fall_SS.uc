//=============================================================================
// ROGESquadLeader_Fall_SS
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================

class ROGESquadLeader_Fall_SS extends ROGE_FallCamo_SS;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="SS Squad Leader"
     AltName="Gruppenführer-SS"
     Article="a "
     PluralName="SS Squad Leaders"
     InfoText="Gruppenführer-SS - Difficulty: Very Advanced||The Gruppenführer is the leader of the squad - an NCO by rank.  His job is to see to the completion of the squad's objectives by directing his men in combat and ensuring the LMG's firepower is put to good use.  Equipped for close quarters combat, the Gruppenführer is better off directing the squad's firepower at longer ranges than engaging himself.|| Loadout: MP40, grenades||* The Gruppenführer counts one and a half times when taking and holding objectives."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Gruppenfuhrer'
     bIsLeader=True
     ObjCaptureWeight=2
     PointValue=3.000000
     PrimaryWeapons(0)=(Item=Class'ROInventory.MP40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROMP40AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'ROInventory.P08LugerWeapon',Amount=1)
     SecondaryWeapons(1)=(Item=Class'ROInventory.P38Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.NebelGranate39Weapon',Amount=2)
     GivenItems(0)="ROInventory.BinocularsItem"
     Headgear(0)=Class'ROInventory.ROGermanHat'
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=True
}
