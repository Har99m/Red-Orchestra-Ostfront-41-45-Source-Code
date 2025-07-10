//=============================================================================
// G41Weapon
//=============================================================================
// Weapon class for the German G41 semi auto rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class G41Weapon extends ROSemiAutoWeapon;

#exec OBJ LOAD FILE=..\Animations\Axis_G41_1st.ukx

simulated function bool AllowReload()
{
	// Don't allow a reload unless 5 rounds have been shot off (strippers hold 5 bullets)
	if( AmmoAmount(0) > 5)
		return false;

    return super.AllowReload();
}

// Overriden to handle special G41 magazine functionality
simulated function PlayReload()
{
	local name Anim;
	local float AnimTimer;

    if( AmmoAmount(0) > 0 || CurrentMagCount < 2)
    {
		Anim = MagPartialReloadAnim;
	}
	else
	{
		Anim = MagEmptyReloadAnim;
	}

    AnimTimer = GetAnimDuration(Anim, 1.0) + FastTweenTime;

	if( Level.NetMode == NM_DedicatedServer || (Level.NetMode == NM_ListenServer && !Instigator.IsLocallyControlled()))
		SetTimer(AnimTimer - (AnimTimer * 0.1),false);
	else
		SetTimer(AnimTimer,false);

	if( Instigator.IsLocallyControlled() )
	{
		PlayAnim(Anim, 1.0, FastTweenTime);
	}
}

// Overriden to handle special G41 magazine functionality
function PerformReload()
{
	local int CurrentMagLoad;

    CurrentMagLoad = AmmoAmount(0);

	if( PrimaryAmmoArray.Length == 0 )
	{
		return;
	}

	if( CurrentMagLoad > 0 )
	{
		PrimaryAmmoArray.Remove(CurrentMagIndex, 1);

		if( PrimaryAmmoArray.Length == 0 )
		{
			return;
		}

		CurrentMagIndex++;

		if ( CurrentMagIndex > PrimaryAmmoArray.Length - 1)
		{
			CurrentMagIndex = 0;
		}

		AddAmmo(PrimaryAmmoArray[CurrentMagIndex], 0);

	}
	else
	{
		PrimaryAmmoArray.Remove(CurrentMagIndex, 1);

		if( PrimaryAmmoArray.Length == 0 )
		{
			return;
		}

		CurrentMagIndex++;

		if ( CurrentMagIndex > PrimaryAmmoArray.Length - 1)
		{
			CurrentMagIndex = 0;
		}

		AddAmmo(PrimaryAmmoArray[CurrentMagIndex], 0);

		if( PrimaryAmmoArray.Length > 1 )
		{
			PrimaryAmmoArray.Remove(CurrentMagIndex, 1);

			CurrentMagIndex++;

			if ( CurrentMagIndex > PrimaryAmmoArray.Length - 1)
			{
				CurrentMagIndex = 0;
			}

			AddAmmo(PrimaryAmmoArray[CurrentMagIndex], 0);
		}
	}

	if( Instigator.IsHumanControlled() )
	{
		if( AmmoStatus(0) > 0.5 )
		{
			PlayerController(Instigator.Controller).ReceiveLocalizedMessage( class'ROAmmoWeightMessage',0);
		}
		else if(  AmmoStatus(0) > 0.2 )
		{
			PlayerController(Instigator.Controller).ReceiveLocalizedMessage( class'ROAmmoWeightMessage',1);
		}
		else
		{
			PlayerController(Instigator.Controller).ReceiveLocalizedMessage( class'ROAmmoWeightMessage',2);
		}
	}

	if( AmmoAmount(0) > 0 )
	{
		if( ROWeaponAttachment(ThirdPersonActor) != none )
		{
			ROWeaponAttachment(ThirdPersonActor).bOutOfAmmo = false;
		}
	}

    PrimaryAmmoArray[CurrentMagIndex] = AmmoAmount(0);

	ClientForceAmmoUpdate(0, AmmoAmount(0));

	CurrentMagCount = PrimaryAmmoArray.Length - 1;
}

