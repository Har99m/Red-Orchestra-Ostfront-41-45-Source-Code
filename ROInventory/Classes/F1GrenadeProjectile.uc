//=============================================================================
// F1GrenadeProjectile
//=============================================================================
// Grenade projectile for the Soviet F1 shrapnel grenade
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

//=============================================================================

class F1GrenadeProjectile extends ROGrenadeProjectile;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     ExplosionSound(0)=SoundGroup'Inf_Weapons.F1.f1_explode01'
     ExplosionSound(1)=SoundGroup'Inf_Weapons.F1.f1_explode02'
     ExplosionSound(2)=SoundGroup'Inf_Weapons.F1.f1_explode03'
     Damage=140.000000
     DamageRadius=940.000000
     MyDamageType=Class'ROInventory.F1GrenadeDamType'
     StaticMesh=StaticMesh'WeaponPickupSM.Projectile.F1grenade-throw'
}
