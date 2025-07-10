//=============================================================================
// PanzerFaustFire
//=============================================================================
// Rocket firing class for the PanzerFaust
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================

class PanzerFaustFire extends ROProjectileFire;

var 	name		FireIronAnimOne;  	// Iron Fire animation for range setting one
var 	name		FireIronAnimTwo;    // Iron Fire animation for range setting two
var 	name		FireIronAnimThree;  // Iron Fire animation for range setting three


event ModeDoFire()
{
    if ( Level.NetMode != NM_DedicatedServer )
    {
        if ( RORocketWeapon(Owner).RocketAttachment  != none)
           RORocketWeapon(Owner).RocketAttachment.Destroy();
    }

	Super.ModeDoFire();

	PanzerFaustWeapon(Weapon).PostFire();
}

function PlayFiring()
{
	local name Anim;

	if ( Weapon.Mesh != None )
	{
		if ( FireCount > 0 )
		{
			if( Weapon.bUsingSights && Weapon.HasAnim(FireIronLoopAnim))
			{
			 	Weapon.PlayAnim(FireIronLoopAnim, FireAnimRate, 0.0);
			}
			else
			{
				if ( Weapon.HasAnim(FireLoopAnim) )
				{
					Weapon.PlayAnim(FireLoopAnim, FireLoopAnimRate, 0.0);
				}
				else
				{
					Weapon.PlayAnim(FireAnim, FireAnimRate, FireTweenTime);
				}
			}
		}
		else
		{
			if( Weapon.bUsingSights )
			{
				switch(PanzerFaustWeapon(Weapon).RangeIndex)
				{
					case 0:
						Anim = FireIronAnimOne;
						break;
					case 1:
						Anim = FireIronAnimTwo;
						break;
					case 2:
						Anim = FireIronAnimThree;
						break;
				}
			 	Weapon.PlayAnim(Anim, FireAnimRate, FireTweenTime);
			}
			else
			{
				Weapon.PlayAnim(FireAnim, FireAnimRate, FireTweenTime);
			}
		}
	}

	Weapon.PlayOwnedSound(FireSounds[Rand(FireSounds.Length)],SLOT_None,FireVolume,,,,false);

    ClientPlayForceFeedback(FireForce);  // jdf

    FireCount++;
}

defaultproperties
{
     FireIronAnimOne="shoot30"
     FireIronAnimTwo="shoot"
     FireIronAnimThree="shoot90"
     ProjSpawnOffset=(X=25.000000)
     FAProjSpawnOffset=(X=-25.000000)
     AddedPitch=-100
     bUsePreLaunchTrace=False
     FireIronAnim="shoot"
     MuzzleBone="Warhead"
     FireSounds(0)=SoundGroup'Inf_Weapons.panzerfaust60.panzerfaust60_fire01'
     FireSounds(1)=SoundGroup'Inf_Weapons.panzerfaust60.panzerfaust60_fire02'
     FireSounds(2)=SoundGroup'Inf_Weapons.panzerfaust60.panzerfaust60_fire03'
     maxVerticalRecoilAngle=1000
     maxHorizontalRecoilAngle=600
     bWaitForRelease=True
     FireAnim="shoothip"
     TweenTime=0.000000
     FireForce="RocketLauncherFire"
     FireRate=2.600000
     AmmoClass=Class'ROAmmo.PanzerFaustAmmo'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=500.000000)
     ShakeRotRate=(X=12500.000000,Y=12500.000000,Z=7500.000000)
     ShakeRotTime=6.000000
     ShakeOffsetMag=(X=3.000000,Y=1.000000,Z=5.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=1.000000
     ProjectileClass=Class'ROInventory.PanzerFaustRocket'
     BotRefireRate=0.500000
     WarnTargetPct=0.900000
     SmokeEmitterClass=Class'ROEffects.ROMuzzleSmoke'
     aimerror=1200.000000
     Spread=75.000000
     SpreadStyle=SS_Random
}
