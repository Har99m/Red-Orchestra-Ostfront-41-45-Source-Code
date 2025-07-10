//=============================================================================
// MN9130Weapon
//=============================================================================
// Weapon class for the Russian Mosin Nagant 91/30 bolt action rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class MN9130Weapon extends ROBoltActionWeapon;

#exec OBJ LOAD FILE=..\Animations\Allies_Nagant_1st.ukx

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
     ZoomOutTime=0.350000
     FireModeClass(0)=Class'ROInventory.MN9130Fire'
     FireModeClass(1)=Class'ROInventory.MN9130MeleeFire'
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
     PickupClass=Class'ROInventory.MN9130Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.MN9130Attachment'
     ItemName="MN9130 Rifle"
     Mesh=SkeletalMesh'Allies_Nagant_1st.Mosin-Nagant-9130-Mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Rifles.MN9130_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
