//=============================================================================
// ROGEAssaultGreatH
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================

class ROGEAssaultGreatH extends ROGE_Greatcoat_Heer;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Assault Trooper"
     AltName="Stoﬂtruppe"
     Article="an "
     PluralName="Assault Troops"
     InfoText="Stoﬂtruppe - Difficulty: Easy||The Germans set up both basic infantry and engineers as Stoﬂtruppe, with the primary objective of equipping them to take on heavily-defended positions. The equipment allows them to lay down heavy fire when close to the enemy, although they are potentially vulnerable at medium range. This was one reason for the introduction of the St¸rmGewehr, with its mix of firepower and range.||Loadout: MP40, grenades"
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Stosstruppe'
     PrimaryWeapons(0)=(Item=Class'ROInventory.MP40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROMP40AmmoPouch')
     PrimaryWeapons(1)=(Item=Class'ROInventory.STG44Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROSTG44AmmoPouch')
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=2)
     Headgear(0)=Class'ROInventory.ROGermanHelmet'
     PrimaryWeaponType=WT_Assault
     bEnhancedAutomaticControl=True
}
