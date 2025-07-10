//===================================================================
// Stug3Cannon
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// Stug III tank destroyer cannon class
//===================================================================
class Stug3Cannon extends ROTankCannon;

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

defaultproperties
{
     ReloadSoundOne=Sound'Vehicle_reloads.Reloads.STUG_III_reload_01'
     ReloadSoundTwo=Sound'Vehicle_reloads.Reloads.STUG_III_reload_02'
     ReloadSoundThree=Sound'Vehicle_reloads.Reloads.STUG_III_reload_03'
     ReloadSoundFour=Sound'Vehicle_reloads.Reloads.STUG_III_reload_04'
     CannonFireSound(0)=SoundGroup'Vehicle_Weapons.PanzerIV_F2.75mm_L_fire01'
     CannonFireSound(1)=SoundGroup'Vehicle_Weapons.StugIIIG.75mm_L_fire02'
     CannonFireSound(2)=SoundGroup'Vehicle_Weapons.PanzerIV_F2.75mm_L_fire03'
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
     VehHitpoints(0)=(PointRadius=9.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(X=-6.000000,Z=14.000000))
     VehHitpoints(1)=(PointRadius=16.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(X=-6.000000,Z=-10.000000))
     hudAltAmmoIcon=Texture'InterfaceArt_tex.HUD.mg42_ammo'
     YawBone="Turret"
     YawStartConstraint=-3000.000000
     YawEndConstraint=3000.000000
     PitchBone="gun_pitch"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="Gun"
     GunnerAttachmentBone="com_attachment"
     WeaponFireOffset=200.000000
     RotationsPerSecond=0.050000
     FireInterval=7.000000
     EffectEmitterClass=Class'ROEffects.TankCannonFireEffect'
     FireSoundVolume=512.000000
     RotateSound=Sound'Vehicle_Weapons.Turret.manual_gun_traverse'
     FireForce="Explosion05"
     ProjectileClass=Class'ROVehicles.Stug3CannonShell'
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
     MaxPositiveYaw=2000
     MaxNegativeYaw=-2000
     bLimitYaw=True
     BeginningIdleAnim="com_idle_close"
     InitialPrimaryAmmo=30
     InitialSecondaryAmmo=24
     PrimaryProjectileClass=Class'ROVehicles.Stug3CannonShell'
     SecondaryProjectileClass=Class'ROVehicles.Stug3CannonShellHE'
     Mesh=SkeletalMesh'axis_stug3_anm.Stug3_turret_ext'
     Skins(0)=Texture'axis_vehicles_tex.ext_vehicles.Stug3_ext'
     Skins(1)=Texture'axis_vehicles_tex.int_vehicles.stug3_int'
     HighDetailOverlay=Shader'axis_vehicles_tex.int_vehicles.stug3_int_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=1
}
