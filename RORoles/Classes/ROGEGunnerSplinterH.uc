//=============================================================================
// ROGEGunnerSplinterH
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003-2004 Erik Christensen
//=============================================================================

class ROGEGunnerSplinterH extends ROGE_Splinter_Heer;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Machine-gunner"
     AltName="MG-Sch�tze"
     Article="a "
     PluralName="Machine-gunners"
     InfoText="MG-Sch�tze - Difficulty: Advanced||Armed with a light machine gun, the MG-Sch�tze provides the squad with its primary source of firepower.  The LMG can deliver insurmountable damage to the enemy, but careful use is required to avoid overheating or wasting ammunition.  Since the LMG is not a close combat weapon, the MG-Sch�tze also requires protection from his squad.  With intelligent use, a spotter, and sufficient ammo reserves, the MG-Sch�tze can keep the enemy at bay almost indefinitely.||Loadout: MG34, P38|* The MG-Sch�tze can bring the LMG into action more quickly than others as well as handle barrel changes; a leader spotting for him will increase his accuracy."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.MG-Schutze'
     bIsGunner=True
     PrimaryWeapons(0)=(Item=Class'ROInventory.MG34Weapon',Amount=6)
     PrimaryWeapons(1)=(Item=Class'ROInventory.MG42Weapon',Amount=6)
     SecondaryWeapons(0)=(Item=Class'ROInventory.P08LugerWeapon',Amount=1)
     SecondaryWeapons(1)=(Item=Class'ROInventory.P38Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=1)
     GivenItems(0)="ROInventory.BinocularsItem"
     Headgear(0)=Class'ROInventory.ROGermanHelmetTwo'
     PrimaryWeaponType=WT_LMG
}
