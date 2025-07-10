//===================================================================
// T60Cannon
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// T60 tank cannon class
//===================================================================
class T60Cannon extends ROTankCannon;

var		int	  NumMags;  // Number of mags carried for the Coax MG;

//=============================================================================
// Replication
//=============================================================================

replication
{
    reliable if (bNetDirty && bNetOwner && Role == ROLE_Authority)
        NumMags;

	// Functions the server calls on the client side.
	reliable if( Role==ROLE_Authority )
		ClientDoCannonReload;
}

simulated function int PrimaryAmmoCount()
{
   	return NumMags;
}

function HandleCannonReload()
{
	if( NumMags > 0  && CannonReloadState != CR_Empty )
	{
		ClientDoCannonReload();
		NumMags--;
		MainAmmoCharge[0] = InitialPrimaryAmmo;
		NetUpdateTime = Level.TimeSeconds - 1;

	    CannonReloadState = CR_Empty;
	    SetTimer(0.01, false);
	}
}

// Set the fire countdown client side
simulated function ClientDoCannonReload()
{
    CannonReloadState = CR_Empty;
    SetTimer(0.01, false);
}

// Returns true if this weapon is ready to fire
simulated function bool ReadyToFire(bool bAltFire)
{
	local int Mode;

    if( CannonReloadState != CR_ReadyToFire )
    {
		return false;
    }

	if(	bAltFire )
		Mode = 2;
	else if (ProjectileClass == PrimaryProjectileClass)
        Mode = 0;
    else if (ProjectileClass == SecondaryProjectileClass)
        Mode = 1;

	if( HasAmmo(Mode) )
		return true;

	return false;
}


//do effects (muzzle flash, force feedback, etc) immediately for the weapon's owner (don't wait for replication)
simulated event OwnerEffects()
{
	// Stop the firing effects it we shouldn't be able to fire
	if( (Role < ROLE_Authority) && !ReadyToFire(bIsAltFire) )
	{
		VehicleWeaponPawn(Owner).ClientVehicleCeaseFire(bIsAltFire);
	}

	if (!bIsRepeatingFF)
	{
		if (bIsAltFire)
			ClientPlayForceFeedback( AltFireForce );
		else
			ClientPlayForceFeedback( FireForce );
	}
    ShakeView(bIsAltFire);

	if( Level.NetMode == NM_Standalone && bIsAltFire)
	{
		if (AmbientEffectEmitter != None)
			AmbientEffectEmitter.SetEmitterStatus(true);
	}

	if (Role < ROLE_Authority)
	{
		if (bIsAltFire)
			FireCountdown = AltFireInterval;
		else
			FireCountdown = FireInterval;

		AimLockReleaseTime = Level.TimeSeconds + FireCountdown * FireIntervalAimLock;

        FlashMuzzleFlash(bIsAltFire);

		if (AmbientEffectEmitter != none && bIsAltFire)
			AmbientEffectEmitter.SetEmitterStatus(true);

        if (bIsAltFire)
		{
            if( !bAmbientAltFireSound )
		    	PlaySound(AltFireSoundClass, SLOT_None, FireSoundVolume/255.0,, AltFireSoundRadius,, false);
		    else
		    {
			    SoundVolume = AltFireSoundVolume;
	            SoundRadius = AltFireSoundRadius;
				AmbientSoundScaling = AltFireSoundScaling;
		    }
        }
		else if (!bAmbientFireSound)
        {
            PlaySound(CannonFireSound[Rand(3)], SLOT_None, FireSoundVolume/255.0,, FireSoundRadius,, false);
        }
	}
}

simulated function ClientStartFire(Controller C, bool bAltFire)
{
    bIsAltFire = bAltFire;

	if( CannonReloadState == CR_ReadyToFire && FireCountdown <= 0 )
	{
		if (bIsRepeatingFF)
		{
			if (bIsAltFire)
				ClientPlayForceFeedback( AltFireForce );
			else
				ClientPlayForceFeedback( FireForce );
		}
		OwnerEffects();
	}
}

event bool AttemptFire(Controller C, bool bAltFire)
{
  	if(Role != ROLE_Authority || bForceCenterAim)
		return False;

	if ( CannonReloadState == CR_ReadyToFire && FireCountdown <= 0 )
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
				HandleReload();
				return false;
			}

			FireCountdown = AltFireInterval;
			AltFire(C);

			if( AltAmmoCharge < 1 )
				HandleReload();
		}
		else
		{
			if( !ConsumeAmmo(0) )
			{
				VehicleWeaponPawn(Owner).ClientVehicleCeaseFire(bAltFire);

                HandleCannonReload();
				return false;
			}
			FireCountdown = FireInterval;
		    Fire(C);

			if( MainAmmoCharge[0] < 1 )
				HandleCannonReload();
		}
		AimLockReleaseTime = Level.TimeSeconds + FireCountdown * FireIntervalAimLock;

	    return True;
	}

	return False;
}

