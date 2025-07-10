//=============================================================================
// MN9130ScopedWeapon
//=============================================================================
// Weapon class for the Russian Mosin Nagant 91/30 Sniper rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class MN9130ScopedWeapon extends ROBoltSniperWeapon;

#exec OBJ LOAD FILE=..\Animations\Allies_Nagantscope_1st.ukx

defaultproperties
{
     PreReloadAnim="Single_Open"
     SingleReloadAnim="Single_Insert"
     PostReloadAnim="Single_Close"
     lenseMaterialID=5
     scopePortalFOVHigh=15.000000
     scopePortalFOV=7.000000
     scopeYaw=25
     scopePitchHigh=20
     scopeYawHigh=40
     TexturedScopeTexture=Texture'Weapon_overlays.Scopes.Rus_sniperscope_overlay'
     IronIdleAnim="Scope_Idle"
     IronBringUp="Scope_In"
     IronPutDown="Scope_Out"
     BayonetBoneName="bayonet"
     BoltHipAnim="bolt_scope"
     BoltIronAnim="scope_bolt"
     PostFireIronIdleAnim="Scope_Idle"
     PostFireIdleAnim="Idle"
     MaxNumPrimaryMags=10
     InitialNumPrimaryMags=10
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=40.000000
     IronSightDisplayFOVHigh=43.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.400000
     PlayerFOVZoom=24.000000
     XoffsetHighDetail=(X=-6.000000)
     FireModeClass(0)=Class'ROInventory.MN9130ScopedFire'
     FireModeClass(1)=Class'ROInventory.MN9130ScopedMeleeFire'
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
     PickupClass=Class'ROInventory.MN9130ScopedPickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.MN9130ScopedAttachment'
     ItemName="MN9130 Scoped"
     Mesh=SkeletalMesh'Allies_Nagantscope_1st.Mosin-Nagant-9130-Scoped-Mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Rifles.MN_sniper_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
