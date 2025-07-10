//=============================================================================
// STG44Ammo
//=============================================================================
// Ammo class for the STG44
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class STG44Ammo extends ROAmmunition;

defaultproperties
{
     MaxAmmo=31
     InitialAmount=31
     PickupClass=Class'ROAmmo.STG44AmmoPickup'
     IconMaterial=Texture'InterfaceArt_tex.HUD.stg44_ammo'
     IconCoords=(X1=445,Y1=75,X2=544,Y2=149)
     ItemName="STG44 Magazine"
}
