//=============================================================================
// MP41Weapon
//=============================================================================
// Weapon class for the German MP41 sub machinegun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class MP41Weapon extends MP40Weapon;

defaultproperties
{
     FreeAimRotationSpeed=7.500000
     FireModeClass(0)=Class'ROInventory.MP41Fire'
     FireModeClass(1)=Class'ROInventory.MP41MeleeFire'
     PickupClass=Class'ROInventory.MP41Pickup'
     AttachmentClass=Class'ROInventory.MP41Attachment'
     ItemName="MP41 SMG"
     Mesh=SkeletalMesh'Axis_Mp40_1st.mp41_Mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.SMG.MP41_S'
}
