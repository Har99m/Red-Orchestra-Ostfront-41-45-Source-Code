//=============================================================================
// G43ScopedWeapon
//=============================================================================
// Weapon class for the German G43 semi auto sniper rifle
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class G43ScopedWeapon extends ROSniperWeapon;

#exec OBJ LOAD FILE=..\Animations\Axis_G43_1st.ukx

// Overriden to prevent the exploit of freezing your animations after firing
simulated function AnimEnd(int channel)
{
    local name anim;
    local float frame, rate;

    GetAnimParams(0, anim, frame, rate);

    if (ClientState == WS_ReadyToFire)
    {
        if (anim == FireMode[0].FireAnim && HasAnim(FireMode[0].FireEndAnim) && !FireMode[0].bIsFiring )
        {
            PlayAnim(FireMode[0].FireEndAnim, FireMode[0].FireEndAnimRate, FastTweenTime);
        }
        else if (anim == ROProjectileFire(FireMode[0]).FireIronAnim && !FireMode[0].bIsFiring )
        {
            PlayIdle();
        }
        else if (anim== FireMode[1].FireAnim && HasAnim(FireMode[1].FireEndAnim))
        {
            PlayAnim(FireMode[1].FireEndAnim, FireMode[1].FireEndAnimRate, 0.0);
        }
        else if ((FireMode[0] == None || !FireMode[0].bIsFiring) && (FireMode[1] == None || !FireMode[1].bIsFiring))
        {
            PlayIdle();
        }
    }
}

// Overriden to prevent the exploit of freezing your animations after firing
simulated event StopFire(int Mode)
{
	if ( FireMode[Mode].bIsFiring )
	    FireMode[Mode].bInstantStop = true;
    if (Instigator.IsLocallyControlled() && !FireMode[Mode].bFireOnRelease)
    {
     	if( !IsAnimating(0) )
     	{
     		PlayIdle();
     	}
    }

    FireMode[Mode].bIsFiring = false;
    FireMode[Mode].StopFiring();
    if (!FireMode[Mode].bFireOnRelease)
        ZeroFlashCount(Mode);
}

defaultproperties
{
     lenseMaterialID=4
     scopePortalFOVHigh=13.000000
     scopePortalFOV=7.000000
     scopePitch=-10
     scopeYaw=40
     scopeYawHigh=35
     TexturedScopeTexture=Texture'Weapon_overlays.Scopes.Ger_sniperscope_overlay'
     MagEmptyReloadAnim="reload_empty"
     MagPartialReloadAnim="reload_half"
     IronIdleAnim="Scope_Idle"
     IronBringUp="Scope_In"
     IronPutDown="Scope_Out"
     MaxNumPrimaryMags=7
     InitialNumPrimaryMags=7
     bPlusOneLoading=True
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=45.000000
     IronSightDisplayFOVHigh=25.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.200000
     PlayerFOVZoom=21.000000
     FireModeClass(0)=Class'ROInventory.G43ScopedFire'
     FireModeClass(1)=Class'ROInventory.G34MeleeFire'
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
     PickupClass=Class'ROInventory.G43ScopedPickup'
     BobDamping=1.600000
     AttachmentClass=Class'ROInventory.G43ScopedAttachment'
     ItemName="G43 Semi Auto Rifle"
     Mesh=SkeletalMesh'Axis_G43_1st.g43_scoped_mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.Rifles.g43_sniper_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
