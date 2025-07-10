//===================================================================
// PanzerFaustRocket
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// The panzerfaust rocket projectile
//===================================================================

class PanzerFaustRocket extends RORocketProj;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     ExplodeSound(0)=SoundGroup'Inf_Weapons.panzerfaust60.faust_explode01'
     ExplodeSound(1)=SoundGroup'Inf_Weapons.panzerfaust60.faust_explode02'
     ExplodeSound(2)=SoundGroup'Inf_Weapons.panzerfaust60.faust_explode03'
     PenetrationTable(0)=26
     PenetrationTable(1)=26
     ShellImpactDamage=Class'ROInventory.PanzerFaustImpactDamType'
     Speed=8000.000000
     MaxSpeed=8000.000000
     Damage=100.000000
     MomentumTransfer=50000.000000
     MyDamageType=Class'ROInventory.PanzerFaustDamType'
     ExplosionDecal=Class'ROEffects.RocketMarkDirt'
     ExplosionDecalSnow=Class'ROEffects.RocketMarkSnow'
     LightType=LT_Steady
     LightEffect=LE_QuadraticNonIncidence
     LightHue=28
     LightBrightness=255.000000
     LightRadius=5.000000
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'WeaponPickupSM.Ammo.Warhead3rd'
     CullDistance=7500.000000
     bDynamicLight=True
     bNetTemporary=False
     LifeSpan=8.000000
     AmbientGlow=96
     FluidSurfaceShootStrengthMod=10.000000
     bFixedRotationDir=True
     RotationRate=(Roll=50000)
     DesiredRotation=(Roll=30000)
     ForceType=FT_Constant
     ForceRadius=100.000000
     ForceScale=5.000000
}
