//=============================================================================
// MP41MeleeFire
//=============================================================================
// Melee firing for the MP41
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MP41MeleeFire extends MP40MeleeFire;

defaultproperties
{
     DamageType=Class'ROInventory.MP41BashDamType'
     TraceRange=85.000000
     GroundBashSound=SoundGroup'Inf_Weapons_Foley.melee.butt_hit_ground'
}
