//=============================================================================
// ClientSideTriggeredSound
//=============================================================================
// An actor to play triggered sounds on network clients or offline
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class ClientSideTriggeredSound extends Actor
	placeable;

var()	sound SoundToPlayWhenTriggered;

simulated function Trigger(Actor Other, Pawn EventInstigator)
{
	if( Level.NetMode == NM_DedicatedServer )
		return;

	PlaySound(SoundToPlayWhenTriggered, SLOT_None, SoundVolume, False, SoundRadius,SoundPitch,true);
}

defaultproperties
{
     bNoDelete=True
     RemoteRole=ROLE_SimulatedProxy
     Texture=Texture'Engine.S_Ambient'
     SoundVolume=2
     SoundPitch=1
     SoundRadius=1000.000000
}
