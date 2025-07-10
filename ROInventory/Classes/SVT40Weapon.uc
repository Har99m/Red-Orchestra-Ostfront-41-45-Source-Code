//=============================================================================
// SVT40Weapon
//=============================================================================
// Weapon class for the Russian SVT 40 Semi automatic rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class SVT40Weapon extends ROSemiAutoWeapon;

#exec OBJ LOAD FILE=..\Animations\Allies_Svt40_1st.ukx

defaultproperties
{
     MagEmptyReloadAnim="reload_empty"
     MagPartialReloadAnim="reload_half"
     IronIdleAnim="Iron_idle"
     IronBringUp="iron_in"
     IronPutDown="iron_out"
     BayoAttachAnim="Bayonet_on"
     BayoDetachAnim="Bayonet_off"
     BayonetBoneName="bayonet"
     bHasBayonet=True
     MaxNumPrimaryMags=7
     InitialNumPrimaryMags=7
     bPlusOneLoading=True
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=25.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.200000
     FireModeClass(0)=Class'ROInventory.SVT40Fire'
     FireModeClass(1)=Class'ROInventory.SVT40MeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.400000
     CurrentRating=0.400000
     bSniping=True
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'ROInventory.SVT40Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.SVT40Attachment'
     ItemName="SVT40 Semi Auto Rifle"
     Mesh=SkeletalMesh'Allies_Svt40_1st.SVT40_mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Rifles.SVT40_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
