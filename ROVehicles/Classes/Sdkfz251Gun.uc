//=============================================================================
// Sdkfz251Gun
//=============================================================================
// Half Track gun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class Sdkfz251Gun extends ROVehicleWeapon;

var		bool  bReloading;  // This MG is currently reloading
var		int	  NumMags;	   // Number of mags carried for this MG;
var()	float ReloadLength;// Length of the reload animation. Sorry for the literal, but the Hud Overlay isn't spawned on the server.

replication
{
	// Functions server can call.
	reliable if( Role==ROLE_Authority )
		ClientDoReload;

    reliable if (bNetDirty && bNetOwner && Role == ROLE_Authority)
        bReloading, NumMags;
}

// Limit the left and right movement of the driver
simulated function int LimitYaw(int yaw)
{
    local int NewYaw;
	local ROVehicleWeaponPawn PwningPawn;

    PwningPawn = ROVehicleWeaponPawn(Owner);

    if ( !bLimitYaw )
    {
        return yaw;
    }

    NewYaw = yaw;

    if( PwningPawn != none )
    {
	   	if( yaw > PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewPositiveYawLimit)
	   	{
	   		NewYaw = PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewPositiveYawLimit;
	   	}
	   	else if( yaw < PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewNegativeYawLimit )
	   	{
	   		NewYaw = PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewNegativeYawLimit;
	  	}
  	}
  	else
  	{
	   	if( yaw > MaxPositiveYaw )
	   	{
	   		NewYaw = MaxPositiveYaw;
	   	}
	   	else if( yaw < MaxNegativeYaw )
	   	{
	   		NewYaw = MaxNegativeYaw;
	  	}
  	}

  	return NewYaw;
}

// Returns true if this weapon is ready to fire
simulated function bool ReadyToFire(bool bAltFire)
{
	if( bReloading )
		return false;

	return super.ReadyToFire(bAltFire);
}

function CeaseFire(Controller C, bool bWasAltFire)
{
	super.CeaseFire(C, bWasAltFire);

	if( !bReloading && !HasAmmo(0) )
		HandleReload();
}

function HandleReload()
{
	if( NumMags > 0 && !bReloading)
	{
		bReloading = true;
		NumMags--;
		ClientDoReload();
		NetUpdateTime = Level.TimeSeconds - 1;

		//log("Reloading duration = "$VehicleWeaponPawn(Owner).HUDOverlay.GetAnimDuration('Bipod_Reload_s', 1.0));
		//SetTimer(VehicleWeaponPawn(Owner).HUDOverlay.GetAnimDuration('reload', 1.0), false);
        SetTimer(ReloadLength, false);
	}
}

// Play the reload animation on the client
simulated function ClientDoReload()
{
    if(Owner != none && VehicleWeaponPawn(Owner) != none && VehicleWeaponPawn(Owner).HUDOverlay != none )
		VehicleWeaponPawn(Owner).HUDOverlay.PlayAnim('Bipod_Reload_s');
 }

simulated function Timer()
{
   if ( bReloading )
   {
	    if( Role == ROLE_Authority )
	    {
			bReloading=false;
			MainAmmoCharge[0] = InitialPrimaryAmmo;
			NetUpdateTime = Level.TimeSeconds - 1;
        }
   }
}

event bool AttemptFire(Controller C, bool bAltFire)
{
  	if(Role != ROLE_Authority || bForceCenterAim)
		return False;

	if (FireCountdown <= 0)
	{
		CalcWeaponFire(bAltFire);
		if (bCorrectAim)
			WeaponFireRotation = AdjustAim(bAltFire);

		if( bAltFire )
		{
			if( AltFireSpread > 0 )
				WeaponFireRotation = rotator(vector(WeaponFireRotation) + VRand()*FRand()*AltFireSpread);
		}
		else if (Spread > 0)
		{
			WeaponFireRotation = rotator(vector(WeaponFireRotation) + VRand()*FRand()*Spread);
		}

        DualFireOffset *= -1;

		Instigator.MakeNoise(1.0);
		if (bAltFire)
		{
			if( !ConsumeAmmo(2) )
			{
				VehicleWeaponPawn(Owner).ClientVehicleCeaseFire(bAltFire);
				return false;
			}
			FireCountdown = AltFireInterval;
			AltFire(C);
		}
		else
		{
			if( bMultipleRoundTypes )
			{
				if (ProjectileClass == PrimaryProjectileClass)
				{
					if( !ConsumeAmmo(0) )
					{
						VehicleWeaponPawn(Owner).ClientVehicleCeaseFire(bAltFire);
						return false;
					}
			    }
			    else if (ProjectileClass == SecondaryProjectileClass)
			    {
					if( !ConsumeAmmo(1) )
					{
						VehicleWeaponPawn(Owner).ClientVehicleCeaseFire(bAltFire);
						return false;
					}
			    }
			}
			else if( !ConsumeAmmo(0) )
			{
				VehicleWeaponPawn(Owner).ClientVehicleCeaseFire(bAltFire);
				HandleReload();
				return false;
			}

			FireCountdown = FireInterval;
		    Fire(C);
		}
		AimLockReleaseTime = Level.TimeSeconds + FireCountdown * FireIntervalAimLock;

	    return True;
	}

	return False;
}

