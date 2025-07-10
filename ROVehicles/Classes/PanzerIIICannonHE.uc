//===================================================================
// PanzerIIICannonHE
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// Panzer III tank cannon class with HE loadout
//===================================================================
class PanzerIIICannonHE extends PanzerIIICannon;

defaultproperties
{
     ProjectileDescriptions(1)="HE"
     SecondaryProjectileClass=Class'ROVehicles.PanzerIIICannonShellHE'
}
