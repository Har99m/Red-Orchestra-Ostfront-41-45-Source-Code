//=============================================================================
// TT33Weapon
//=============================================================================
// Weapon class for the Russian TT33 pistol
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class TT33Weapon extends ROPistolWeapon;

#exec OBJ LOAD FILE=..\Animations\Allies_Tt33_1st.ukx

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
     IdleEmptyAnim="Idle-Empty"
     IronIdleEmptyAnim="iron_idle_empty"
     IronBringUpEmpty="Iron_In_empty"
     IronPutDownEmpty="Iron_Out_empty"
     SprintStartEmptyAnim="Sprint_Empty_Start"
     SprintLoopEmptyAnim="Sprint_Empty_Middle"
     SprintEndEmptyAnim="Sprint_Empty_End"
     CrawlForwardEmptyAnim="crawlF_empty"
     CrawlBackwardEmptyAnim="crawlB_empty"
     CrawlStartEmptyAnim="crawl_in_empty"
     CrawlEndEmptyAnim="crawl_out_empty"
     SelectEmptyAnim="Draw_empty"
     PutDownEmptyAnim="put_away_empty"
     MaxNumPrimaryMags=5
     InitialNumPrimaryMags=5
     bPlusOneLoading=True
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=40.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.200000
     FireModeClass(0)=Class'ROInventory.TT33Fire'
     FireModeClass(1)=Class'ROInventory.TT33MeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.350000
     CurrentRating=0.350000
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'ROInventory.TT33Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.TT33Attachment'
     ItemName="TT33 Pistol"
     Mesh=SkeletalMesh'Allies_Tt33_1st.TT-33-Mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Pistols.TT33_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