// Fill the ammo up to the initial ammount
function bool GiveInitialAmmo()
{
	local bool bDidResupply;

	if( NumMags != default.NumMags )
	{
		bDidResupply = true;
	}

	MainAmmoCharge[0] = InitialPrimaryAmmo;
	MainAmmoCharge[1] = InitialSecondaryAmmo;
	AltAmmoCharge = InitialAltAmmo;
	NumMags = default.NumMags;

	return bDidResupply;
}

simulated function int getNumMags()
{
    return NumMags;
}

defaultproperties
{
     NumMags=15
     ReloadLength=6.590000
     DummyTracerClass=Class'ROInventory.MG34ClientTracer'
     mTracerInterval=0.280000
     bUsesTracers=True
     VehHitpoints(0)=(PointRadius=9.000000,PointScale=1.000000,PointBone="com_attachment",PointOffset=(Z=15.000000))
     VehHitpoints(1)=(PointRadius=15.000000,PointScale=1.000000,PointBone="com_attachment",PointOffset=(Z=-5.000000))
     bIsMountedTankMG=True
     hudAltAmmoIcon=Texture'InterfaceArt_tex.HUD.mg42_ammo'
     YawBone="Gun_protection"
     PitchBone="Gun"
     PitchUpLimit=10000
     PitchDownLimit=50000
     WeaponFireAttachmentBone="Gun"
     GunnerAttachmentBone="com_attachment"
     WeaponFireOffset=40.000000
     RotationsPerSecond=2.000000
     bInstantRotation=True
     bDoOffsetTrace=True
     bAmbientFireSound=True
     bIsRepeatingFF=True
     Spread=0.030000
     FireInterval=0.070580
     AltFireInterval=0.070580
     AmbientEffectEmitterClass=Class'ROVehicles.VehicleMGEmitter'
     FireSoundClass=SoundGroup'Inf_Weapons.mg34_p.mg34_p_fire_loop'
     AmbientSoundScaling=3.000000
     FireEndSound=SoundGroup'Inf_Weapons.mg34_p.mg34_p_fire_end'
     FireForce="minifireb"
     DamageType=Class'ROGame.ROVehMountedMGDamType'
     DamageMin=25
     DamageMax=25
     TraceRange=15000.000000
     ProjectileClass=Class'ROInventory.ROMG34Bullet'
     ShakeRotMag=(X=25.000000,Z=10.000000)
     ShakeRotRate=(X=5000.000000,Y=5000.000000,Z=5000.000000)
     ShakeRotTime=2.000000
     ShakeOffsetMag=(X=0.500000,Z=0.200000)
     ShakeOffsetRate=(X=500.000000,Y=500.000000,Z=500.000000)
     ShakeOffsetTime=2.000000
     AIInfo(0)=(bLeadTarget=True,bFireOnRelease=True,aimerror=800.000000,RefireRate=0.070580)
     CustomPitchUpLimit=2000
     CustomPitchDownLimit=63000
     MaxPositiveYaw=10000
     MaxNegativeYaw=-10000
     bLimitYaw=True
     InitialPrimaryAmmo=50
     CullDistance=8000.000000
     Mesh=SkeletalMesh'axis_halftrack_anm.halftrack_gun'
     bCollideActors=True
     bBlockActors=True
     bProjTarget=True
     bBlockZeroExtentTraces=True
     bBlockNonZeroExtentTraces=True
}
