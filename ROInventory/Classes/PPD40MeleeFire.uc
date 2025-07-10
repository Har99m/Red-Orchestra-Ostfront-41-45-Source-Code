//=============================================================================
// PPD40MeleeFire
//=============================================================================
// Melee firing for the PPD40
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class PPD40MeleeFire extends ROMeleeFire;

defaultproperties
{
     DamageType=Class'ROInventory.PPD40BashDamType'
     TraceRange=75.000000
     BashBackAnim="bash_pullback"
     BashHoldAnim="bash_hold"
     BashAnim="bash_attack"
     BashFinishAnim="bash_return"
     BotRefireRate=0.250000
     aimerror=800.000000
}
