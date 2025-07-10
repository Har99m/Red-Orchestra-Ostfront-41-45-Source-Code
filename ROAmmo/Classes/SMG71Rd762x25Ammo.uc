//=============================================================================
// SMG71Rd762x25Ammo
//=============================================================================
// Ammo class for PPSH style smgs
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class SMG71Rd762x25Ammo extends ROAmmunition;

defaultproperties
{
     MaxAmmo=72
     InitialAmount=71
     PickupClass=Class'ROAmmo.SMG71Rd762x25AmmoPickup'
     IconMaterial=Texture'InterfaceArt_tex.HUD.ppsh_ammo'
     IconCoords=(X1=445,Y1=75,X2=544,Y2=149)
     ItemName="71rd 7.62mm Magazine"
}
