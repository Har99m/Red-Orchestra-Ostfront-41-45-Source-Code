//=============================================================================
// DP28Weapon
//=============================================================================
// Weapon class for the Russian DP-28 machinegun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class DP28Weapon extends ROMGbase;

#exec OBJ LOAD FILE=..\Animations\Allies_Dp28_1st.ukx

defaultproperties
{
     bTrackBarrelHeat=True
     InitialBarrels=1
     ROBarrelClass=Class'ROInventory.DP28Barrel'
     BarrelSteamBone="bipod"
     NumMagsToResupply=4
     IdleToBipodDeploy="Rest_2_Bipod"
     BipodDeployToIdle="Bipod_2_Rest"
     BipodHipIdle="Hip_Idle"
     BipodHipToDeploy="Hip_2_Bipod"
     MagEmptyReloadAnim="Bipod_Reload"
     MagPartialReloadAnim="Bipod_Reload_Half"
     IronIdleAnim="Bipod_Idle"
     IronBringUp="Rest_2_Hipped"
     IronPutDown="Hip_2_Rest"
     MaxNumPrimaryMags=6
     InitialNumPrimaryMags=6
     bPlusOneLoading=True
     SprintStartAnim="Rest_Sprint_Start"
     SprintLoopAnim="Rest_Sprint_Middle"
     SprintEndAnim="Rest_Sprint_End"
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=45.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.200000
     FireModeClass(0)=Class'ROInventory.DP28Fire'
     FireModeClass(1)=Class'ROInventory.ROEmptyFireClass'
     IdleAnim="Rest_Idle"
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.400000
     CurrentRating=0.400000
     bSniping=True
     DisplayFOV=70.000000
     PickupClass=Class'ROInventory.DP28Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.DP28Attachment'
     ItemName="DP28 Machine Gun"
     Mesh=SkeletalMesh'Allies_Dp28_1st.DP28_Mesh'
}
