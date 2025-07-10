//=============================================================================
// NebelGranate39Weapon
//=============================================================================
// Weapon class for the German NebelHandGranate 39 smoke grenade
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2006 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class NebelGranate39Weapon extends StielGranateWeapon;

defaultproperties
{
     FireModeClass(0)=Class'ROInventory.NebelGranate39Fire'
     FireModeClass(1)=Class'ROInventory.NebelGranate39TossFire'
     PickupClass=Class'ROInventory.NebelGranate39Pickup'
     AttachmentClass=Class'ROInventory.NebelGranate39Attachment'
     ItemName="Nb.39 Grenade"
     Skins(2)=Texture'Weapons1st_tex.Grenades.StielGranate_smokenade'
     HighDetailOverlay=None
     bUseHighDetailOverlayIndex=False
}