simulated event FlashMuzzleFlash(bool bWasAltFire)
{
    if (Role == ROLE_Authority)
    {
    	FlashCount++;
    	NetUpdateTime = Level.TimeSeconds - 1;
    }
    else
        CalcWeaponFire(bWasAltFire);

    if (FlashEmitter != none && !bWasAltFire)
        FlashEmitter.Trigger(Self, Instigator);

    if ( (EffectEmitterClass != None) && EffectIsRelevant(Location,false) )
        EffectEmitter = spawn(EffectEmitterClass, self,, WeaponFireLocation, WeaponFireRotation);

    if (bUsesTracers && (!bWasAltFire && !bAltFireTracersOnly || bWasAltFire))
		UpdateTracer();
}

simulated function Tick(float Delta)
{
    Super(ROVehicleWeapon).Tick(Delta);
}

defaultproperties
{
     NumMags=13
     ReloadSoundOne=Sound'Vehicle_reloads.Reloads.T60_reload_01'
     ReloadSoundTwo=Sound'Vehicle_reloads.Reloads.T60_reload_02'
     ReloadSoundThree=Sound'Vehicle_reloads.Reloads.T60_reload_03'
     ReloadSoundFour=Sound'Vehicle_reloads.Reloads.T60_reload_04'
     CannonFireSound(0)=SoundGroup'Vehicle_Weapons.T60.tnshk20_fire01'
     CannonFireSound(1)=SoundGroup'Vehicle_Weapons.T60.tnshk20_fire02'
     CannonFireSound(2)=SoundGroup'Vehicle_Weapons.T60.tnshk20_fire03'
     MaxDriverHitAngle=2.800000
     RangeSettings(1)=400
     RangeSettings(2)=600
     RangeSettings(3)=800
     RangeSettings(4)=1000
     ReloadSound=Sound'Vehicle_reloads.Reloads.DT_ReloadHidden'
     NumAltMags=15
     DummyTracerClass=Class'ROInventory.DP28ClientTracer'
     mTracerInterval=0.300000
     bUsesTracers=True
     bAltFireTracersOnly=True
     VehHitpoints(0)=(PointRadius=8.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(Z=17.000000))
     VehHitpoints(1)=(PointRadius=15.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(Z=-5.000000))
     YawBone="Turret"
     PitchBone="Gun"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="Barrel"
     GunnerAttachmentBone="com_attachment"
     WeaponFireOffset=65.000000
     AltFireOffset=(X=-30.000000,Y=-20.000000)
     RotationsPerSecond=0.070000
     bAmbientAltFireSound=True
     FireInterval=0.300000
     AltFireInterval=0.100000
     FlashEmitterClass=Class'ROEffects.MuzzleFlash3rdKar'
     AmbientEffectEmitterClass=Class'ROVehicles.TankMGEmitter'
     bAmbientEmitterAltFireOnly=True
     FireSoundVolume=512.000000
     AltFireSoundClass=SoundGroup'Inf_Weapons.dt.dt_fire_loop'
     AltFireSoundScaling=3.000000
     RotateSound=Sound'Vehicle_Weapons.Turret.manual_turret_traverse'
     AltFireEndSound=SoundGroup'Inf_Weapons.dt.dt_fire_end'
     FireForce="Explosion05"
     ProjectileClass=Class'ROVehicles.T60CannonShell'
     AltFireProjectileClass=Class'ROInventory.DP28Bullet'
     ShakeRotMag=(X=75.000000,Y=75.000000,Z=75.000000)
     ShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=3.000000
     ShakeOffsetMag=(X=2.000000,Y=2.000000,Z=2.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=4.000000
     AltShakeRotMag=(X=50.000000,Y=50.000000,Z=50.000000)
     AltShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     AltShakeRotTime=2.000000
     AltShakeOffsetMag=(X=1.000000,Y=1.000000,Z=1.000000)
     AltShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     AltShakeOffsetTime=2.000000
     AIInfo(0)=(bLeadTarget=True,WarnTargetPct=0.750000,RefireRate=0.500000)
     AIInfo(1)=(bLeadTarget=True,WarnTargetPct=0.750000,RefireRate=0.015000)
     CustomPitchUpLimit=6000
     CustomPitchDownLimit=64500
     BeginningIdleAnim="com_idle_close"
     InitialPrimaryAmmo=58
     InitialAltAmmo=60
     bMultipleRoundTypes=False
     bPrimaryIgnoreFireCountdown=False
     Mesh=SkeletalMesh'allies_t60_anm.T60_turret_ext'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.T60_ext'
     Skins(1)=Texture'allies_vehicles_tex.int_vehicles.T60_int'
     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.T60_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=1
}
