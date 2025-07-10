//=============================================================================
// StielGranateWeapon
//=============================================================================
// Weapon class for the German StG39 Grenade
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class StielGranateWeapon extends ROGrenadeWeapon;

#exec OBJ LOAD FILE=..\Animations\Axis_Granate_1st.ukx

defaultproperties
{
     PreFireHoldAnim="pre_fire_idle"
     FuzeLength=5.000000
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     FireModeClass(0)=Class'ROInventory.StielGranateFire'
     FireModeClass(1)=Class'ROInventory.StielGranateTossFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.400000
     CurrentRating=0.400000
     DisplayFOV=70.000000
     PickupClass=Class'ROInventory.StielGranatePickup'
     PlayerViewOffset=(X=5.000000,Y=5.000000)
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.StielGranateAttachment'
     ItemName="StG39 Grenade"
     Mesh=SkeletalMesh'Axis_Granate_1st.German-Grenade-Mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Grenades.stiel_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
