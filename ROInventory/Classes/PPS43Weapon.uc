//=============================================================================
// PPS43Weapon
//=============================================================================
// Weapon class for the Russian PPS43 sub machinegun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class PPS43Weapon extends ROFastAutoWeapon;

#exec OBJ LOAD FILE=..\Animations\Allies_Pps43_1st.ukx

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
     ZoomOutTime=0.200000
     FireModeClass(0)=Class'ROInventory.PPS43Fire'
     FireModeClass(1)=Class'ROInventory.PPS43MeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.700000
     CurrentRating=0.700000
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'ROInventory.PPS43Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.PPS43Attachment'
     ItemName="PPS43 SMG"
     Mesh=SkeletalMesh'Allies_Pps43_1st.PPS-43-Mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.SMG.PPS43_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
