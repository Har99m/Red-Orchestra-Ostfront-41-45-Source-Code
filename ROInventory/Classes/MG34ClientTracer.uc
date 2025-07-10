//=============================================================================
// MG34ClientTracer
//=============================================================================
// Client side MG34 bullet with a tracer effect
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 John Ramm-Jaeger" Gibson
//=============================================================================

class MG34ClientTracer extends ROClientTracer;

defaultproperties
{
     mTracerClass=Class'ROEffects.ROGermanYellowOrangeTracer'
     DeflectedMesh=StaticMesh'EffectsSM.Weapons.Ger_Tracer_Ball'
     BallisticCoefficient=0.390000
     SpeedFudgeScale=0.500000
     Speed=37808.000000
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'EffectsSM.Weapons.Ger_Tracer'
     DrawScale=2.000000
}
