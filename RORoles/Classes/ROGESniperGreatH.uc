//=============================================================================
// ROGESniperGreatH
//=============================================================================
// Defines the characteristics of a given role
//=============================================================================

class ROGESniperGreatH extends ROGE_Greatcoat_Heer;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Sniper"
     AltName="Scharfschütze"
     Article="a "
     PluralName="Snipers"
     InfoText="Scharfschütze - Difficulty: Medium||The Scharfschütze is a specialist in the area of marksmanship and camouflage.  He operated separately from the infantry platoon until 1944 - acting as a lone wolf until then so to speak.  Identifying and eliminating important enemy personnel is his job.  The Scharfschütze is effective at long range - especially when hidden, but he has little means to protect himself up close.  If spotted, it is best that he slip away quietly rather than face a direct confrontation.|| Loadout: Kar98K w/ scope, P38, grenades||* The Scharfschütze is more accurate with a scoped rifle than anyone else."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.Scharf'
     PrimaryWeapons(0)=(Item=Class'ROInventory.Kar98ScopedWeapon',Amount=18,AssociatedAttachment=Class'ROInventory.ROKar98AmmoPouch')
     PrimaryWeapons(1)=(Item=Class'ROInventory.G43ScopedWeapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROKar98AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'ROInventory.P08LugerWeapon',Amount=1)
     SecondaryWeapons(1)=(Item=Class'ROInventory.P38Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.StielGranateWeapon',Amount=1)
     Headgear(0)=Class'ROInventory.ROGermanHelmet'
     PrimaryWeaponType=WT_Sniper
}
