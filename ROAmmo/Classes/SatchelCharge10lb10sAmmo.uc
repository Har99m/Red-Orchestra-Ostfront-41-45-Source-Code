//===================================================================
// SatchelCharge10lb10s
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Ammo class for the satchel charge
//===================================================================

class SatchelCharge10lb10sAmmo extends ROAmmunition;

simulated function PostBeginPlay()
{
	//log("Instigator - "$Instigator$" Instigator.Controller = "$Instigator.Controller);
	if( Instigator != none && Instigator.Controller != none)
	{
	     if ( Instigator.Controller.GetTeamNum() == 0 )
	     {
			MaxAmmo=ROTeamGame(Level.Game).LevelInfo.AxisSatchelsPerSapper;
			InitialAmount=ROTeamGame(Level.Game).LevelInfo.AxisSatchelsPerSapper;
	     }
	     else if ( Instigator.Controller.GetTeamNum() == 1 )
	     {
			MaxAmmo=ROTeamGame(Level.Game).LevelInfo.AlliedSatchelsPerSapper;
			InitialAmount=ROTeamGame(Level.Game).LevelInfo.AlliedSatchelsPerSapper;
	     }
     }
	super.PostBeginPlay();
}

defaultproperties
{
     MaxAmmo=2
     InitialAmount=2
     IconMaterial=Texture'InterfaceArt_tex.HUD.satchel_ammo'
     IconCoords=(X1=445,Y1=75,X2=544,Y2=149)
     ItemName="Satchel Charge"
}
