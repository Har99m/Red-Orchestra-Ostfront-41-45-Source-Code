//=============================================================================
// M38Weapon
//=============================================================================
// Weapon class for the Russian Mosin Nagant M38 bolt action rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class M38Weapon extends ROBoltActionWeapon;

#exec OBJ LOAD FILE=..\Animations\Allies_Nagant_1st.ukx

defaultproperties
{
     MagEmptyReloadAnim="Reload"
     IronIdleAnim="Iron_idle"
     IronBringUp="iron_in"
     IronBringUpRest="iron_inrest"
     IronPutDown="iron_out"
     BayonetBoneName="bayonet"
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
     FreeAimRotationSpeed=7.000000
     FireModeClass(0)=Class'ROInventory.M38Fire'
     FireModeClass(1)=Class'ROInventory.M38MeleeFire'
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
     PickupClass=Class'ROInventory.M38Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.M38Attachment'
     ItemName="M38 Rifle"
     Mesh=SkeletalMesh'Allies_Nagant_1st.Mosin_Nagant_Carbine_mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Rifles.MN9138_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
