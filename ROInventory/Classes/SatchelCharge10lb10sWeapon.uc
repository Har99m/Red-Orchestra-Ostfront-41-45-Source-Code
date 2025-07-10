//=============================================================================
// SatchelCharge10lb10sWeapon
//=============================================================================
// Weapon class for the 10 pund 10 second fuse SatchelCharge
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class SatchelCharge10lb10sWeapon extends ROSatchelChargeWeapon;

#exec OBJ LOAD FILE=..\Animations\Common_Satchel_1st.ukx

defaultproperties
{
     PreFireHoldAnim="Weapon_Down"
     FuzeLength=10.000000
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     FireModeClass(0)=Class'ROInventory.SatchelCharge10lb10sFire'
     FireModeClass(1)=Class'ROInventory.SatchelCharge10lb10sFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.400000
     CurrentRating=0.400000
     DisplayFOV=70.000000
     PickupClass=Class'ROInventory.SatchelCharge10lb10sPickup'
     PlayerViewOffset=(X=10.000000,Y=5.000000)
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.SatchelCharge10lb10sAttachment'
     ItemName="10 lb Satchel Charge"
     Mesh=SkeletalMesh'Common_Satchel_1st.Sachel_Charge'
}
