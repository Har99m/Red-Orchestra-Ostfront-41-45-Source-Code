//===================================================================
// SU76Cannon
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// SU76 tank destroyer cannon class
//===================================================================
class SU76Cannon extends ROTankCannon;

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

// Ovveriden for slighly different animation handling
simulated event FlashMuzzleFlash(bool bWasAltFire)
{
 	local ROVehicleWeaponPawn OwningPawn;

    if (Role == ROLE_Authority)
    {
        if (bWasAltFire)
            FiringMode = 1;
        else
            FiringMode = 0;
    	FlashCount++;
    	NetUpdateTime = Level.TimeSeconds - 1;
    }
    else
        CalcWeaponFire(bWasAltFire);

    if (bUsesTracers && (!bWasAltFire && !bAltFireTracersOnly || bWasAltFire))
		UpdateTracer();

	if( bWasAltFire )
		return;

    if (FlashEmitter != None)
        FlashEmitter.Trigger(Self, Instigator);

    if ( (EffectEmitterClass != None) && EffectIsRelevant(Location,false) )
        EffectEmitter = spawn(EffectEmitterClass, self,, WeaponFireLocation, WeaponFireRotation);

    if ( (CannonDustEmitterClass != None) && EffectIsRelevant(Location,false) )
        CannonDustEmitter = spawn(CannonDustEmitterClass, self,, Base.Location, Base.Rotation);

	OwningPawn = ROVehicleWeaponPawn(Instigator);

	if( OwningPawn != none && OwningPawn.DriverPositionIndex > 1)
	{
		if( HasAnim(TankShootOpenAnim))
			PlayAnim(TankShootOpenAnim);
	}
	else if( HasAnim(TankShootClosedAnim))
	{
		PlayAnim(TankShootClosedAnim);
	}
}

defaultproperties
{
     ReloadSoundOne=Sound'Vehicle_reloads.Reloads.SU_76_Reload_01'
     ReloadSoundTwo=Sound'Vehicle_reloads.Reloads.SU_76_Reload_02'
     ReloadSoundThree=Sound'Vehicle_reloads.Reloads.SU_76_Reload_03'
     ReloadSoundFour=Sound'Vehicle_reloads.Reloads.SU_76_Reload_04'
     CannonFireSound(0)=SoundGroup'Vehicle_Weapons.T34_76.76mm_fire01'
     CannonFireSound(1)=SoundGroup'Vehicle_Weapons.T34_76.76mm_fire02'
     CannonFireSound(2)=SoundGroup'Vehicle_Weapons.T34_76.76mm_fire03'
     RangeSettings(1)=100
     RangeSettings(2)=200
     RangeSettings(3)=300
     RangeSettings(4)=400
     RangeSettings(5)=500
     RangeSettings(6)=600
     RangeSettings(7)=700
     RangeSettings(8)=800
     RangeSettings(9)=900
     RangeSettings(10)=1000
     RangeSettings(11)=1200
     RangeSettings(12)=1400
     RangeSettings(13)=1600
     RangeSettings(14)=1800
     RangeSettings(15)=2000
     RangeSettings(16)=2200
     RangeSettings(17)=2400
     RangeSettings(18)=2600
     RangeSettings(19)=2800
     RangeSettings(20)=3000
     RangeSettings(21)=3200
     RangeSettings(22)=3400
     RangeSettings(23)=3600
     RangeSettings(24)=3800
     RangeSettings(25)=4000
     VehHitpoints(0)=(PointRadius=10.000000,PointScale=1.000000,PointBone="com_attachment",PointOffset=(X=-3.000000,Z=42.000000))
     VehHitpoints(1)=(PointRadius=20.000000,PointScale=1.000000,PointBone="com_attachment",PointOffset=(X=-4.000000,Z=17.000000))
     YawBone="Turret"
     YawStartConstraint=-4000.000000
     YawEndConstraint=4000.000000
     PitchBone="Gun"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="Gun"
     GunnerAttachmentBone="com_attachment"
     WeaponFireOffset=200.000000
     RotationsPerSecond=0.050000
     FireInterval=6.000000
     EffectEmitterClass=Class'ROEffects.TankCannonFireEffect'
     FireSoundVolume=512.000000
     RotateSound=Sound'Vehicle_Weapons.Turret.manual_gun_traverse'
     FireForce="Explosion05"
     ProjectileClass=Class'ROVehicles.SU76CannonShell'
     ShakeRotMag=(Z=250.000000)
     ShakeRotRate=(Z=2500.000000)
     ShakeRotTime=6.000000
     ShakeOffsetMag=(Z=10.000000)
     ShakeOffsetRate=(Z=200.000000)
     ShakeOffsetTime=10.000000
     AIInfo(0)=(bLeadTarget=True,WarnTargetPct=0.750000,RefireRate=0.500000)
     AIInfo(1)=(bLeadTarget=True,WarnTargetPct=0.750000,RefireRate=0.015000)
     CustomPitchUpLimit=6000
     CustomPitchDownLimit=63500
     MaxPositiveYaw=3000
     MaxNegativeYaw=-3000
     bLimitYaw=True
     BeginningIdleAnim="com_idle_close"
     InitialPrimaryAmmo=30
     InitialSecondaryAmmo=30
     PrimaryProjectileClass=Class'ROVehicles.SU76CannonShell'
     SecondaryProjectileClass=Class'ROVehicles.SU76CannonShellHE'
     Mesh=SkeletalMesh'allies_su76_anm.SU76_turret_ext'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.SU76_ext'
     Skins(1)=Texture'allies_vehicles_tex.int_vehicles.SU76_int'
     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.SU76_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=1
}
