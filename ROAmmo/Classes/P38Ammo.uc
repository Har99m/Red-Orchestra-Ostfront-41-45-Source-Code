//=============================================================================
// P38Ammo
//=============================================================================
// Ammo class for the P38
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class P38Ammo extends ROAmmunition;

defaultproperties
{
     MaxAmmo=9
     InitialAmount=8
     PickupClass=Class'ROAmmo.P38AmmoPickup'
     IconMaterial=Texture'InterfaceArt_tex.HUD.p38_ammo'
     IconCoords=(X1=445,Y1=75,X2=544,Y2=149)
     ItemName="P38 Magazine"
}
