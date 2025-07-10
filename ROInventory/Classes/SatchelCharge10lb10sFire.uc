//=============================================================================
// SatchelCharge10lb10sFire
//=============================================================================
// Satchel firing class for the 10 lb 10 second satchel charge
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class SatchelCharge10lb10sFire extends ROThrownExplosiveFire;

defaultproperties
{
     minimumThrowSpeed=300.000000
     maximumThrowSpeed=450.000000
     ProjSpawnOffset=(X=-5.000000,Y=15.000000,Z=-10.000000)
     AddedPitch=1000
     bUsePreLaunchTrace=False
     bWaitForRelease=True
     PreFireAnim="Plant"
     FireAnim="Throw"
     TweenTime=0.010000
     FireForce="RocketLauncherFire"
     FireRate=50.000000
     AmmoClass=Class'ROAmmo.SatchelCharge10lb10sAmmo'
     ProjectileClass=Class'ROInventory.SatchelCharge10lb10sProjectile'
     BotRefireRate=0.500000
     WarnTargetPct=0.900000
     aimerror=200.000000
     Spread=75.000000
     SpreadStyle=SS_Random
}
