//=============================================================================
// MP40Weapon
//=============================================================================
// Weapon class for the German MP40 sub machinegun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class MP40Weapon extends ROAutoWeapon;

#exec OBJ LOAD FILE=..\Animations\Axis_Mp40_1st.ukx

defaultproperties
{
     MagEmptyReloadAnim="reload_empty"
     MagPartialReloadAnim="reload_half"
     IronIdleAnim="Iron_idle"
     IronBringUp="iron_in"
     IronPutDown="iron_out"
     MaxNumPrimaryMags=6
     InitialNumPrimaryMags=6
     bPlusOneLoading=True
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=35.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.150000
     FireModeClass(0)=Class'ROInventory.MP40Fire'
     FireModeClass(1)=Class'ROInventory.MP40MeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.700000
     CurrentRating=0.700000
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'ROInventory.MP40Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.MP40Attachment'
     ItemName="MP40 SMG"
     Mesh=SkeletalMesh'Axis_Mp40_1st.mp40-mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.SMG.MP40_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
