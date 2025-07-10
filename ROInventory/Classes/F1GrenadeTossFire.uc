//=============================================================================
// F1GrenadeTossFire
//=============================================================================
// grenade toss firing class for the russian F1 grenade
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class F1GrenadeTossFire extends ROThrownExplosiveFire;

defaultproperties
{
     minimumThrowSpeed=100.000000
     maximumThrowSpeed=500.000000
     speedFromHoldingPerSec=800.000000
     ProjSpawnOffset=(X=25.000000)
     AddedPitch=0
     bUsePreLaunchTrace=False
     bWaitForRelease=True
     PreFireAnim="Pre_Fire"
     FireAnim="Toss"
     TweenTime=0.010000
     FireForce="RocketLauncherFire"
     FireRate=50.000000
     AmmoClass=Class'ROAmmo.F1GrenadeAmmo'
     ProjectileClass=Class'ROInventory.F1GrenadeProjectile'
     BotRefireRate=0.500000
     WarnTargetPct=0.900000
     aimerror=200.000000
     Spread=75.000000
     SpreadStyle=SS_Random
}
