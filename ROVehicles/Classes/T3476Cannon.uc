//===================================================================
// ROT34Cannon
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Russian T34 76 tank cannon class
//===================================================================
class T3476Cannon extends T3485Cannon;

// Special tracer handling for this type of cannon
simulated function UpdateTracer()
{
	local rotator SpawnDir;

	if (Level.NetMode == NM_DedicatedServer || !bUsesTracers)
		return;


 	if (Level.TimeSeconds > mLastTracerTime + mTracerInterval)
	{
		if (Instigator != None && Instigator.IsLocallyControlled())
		{
			SpawnDir = WeaponFireRotation;
		}
		else
		{
			SpawnDir = GetBoneRotation(WeaponFireAttachmentBone);
		}

        if (Instigator != None && !Instigator.PlayerReplicationInfo.bBot)
        {
        	SpawnDir.Pitch += AddedPitch;
        }

        Spawn(DummyTracerClass,,, WeaponFireLocation, SpawnDir);

		mLastTracerTime = Level.TimeSeconds;
	}
}

defaultproperties
{
     ReloadSoundOne=Sound'Vehicle_reloads.Reloads.t34_76_reload_01'
     ReloadSoundTwo=Sound'Vehicle_reloads.Reloads.t34_76_reload_02'
     ReloadSoundThree=Sound'Vehicle_reloads.Reloads.t34_76_reload_03'
     ReloadSoundFour=Sound'Vehicle_reloads.Reloads.t34_76_reload_04'
     CannonFireSound(0)=SoundGroup'Vehicle_Weapons.T34_76.76mm_fire01'
     CannonFireSound(1)=SoundGroup'Vehicle_Weapons.T34_76.76mm_fire02'
     CannonFireSound(2)=SoundGroup'Vehicle_Weapons.T34_76.76mm_fire03'
     RangeSettings(1)=200
     RangeSettings(2)=400
     RangeSettings(4)=800
     RangeSettings(5)=1000
     RangeSettings(6)=1200
     RangeSettings(7)=1400
     RangeSettings(8)=1600
     RangeSettings(9)=1800
     RangeSettings(10)=2000
     RangeSettings(11)=2200
     RangeSettings(12)=2400
     RangeSettings(13)=2600
     RangeSettings(14)=2800
     RangeSettings(15)=3000
     RangeSettings(16)=3200
     RangeSettings(17)=3400
     RangeSettings(18)=3600
     RangeSettings(19)=3800
     RangeSettings(20)=4000
     RangeSettings(21)=4200
     RangeSettings(22)=4400
     RangeSettings(23)=4600
     RangeSettings(24)=4800
     RangeSettings(25)=5000
     AddedPitch=360
     VehHitpoints(0)=(PointOffset=(X=8.000000,Y=-29.000000,Z=17.000000))
     VehHitpoints(1)=(PointOffset=(X=6.000000,Y=-23.000000,Z=0.000000))
     AltFireOffset=(X=13.000000,Y=12.000000,Z=2.000000)
     FireInterval=13.000000
     ProjectileClass=Class'ROVehicles.T3476CannonShell'
     BeginningIdleAnim="com_idle_close"
     InitialPrimaryAmmo=35
     InitialSecondaryAmmo=33
     PrimaryProjectileClass=Class'ROVehicles.T3476CannonShell'
     SecondaryProjectileClass=Class'ROVehicles.T3476CannonShellHE'
     Mesh=SkeletalMesh'allies_t3476_anm.T3476_turret_ext'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.T3476_ext'
     Skins(1)=Texture'allies_vehicles_tex.int_vehicles.T3476_int'
     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.t3476_int_s'
}
