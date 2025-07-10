//=============================================================================
// PPS43Bullet_S
//=============================================================================
// Server side only bullet
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003-2004 John Gibson
//=============================================================================

class PPS43Bullet_S extends ROServerBullet;

defaultproperties
{
     MyVehicleDamage=Class'ROInventory.PPS43VehDamType'
     BallisticCoefficient=0.150000
     Speed=25000.000000
     Damage=50.000000
     MyDamageType=Class'ROInventory.PPS43DamType'
}
