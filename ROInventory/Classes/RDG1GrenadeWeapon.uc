//=============================================================================
// RDG1GrenadeWeapon
//=============================================================================
// Weapon class for the Russian RDG1 smoke grenade
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2006 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class RDG1GrenadeWeapon extends StielGranateWeapon;

defaultproperties
{
     FireModeClass(0)=Class'ROInventory.RDG1GrenadeFire'
     FireModeClass(1)=Class'ROInventory.RDG1GrenadeTossFire'
     PutDownAnim="putaway"
     PickupClass=Class'ROInventory.RDG1GrenadePickup'
     AttachmentClass=Class'ROInventory.RDG1GrenadeAttachment'
     ItemName="RDG-1 Grenade"
     Mesh=SkeletalMesh'Allies_RGD1_1st.RGD1_mesh'
     HighDetailOverlay=None
     bUseHighDetailOverlayIndex=False
}
