//=============================================================================
// M44Weapon
//=============================================================================
// Weapon class for the Russian Mosin Nagant M44 bolt action rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class M44Weapon extends ROBoltActionWeapon;

#exec OBJ LOAD FILE=..\Animations\Allies_Nagant_1st.ukx

simulated exec function Deploy()
{
// Do nothing for this weapon until we add the bayo status switching
}

defaultproperties
{
     MagEmptyReloadAnim="Reload"
     IronIdleAnim="Iron_idle"
     IronBringUp="iron_in"
     IronBringUpRest="iron_inrest"
     IronPutDown="iron_out"
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
     FreeAimRotationSpeed=7.000000
     FireModeClass(0)=Class'ROInventory.M44Fire'
     FireModeClass(1)=Class'ROInventory.M44MeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.400000
     CurrentRating=0.400000
     bSniping=True
     DisplayFOV=70.000000
     bBayonetMounted=True
     bCanRestDeploy=True
     PickupClass=Class'ROInventory.M44Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.M44Attachment'
     ItemName="M44 Rifle"
     Mesh=SkeletalMesh'Allies_Nagant_1st.Mosin_Nagant_M44'
     HighDetailOverlay=Shader'Weapons1st_tex.Rifles.MN9138_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
