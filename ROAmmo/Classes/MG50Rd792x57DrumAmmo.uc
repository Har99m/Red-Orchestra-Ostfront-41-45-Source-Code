//=============================================================================
// MG50Rd792x57DrumAmmo
//=============================================================================
// Ammo class for German machine guns using 50 round ammo drums
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class MG50Rd792x57DrumAmmo extends ROAmmunition;

defaultproperties
{
     MaxAmmo=51
     InitialAmount=50
     PickupClass=Class'ROAmmo.MG50Rd792x57DrumAmmoPickup'
     IconMaterial=Texture'InterfaceArt_tex.HUD.mg34_ammo'
     IconCoords=(X1=445,Y1=75,X2=544,Y2=149)
     ItemName="MG 50 Round 7.92x57mm Drum"
}
