//=============================================================================
// Kar98ScopedWeapon
//=============================================================================
// Weapon class for the German Kar98k Sniper rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class Kar98ScopedWeapon extends ROBoltSniperWeapon;

#exec OBJ LOAD FILE=..\Animations\Axis_Kar98_1st.ukx

defaultproperties
{
     PreReloadAnim="Single_Open"
     SingleReloadAnim="Single_Insert"
     PostReloadAnim="Single_Close"
     lenseMaterialID=5
     scopePortalFOVHigh=13.000000
     scopePortalFOV=7.000000
     scopePitch=-10
     scopeYaw=40
     scopeYawHigh=35
     TexturedScopeTexture=Texture'Weapon_overlays.Scopes.Ger_sniperscope_overlay'
     IronIdleAnim="Scope_Idle"
     IronBringUp="Scope_In"
     IronPutDown="Scope_Out"
     BayonetBoneName="bayonet"
     BoltHipAnim="bolt_scope"
     BoltIronAnim="scope_bolt"
     PostFireIronIdleAnim="Scope_Idle"
     PostFireIdleAnim="Idle"
     MaxNumPrimaryMags=10
     InitialNumPrimaryMags=7
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=45.000000
     IronSightDisplayFOVHigh=43.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.400000
     PlayerFOVZoom=21.000000
     XoffsetHighDetail=(X=-5.000000)
     FireModeClass(0)=Class'ROInventory.Kar98ScopedFire'
     FireModeClass(1)=Class'ROInventory.Kar98ScopedMeleeFire'
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
     PickupClass=Class'ROInventory.Kar98ScopedPickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.Kar98ScopedAttachment'
     ItemName="Kar98k Rifle"
     Mesh=SkeletalMesh'Axis_Kar98_1st.kar98k-scoped-mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Rifles.k98_sniper_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
