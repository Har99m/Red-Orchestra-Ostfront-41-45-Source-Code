//=============================================================================
// P38Ammo
//=============================================================================
// Ammo class for the P38
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class P08LugerAmmo extends ROAmmunition;

defaultproperties
{
     MaxAmmo=9
     InitialAmount=8
     PickupClass=Class'ROAmmo.P08LugerAmmoPickup'
     IconMaterial=Texture'InterfaceArt_tex.HUD.luger_ammo'
     IconCoords=(X1=445,Y1=75,X2=544,Y2=149)
     ItemName="P08 Luger Magazine"
}
