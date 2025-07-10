//===================================================================
// ROPTRDbase
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Russian PTRD anti tank rifle
//===================================================================
class PTRDWeapon extends ROBipodWeapon;

#exec OBJ LOAD FILE=..\Animations\Allies_Ptrd_1st.ukx

// Overriden because we don't want to allow reloading unless the weapon is out of
// ammo
simulated function bool AllowReload()
{
    if( AmmoAmount(0) > 0 )
    {
		return false;
	}

	return super.AllowReload();
}

// Implemented in various states to show whether the weapon is busy performing
// some action that normally shouldn't be interuppted. Overriden because we
// have no melee attack
simulated function bool IsBusy()
{
	return false;
}

simulated function ROIronSights()
{
	Deploy();
}

simulated function AnimEnd(int channel)
{
    local name anim;
    local float frame, rate;

    GetAnimParams(0, anim, frame, rate);

    if (ClientState == WS_ReadyToFire)
    {
        // Every time the PTRD fires its out of ammo, so play the empty animation
		if (anim == FireMode[0].FireAnim )
        {
            LoopAnim(IronIdleEmptyAnim, IdleAnimRate, 0.2 );
        }
        else if (anim == FireMode[1].FireAnim)
        {
            LoopAnim(IronIdleEmptyAnim, IdleAnimRate, 0.2 );
        }
        else
        {
        	super.AnimEnd(channel);
        }
    }
}

// Overridden so we don't play idle empty anims after a reload
simulated state Reloading
{
	simulated function PlayIdle()
	{
		if( Instigator.bBipodDeployed  )
	    {
			LoopAnim(IronIdleAnim, IdleAnimRate, 0.2 );
	    }
		else
	    {
			LoopAnim(IdleAnim, IdleAnimRate, 0.2 );
	    }
	}
}

simulated function PlayIdle()
{
	if( Instigator.bBipodDeployed )
    {
	    if( AmmoAmount(0) > 0 )
	    {
			LoopAnim(IronIdleAnim, IdleAnimRate, 0.2 );
		}
		else
		{
			LoopAnim(IronIdleEmptyAnim, IdleAnimRate, 0.2 );
		}
    }
	else
    {
	    if( AmmoAmount(0) > 0 )
	    {
			LoopAnim(IdleAnim, IdleAnimRate, 0.2 );
		}
		else
		{
			LoopAnim(IdleEmptyAnim, IdleAnimRate, 0.2 );
		}
    }
}

simulated function Fire(float F)
{
    if ( Level.NetMode != NM_DedicatedServer && Instigator.bBipodDeployed)
    {
       if (!HasAmmo())
       {
          ROManualReload();
          return;
       }
    }

    super.Fire(F);
}

defaultproperties
{
     IdleToBipodDeploy="Rest_2_Bipod"
     BipodDeployToIdle="Bipod_2_Rest"
     IdleToBipodDeployEmpty="Rest_2_Bipod_Empty"
     BipodDeployToIdleEmpty="Bipod_2_Rest_Empty"
     MagEmptyReloadAnim="Reload"
     IronIdleAnim="Bipod_Idle"
     IronBringUp="Rest_2_Bipod"
     IronPutDown="Bipod_2_Rest"
     IdleEmptyAnim="Rest_Idle_Empty"
     IronIdleEmptyAnim="Bipod_Idle_Empty"
     SprintStartEmptyAnim="Sprint_Start_Empty"
     SprintLoopEmptyAnim="Sprint_Middle_Empty"
     SprintEndEmptyAnim="Sprint_End_Empty"
     CrawlForwardEmptyAnim="crawlF"
     CrawlBackwardEmptyAnim="crawlB"
     CrawlStartEmptyAnim="crawl_in"
     CrawlEndEmptyAnim="crawl_out"
     SelectEmptyAnim="Draw_empty"
     PutDownEmptyAnim="put_away_empty"
     MaxNumPrimaryMags=20
     InitialNumPrimaryMags=15
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=35.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.350000
     FireModeClass(0)=Class'ROInventory.PTRDFire'
     FireModeClass(1)=Class'ROInventory.PTRDFire'
     IdleAnim="Rest_Idle"
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.400000
     CurrentRating=0.400000
     bSniping=True
     DisplayFOV=70.000000
     PickupClass=Class'ROInventory.PTRDPickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.PTRDAttachment'
     ItemName="PTRD AT Rifle"
     Mesh=SkeletalMesh'Allies_Ptrd_1st.PTRD41_Mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Rifles.PTRD_S'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
