//=============================================================================
// DP28ClientTracer
//=============================================================================
// Client side DP28 bullet with a tracer effect
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 John Ramm-Jaeger" Gibson
//=============================================================================

class DP28ClientTracer extends ROClientTracer;

defaultproperties
{
     mTracerClass=Class'ROEffects.RORussianGreenTracer'
     DeflectedMesh=StaticMesh'EffectsSM.Weapons.Russ_Tracer_Ball'
     BallisticCoefficient=0.370000
     SpeedFudgeScale=0.500000
     Speed=44082.000000
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'EffectsSM.Weapons.Russ_Tracer'
     DrawScale=2.000000
}
