//=============================================================================
// MP41Fire
//=============================================================================
// Bullet firing class for the MP41 SMG
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2006 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MP41Fire extends MP40Fire;

defaultproperties
{
     maxVerticalRecoilAngle=700
     ProjectileClass=Class'ROInventory.MP41Bullet'
}
