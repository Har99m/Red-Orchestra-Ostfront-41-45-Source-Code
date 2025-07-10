//=============================================================================
// PTRDAmmo
//=============================================================================
// Ammo class for PTRD AT rifles using 14.5mm ammo
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class PTRDAmmo extends ROAmmunition;

defaultproperties
{
     MaxAmmo=1
     InitialAmount=1
     PickupClass=Class'ROAmmo.PTRDAmmoPickup'
     IconMaterial=Texture'InterfaceArt_tex.HUD.ptrd_ammo'
     IconCoords=(X1=445,Y1=75,X2=544,Y2=149)
     ItemName="14.5mm AP Rounds"
}