// Overriden to handle special G41 magazine functionality
function bool FillAmmo()
{
	local int InitialAmount, i;

    if( PrimaryAmmoArray.Length == MaxNumPrimaryMags )
    {
    	return false;
    }

	InitialAmount = FireMode[0].AmmoClass.Default.InitialAmount;

    PrimaryAmmoArray.Length = MaxNumPrimaryMags;
	for( i=0; i<PrimaryAmmoArray.Length; i++ )
	{
		PrimaryAmmoArray[i] = InitialAmount;
	}
	CurrentMagIndex=0;
	CurrentMagCount = PrimaryAmmoArray.Length - 1;

	// HACK: Because the G41 uses two mags, the initial amount needs to be two mags
	PrimaryAmmoArray[CurrentMagIndex] = 10;
	AddAmmo(InitialAmount * 2,0);

	return true;
}

// Overriden to handle special G41 magazine functionality
function GiveAmmo(int m, WeaponPickup WP, bool bJustSpawned)
{
    local bool bJustSpawnedAmmo;
    local int addAmount, InitialAmount, i;

    if ( FireMode[m] != None && FireMode[m].AmmoClass != None )
    {
        Ammo[m] = Ammunition(Instigator.FindInventoryType(FireMode[m].AmmoClass));
		bJustSpawnedAmmo = false;

		if ( (FireMode[m].AmmoClass == None) || ((m != 0) && (FireMode[m].AmmoClass == FireMode[0].AmmoClass)) )
			return;

		InitialAmount = FireMode[m].AmmoClass.Default.InitialAmount;

		if( bJustSpawned && WP == None)
		{
			PrimaryAmmoArray.Length = InitialNumPrimaryMags;
			for( i=0; i<PrimaryAmmoArray.Length; i++ )
			{
				PrimaryAmmoArray[i] = InitialAmount;
			}
			CurrentMagIndex=0;
			CurrentMagCount = PrimaryAmmoArray.Length - 1;

			// HACK: Because the G41 uses two mags, the initial amount needs to be two mags
			PrimaryAmmoArray[CurrentMagIndex] = 10;
			InitialAmount = InitialAmount * 2;
		}

		if ( (WP != None) /*&& ((WP.AmmoAmount[0] > 0) || (WP.AmmoAmount[1] > 0)) */ )
		{
			InitialAmount = WP.AmmoAmount[m];
			PrimaryAmmoArray[PrimaryAmmoArray.Length] = InitialAmount;
		}

		if ( Ammo[m] != None )
		{
			addamount = InitialAmount + Ammo[m].AmmoAmount;
			Ammo[m].Destroy();
		}
		else
			addAmount = InitialAmount;

		AddAmmo(addAmount,m);
    }
}

defaultproperties
{
     MagEmptyReloadAnim="reload_striper_empty"
     MagPartialReloadAnim="reload_striper"
     IronIdleAnim="Iron_idle"
     IronBringUp="iron_in"
     IronPutDown="iron_out"
     BayoAttachAnim="Bayonet_on"
     BayoDetachAnim="Bayonet_off"
     BayonetBoneName="bayonet"
     MaxNumPrimaryMags=10
     InitialNumPrimaryMags=10
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=20.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.200000
     FreeAimRotationSpeed=7.500000
     FireModeClass(0)=Class'ROInventory.G41Fire'
     FireModeClass(1)=Class'ROInventory.G41MeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.400000
     CurrentRating=0.400000
     bSniping=True
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'ROInventory.G41Pickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.G41Attachment'
     ItemName="G41 Semi Auto Rifle"
     Mesh=SkeletalMesh'Axis_G41_1st.G41_mesh'
     HighDetailOverlay=Shader'Weapons1st_tex2.Rifles.G41_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
