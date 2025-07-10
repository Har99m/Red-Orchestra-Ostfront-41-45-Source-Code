//=============================================================================
// P08LugerMeleeFire
//=============================================================================
// Melee firing for the P38
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class P08LugerMeleeFire extends ROMeleeFire;

defaultproperties
{
     DamageType=Class'ROInventory.P08LugerBashDamType'
     TraceRange=75.000000
     GroundBashSound=SoundGroup'Inf_Weapons_Foley.melee.pistol_hit_ground'
     PlayerBashSound=SoundGroup'Inf_Weapons_Foley.melee.pistol_hit'
     BashBackAnim="bash_pullback"
     BashHoldAnim="bash_hold"
     BashAnim="bash_attack"
     BashFinishAnim="bash_return"
     BashBackEmptyAnim="bash_pullback_empty"
     BashHoldEmptyAnim="bash_hold_empty"
     BashEmptyAnim="bash_attack_empty"
     BashFinishEmptyAnim="bash_return_empty"
     BotRefireRate=0.250000
     aimerror=800.000000
}
