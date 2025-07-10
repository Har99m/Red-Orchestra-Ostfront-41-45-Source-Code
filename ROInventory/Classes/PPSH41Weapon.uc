//=============================================================================
// PPSh41Weapon
//=============================================================================
// Weapon class for the Russian PPSH41 sub machinegun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class PPSh41Weapon extends ROFastAutoWeapon;

#exec OBJ LOAD FILE=..\Animations\Allies_Ppsh_1st.ukx

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
     IronSightDisplayFOV=30.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.200000
     FireModeClass(0)=Class'ROInventory.PPSH41Fire'
     FireModeClass(1)=Class'ROInventory.PPSH41MeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.700000
     CurrentRating=0.700000
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'ROInventory.PPSH41Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.PPSH41Attachment'
     ItemName="PPSh41 SMG"
     Mesh=SkeletalMesh'Allies_Ppsh_1st.PPSH-41-mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.SMG.PPSH41_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
