//=============================================================================
// P38Weapon
//=============================================================================
// Weapon class for the German P38 pistol
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class P38Weapon extends ROPistolWeapon;

#exec OBJ LOAD FILE=..\Animations\Axis_P38_1st.ukx

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
     IdleEmptyAnim="idle_empty"
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
     IronSightDisplayFOV=35.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.400000
     FireModeClass(0)=Class'ROInventory.P38Fire'
     FireModeClass(1)=Class'ROInventory.P38MeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.350000
     CurrentRating=0.350000
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'ROInventory.P38Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.P38Attachment'
     ItemName="P38 Pistol"
     Mesh=SkeletalMesh'Axis_P38_1st.P-38-Mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Pistols.p38_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
