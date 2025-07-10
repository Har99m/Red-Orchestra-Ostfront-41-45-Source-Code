//=============================================================================
// ROSUAntiTankRKKF
//=============================================================================
// Placeholder Russian anti-tank class
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003-2004 John "Ramm-Jaeger" Gibson
//=============================================================================
class ROSUAntiTankRKKF extends ROSU_Standard_RKKF;

//=============================================================================
// Functions
//=============================================================================

//-----------------------------------------------------------------------------
// GetHeadgear
//-----------------------------------------------------------------------------

function class<ROHeadgear> GetHeadgear()
{
	if (FRand() < 0.2)
		return Headgear[1];
	else
		return Headgear[0];
}

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     MyName="Anti-tank soldier"
     AltName="PT-Soldat"
     Article="an "
     PluralName="Anti-tank soldiers"
     InfoText="PT-Soldat - Difficulty: Advanced||PT-Soldat were armed with special anti-tank rifles firing large caliber armor piercing rounds. while not very effective against the heavily armored areas of tanks, the anti-tank rifles could be used to exploit the more weakly armored areas of enemy vehicles."
     menuImage=Texture'InterfaceArt_tex.SelectMenus.PT-soldat'
     PrimaryWeapons(0)=(Item=Class'ROInventory.PTRDWeapon',Amount=1,AssociatedAttachment=Class'ROInventory.ROPPSh41AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'ROInventory.TT33Weapon',Amount=1)
     Grenades(0)=(Item=Class'ROInventory.F1GrenadeWeapon',Amount=2)
     GivenItems(0)="ROInventory.BinocularsItem"
     Headgear(0)=Class'ROInventory.ROSovietSidecap'
     Headgear(1)=Class'ROInventory.ROSovietHelmet'
     Headgear(2)=Class'ROInventory.ROSovietHelmetTwo'
     PrimaryWeaponType=WT_PTRD
}
