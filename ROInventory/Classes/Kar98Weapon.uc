//=============================================================================
// Kar98Weapon
//=============================================================================
// Weapon class for the German Karbiner 98k bolt action rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class Kar98Weapon extends ROBoltActionWeapon;

#exec OBJ LOAD FILE=..\Animations\Axis_Kar98_1st.ukx

defaultproperties
{
     MagEmptyReloadAnim="Reload"
     IronIdleAnim="Iron_idle"
     IronBringUp="iron_in"
     IronBringUpRest="iron_inrest"
     IronPutDown="iron_out"
     BayoAttachAnim="Bayonet_on"
     BayoDetachAnim="Bayonet_off"
     BayonetBoneName="bayonet"
     bHasBayonet=True
     BoltHipAnim="bolt"
     BoltIronAnim="iron_boltrest"
     PostFireIronIdleAnim="Iron_idlerest"
     PostFireIdleAnim="Idle"
     MaxNumPrimaryMags=10
     InitialNumPrimaryMags=10
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=25.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.400000
     FireModeClass(0)=Class'ROInventory.Kar98Fire'
     FireModeClass(1)=Class'ROInventory.Kar98MeleeFire'
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
     PickupClass=Class'ROInventory.Kar98Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.Kar98Attachment'
     ItemName="Kar98k Rifle"
     Mesh=SkeletalMesh'Axis_Kar98_1st.kar98k_mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Rifles.k98_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
