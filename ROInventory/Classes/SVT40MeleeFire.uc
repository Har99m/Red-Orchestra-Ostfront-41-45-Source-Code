//=============================================================================
// SVT40MeleeFire
//=============================================================================
// Melee firing for the SVT40
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class SVT40MeleeFire extends ROMeleeFire;

function PlayFireEnd()
{
	if( Weapon.bBayonetMounted )
	{
		// No tween time for the post stab anim, as it causes a visual glitch on this weapon - Hacky, but works for now
        Weapon.PlayAnim(BayoFinishAnim, FireEndAnimRate, 0.0/*TweenTime*/);
	}
	else
	{
	    if( Weapon.AmmoAmount(0) < 1 && Weapon.HasAnim(BashFinishEmptyAnim))
	    {
			Weapon.PlayAnim(BashFinishEmptyAnim, FireEndAnimRate, TweenTime);
		}
		else
		{
			Weapon.PlayAnim(BashFinishAnim, FireEndAnimRate, TweenTime);
		}
    }
}

defaultproperties
{
     DamageType=Class'ROInventory.SVT40BashDamType'
     BayonetDamageType=Class'ROInventory.SVT40BayonetDamType'
     TraceRange=75.000000
     BayonetTraceRange=115.000000
     BashBackAnim="bash_pullback"
     BashHoldAnim="bash_hold"
     BashAnim="bash_attack"
     BashFinishAnim="bash_return"
     BayoBackAnim="stab_pullback"
     BayoHoldAnim="stab_hold"
     BayoStabAnim="stab_attack"
     BayoFinishAnim="stab_return"
     BotRefireRate=0.250000
     aimerror=800.000000
}
