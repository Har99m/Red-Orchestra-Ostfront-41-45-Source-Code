//=============================================================================
// PPD40Weapon
//=============================================================================
// Weapon class for the Russian PPD40 sub machinegun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class PPD40Weapon extends ROFastAutoWeapon;

#exec OBJ LOAD FILE=..\Animations\Allies_Ppd40_1st.ukx

defaultproperties
{
     MagEmptyReloadAnim="reload_empty"
     MagPartialReloadAnim="reload_half"
     IronIdleAnim="Iron_idle"
     IronBringUp="iron_in"
     IronPutDown="iron_out"
     MaxNumPrimaryMags=4
     InitialNumPrimaryMags=4
     bPlusOneLoading=True
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=35.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.200000
     FireModeClass(0)=Class'ROInventory.PPD40Fire'
     FireModeClass(1)=Class'ROInventory.PPD40MeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.700000
     CurrentRating=0.700000
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'ROInventory.PPD40Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.PPD40Attachment'
     ItemName="PPD40 SMG"
     Mesh=SkeletalMesh'Allies_Ppd40_1st.PPD-40-Mesh'
}
