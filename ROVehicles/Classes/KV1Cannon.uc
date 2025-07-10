//===================================================================
// KV1Cannon
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// KV1 tank cannon class
//===================================================================
class KV1Cannon extends ROTankCannon;

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
     ReloadSoundOne=Sound'Vehicle_reloads.Reloads.t34_85_reload_01'
     ReloadSoundTwo=Sound'Vehicle_reloads.Reloads.t34_85_reload_02'
     ReloadSoundThree=Sound'Vehicle_reloads.Reloads.t34_85_reload_03'
     ReloadSoundFour=Sound'Vehicle_reloads.Reloads.t34_85_reload_04'
     CannonFireSound(0)=SoundGroup'Vehicle_Weapons.T34_76.76mm_fire01'
     CannonFireSound(1)=SoundGroup'Vehicle_Weapons.T34_76.76mm_fire02'
     CannonFireSound(2)=SoundGroup'Vehicle_Weapons.T34_76.76mm_fire03'
     RangeSettings(1)=400
     RangeSettings(2)=600
     RangeSettings(3)=800
     RangeSettings(4)=1000
     RangeSettings(5)=1200
     RangeSettings(6)=1400
     RangeSettings(7)=1600
     RangeSettings(8)=1800
     RangeSettings(9)=2000
     RangeSettings(10)=2200
     RangeSettings(11)=2400
     RangeSettings(12)=2600
     RangeSettings(13)=2800
     RangeSettings(14)=3000
     RangeSettings(15)=3200
     RangeSettings(16)=3400
     RangeSettings(17)=3600
     RangeSettings(18)=3800
     RangeSettings(19)=4000
     RangeSettings(20)=4200
     RangeSettings(21)=4400
     RangeSettings(22)=4600
     RangeSettings(23)=4800
     RangeSettings(24)=5000
     RangeSettings(25)=5200
     RangeSettings(26)=5400
     RangeSettings(27)=5600
     RangeSettings(28)=5800
     RangeSettings(29)=6000
     AddedPitch=375
     ReloadSound=Sound'Vehicle_reloads.Reloads.DT_ReloadHidden'
     NumAltMags=15
     DummyTracerClass=Class'ROInventory.DP28ClientTracer'
     mTracerInterval=0.300000
     bUsesTracers=True
     bAltFireTracersOnly=True
     VehHitpoints(0)=(PointRadius=9.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(X=-5.000000))
     VehHitpoints(1)=(PointRadius=15.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(X=-10.000000,Z=-20.000000))
     YawBone="Turret"
     PitchBone="Gun"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="Gun"
     GunnerAttachmentBone="com_attachment"
     WeaponFireOffset=200.000000
     AltFireOffset=(X=21.000000,Y=18.000000,Z=-0.500000)
     RotationsPerSecond=0.050000
     bAmbientAltFireSound=True
     FireInterval=12.000000
     AltFireInterval=0.100000
     EffectEmitterClass=Class'ROEffects.TankCannonFireEffect'
     AmbientEffectEmitterClass=Class'ROVehicles.TankMGEmitter'
     bAmbientEmitterAltFireOnly=True
     FireSoundVolume=512.000000
     AltFireSoundClass=SoundGroup'Inf_Weapons.dt.dt_fire_loop'
     AltFireSoundScaling=3.000000
     RotateSound=Sound'Vehicle_Weapons.Turret.hydraul_turret_traverse'
     AltFireEndSound=SoundGroup'Inf_Weapons.dt.dt_fire_end'
     FireForce="Explosion05"
     ProjectileClass=Class'ROVehicles.KV1CannonShell'
     AltFireProjectileClass=Class'ROInventory.DP28Bullet'
     ShakeRotMag=(Z=250.000000)
     ShakeRotRate=(Z=2500.000000)
     ShakeRotTime=6.000000
     ShakeOffsetMag=(Z=10.000000)
     ShakeOffsetRate=(Z=200.000000)
     ShakeOffsetTime=10.000000
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
     InitialPrimaryAmmo=54
     InitialSecondaryAmmo=60
     InitialAltAmmo=60
     PrimaryProjectileClass=Class'ROVehicles.KV1CannonShell'
     SecondaryProjectileClass=Class'ROVehicles.KV1CannonShellHE'
     Mesh=SkeletalMesh'allies_kv1_anm.KV1_turret_ext'
     Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.KV1_ext'
     Skins(1)=Texture'allies_vehicles_tex.int_vehicles.kv1_int'
     SoundVolume=130
     HighDetailOverlay=Shader'allies_vehicles_tex.int_vehicles.kv1_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=1
}
