//=============================================================================
// UniCarrierTransportSnow
//=============================================================================
// Universal Carrier Transport Vehicle class
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2006 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class UniCarrierTransportSnow extends UniCarrierTransport;

static function StaticPrecache(LevelInfo L)
{
    super(ROWheeledVehicle).StaticPrecache(L);

 	L.AddPrecacheMaterial(Material'allies_vehicles_tex2.ext_vehicles.universal_carrier_Snow');
 	L.AddPrecacheMaterial(Material'allies_vehicles_tex2.Treads.UCSnow_Tread');
 	L.AddPrecacheMaterial(Material'allies_vehicles_tex2.int_vehicles.Universal_Carrier_SnowInt');
 	L.AddPrecacheMaterial(Material'allies_vehicles_tex2.int_vehicles.Universal_Carrier_Int_S');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex2.ext_vehicles.universal_carrier_Snow');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex2.Treads.UCSnow_Tread');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex2.int_vehicles.Universal_Carrier_SnowInt');
    Level.AddPrecacheMaterial(Material'allies_vehicles_tex2.int_vehicles.Universal_Carrier_SnowInt_S');

	super(ROWheeledVehicle).UpdatePrecacheMaterials();
}

defaultproperties
{
     HUDOverlayClass=Class'ROVehicles.UniCarrierDriverOverlaySnow'
     Skins(0)=Texture'allies_vehicles_tex2.ext_vehicles.universal_carrier_Snow'
     Skins(1)=Texture'allies_vehicles_tex2.Treads.UCSnow_Tread'
     Skins(2)=Texture'allies_vehicles_tex2.Treads.UCSnow_Tread'
     Skins(3)=Texture'allies_vehicles_tex2.int_vehicles.Universal_Carrier_SnowInt'
     HighDetailOverlay=Shader'allies_vehicles_tex2.int_vehicles.Universal_Carrier_SnowInt_S'
}
