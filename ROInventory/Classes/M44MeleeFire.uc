//=============================================================================
// M44MeleeFire
//=============================================================================
// Melee firing for the M44
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class M44MeleeFire extends ROMeleeFire;

defaultproperties
{
     BayonetDamageType=Class'ROInventory.M44BayonetDamType'
     TraceRange=75.000000
     BayonetTraceRange=125.000000
     BayoBackAnim="stab_pullback"
     BayoHoldAnim="stab_hold"
     BayoStabAnim="stab_attack"
     BayoFinishAnim="stab_return"
     BotRefireRate=0.250000
     aimerror=800.000000
}
