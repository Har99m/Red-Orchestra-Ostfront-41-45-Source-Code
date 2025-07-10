//=============================================================================
// MN9130ScopedMeleeFire
//=============================================================================
// Melee firing for the MN9130 Scoped
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MN9130ScopedMeleeFire extends ROMeleeFire;

defaultproperties
{
     DamageType=Class'ROInventory.MN9130ScopedBashDamType'
     TraceRange=75.000000
     BashBackAnim="bash_pullback"
     BashHoldAnim="bash_hold"
     BashAnim="bash_attack"
     BashFinishAnim="bash_return"
     BotRefireRate=0.250000
     aimerror=800.000000
}
