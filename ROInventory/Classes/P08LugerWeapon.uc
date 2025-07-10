//=============================================================================
// P08LugerWeapon
//=============================================================================
// Weapon class for the German P08 Luger pistol
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class P08LugerWeapon extends ROPistolWeapon;

#exec OBJ LOAD FILE=..\Animations\Axis_Luger_1st.ukx

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
     IronSightDisplayFOV=55.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.300000
     FireModeClass(0)=Class'ROInventory.P08LugerFire'
     FireModeClass(1)=Class'ROInventory.P08LugerMeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.350000
     CurrentRating=0.350000
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'ROInventory.P08LugerPickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.P08LugerAttachment'
     ItemName="P08 Luger Pistol"
     Mesh=SkeletalMesh'Axis_Luger_1st.P08Luger'
     HighDetailOverlay=Shader'Weapons1st_tex.Pistols.luger_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
