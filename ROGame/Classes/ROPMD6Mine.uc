//=============================================================================
// ROPMD6Mine
//=============================================================================
// Russian PMD-6 AP mine
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class ROPMD6Mine extends ROMine
	notplaceable;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     Damage=175
     DamageRadius=64
     MyDamageType=Class'ROEngine.ROMineDamType'
     Momentum=3000
     bHidden=True
     CollisionRadius=6.000000
}
