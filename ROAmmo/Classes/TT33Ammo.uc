//=============================================================================
// TT33Ammo
//=============================================================================
// Ammo class for the TT33
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class TT33Ammo extends ROAmmunition;

defaultproperties
{
     MaxAmmo=9
     InitialAmount=8
     PickupClass=Class'ROAmmo.TT33AmmoPickup'
     IconMaterial=Texture'InterfaceArt_tex.HUD.tt33_ammo'
     IconCoords=(X1=445,Y1=75,X2=544,Y2=149)
     ItemName="TT33 Magazine"
}
