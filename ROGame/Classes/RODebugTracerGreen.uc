// =================================================================================== *
// RODebugTracerGreen
// Author: Ramm
// =================================================================================== *
//	A small green tracer to aid in debugging.
// =================================================================================== */

#exec OBJ LOAD FILE=..\StaticMeshes\DebugObjects.usx

class RODebugTracerGreen extends actor;

defaultproperties
{
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'DebugObjects.Arrows.debugarrow2'
     bBlockZeroExtentTraces=False
     bBlockNonZeroExtentTraces=False
}
