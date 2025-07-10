//=============================================================================
// SVT40MeleeFire
//=============================================================================
// Melee firing for the MP40
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MP40MeleeFire extends ROMeleeFire;

defaultproperties
{
     DamageType=Class'ROInventory.MP40BashDamType'
     TraceRange=75.000000
     GroundBashSound=SoundGroup'Inf_Weapons_Foley.melee.pistol_hit_ground'
     BashBackAnim="bash_pullback"
     BashHoldAnim="bash_hold"
     BashAnim="bash_attack"
     BashFinishAnim="bash_return"
     BotRefireRate=0.250000
     aimerror=800.000000
}
