//=============================================================================
// ROPawnSoundGroup
//=============================================================================
// Player sounds. Some functionality copied from xPawnSoundGroup
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 John Gibson
//=============================================================================

class ROPawnSoundGroup extends Object
    abstract;

var() array<Sound>  Sounds;
var() sound         HeadShotDeathSoundGroup;
var() sound         UpperBodyShotDeathSoundGroup;
var() sound         LowerBodyShotDeathSoundGroup;
var() sound         LimbShotDeathSoundGroup;
var() sound         GenericDeathSoundGroup;
var() sound         FallingPainSoundGroup;
var() sound         WoundingPainSoundGroup;

var() Sound         LandSounds[20]; // Indexed by ESurfaceTypes (sorry about the literal).
var() Sound         JumpSounds[20]; // Indexed by ESurfaceTypes (sorry about the literal).

Enum ESoundType
{
    EST_Land,
    EST_CorpseLanded,
    EST_HitUnderWater,
    EST_Jump,
    EST_LandGrunt,
    EST_Gasp,
    EST_Drown,
    EST_BreatheAgain,
	EST_TiredJump,
    EST_Dodge,
    EST_DoubleJump,
    EST_DiveLand
};

static function Sound GetHitSound(optional class<DamageType> DamageType)
{
    //If they are taking damage because they fell, return a falling pain sound
    if ( DamageType.Name == 'Fell' )
        return default.FallingPainSoundGroup;

    //Otherwise, return a wounding pain sound
    return default.WoundingPainSoundGroup;
}

static function Sound GetDeathSound(optional int HitIndex)
{
    //Check for a Head shot
    if( HitIndex == 1 )
        return default.HeadShotDeathSoundGroup;
    //Check for Upper Torso shot
    else if( HitIndex == 2 )
        return default.UpperBodyShotDeathSoundGroup;
    //Check for Lower Torso shot
    else if( HitIndex == 3 )
        return default.LowerBodyShotDeathSoundGroup;
    //Check for Arm/Hand and Leg/Foot shot
    else if( HitIndex >= 4 && HitIndex <= 15 )
        return default.LimbShotDeathSoundGroup;

    //Hit somewhere without a group, return a generic sound
    return default.GenericDeathSoundGroup;
}

static function Sound GetSound(ESoundType SoundType, optional int SurfaceID)
{
    if( SoundType == EST_Land )
	{
		return default.LandSounds[SurfaceID];
	}
	else if( SoundType == EST_Jump )
	{
	  	return default.JumpSounds[SurfaceID];
	}
	else
	{
        return default.Sounds[int(SoundType)];
    }
}

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     Sounds(0)=SoundGroup'Inf_Player.footsteps.LandDirt'
     Sounds(2)=SoundGroup'Inf_Player.playerhurt.Wounding'
     Sounds(8)=Sound'Inf_Player.footsteps.JumpTired'
     Sounds(11)=SoundGroup'Inf_Player.stances.land_prone'
     HeadShotDeathSoundGroup=SoundGroup'Inf_Player.playerdeath.Headshot'
     UpperBodyShotDeathSoundGroup=SoundGroup'Inf_Player.playerdeath.UpperBodyShot'
     LowerBodyShotDeathSoundGroup=SoundGroup'Inf_Player.playerdeath.LowerBodyShot'
     LimbShotDeathSoundGroup=SoundGroup'Inf_Player.playerdeath.LimbShot'
     GenericDeathSoundGroup=SoundGroup'Inf_Player.playerdeath.Generic'
     FallingPainSoundGroup=SoundGroup'Inf_Player.playerhurt.Falling'
     WoundingPainSoundGroup=SoundGroup'Inf_Player.playerhurt.Wounding'
     LandSounds(0)=SoundGroup'Inf_Player.footsteps.LandDirt'
     LandSounds(1)=SoundGroup'Inf_Player.footsteps.LandAsphalt'
     LandSounds(2)=SoundGroup'Inf_Player.footsteps.LandDirt'
     LandSounds(3)=SoundGroup'Inf_Player.footsteps.LandMetal'
     LandSounds(4)=SoundGroup'Inf_Player.footsteps.LandWood'
     LandSounds(5)=SoundGroup'Inf_Player.footsteps.LandGrass'
     LandSounds(6)=SoundGroup'Inf_Player.footsteps.LandDirt'
     LandSounds(7)=SoundGroup'Inf_Player.footsteps.LandSnowRough'
     LandSounds(8)=SoundGroup'Inf_Player.footsteps.LandSnowHard'
     LandSounds(9)=SoundGroup'Inf_Player.footsteps.LandWaterShallow'
     LandSounds(10)=SoundGroup'Inf_Player.footsteps.LandDirt'
     LandSounds(11)=SoundGroup'Inf_Player.footsteps.LandDirt'
     LandSounds(12)=SoundGroup'Inf_Player.footsteps.LandAsphalt'
     LandSounds(13)=SoundGroup'Inf_Player.footsteps.LandWood'
     LandSounds(14)=SoundGroup'Inf_Player.footsteps.LandMud'
     LandSounds(15)=SoundGroup'Inf_Player.footsteps.LandMetal'
     LandSounds(16)=SoundGroup'Inf_Player.footsteps.LandAsphalt'
     LandSounds(17)=SoundGroup'Inf_Player.footsteps.LandDirt'
     LandSounds(18)=SoundGroup'Inf_Player.footsteps.LandDirt'
     LandSounds(19)=SoundGroup'Inf_Player.footsteps.LandDirt'
     JumpSounds(0)=SoundGroup'Inf_Player.footsteps.JumpDirt'
     JumpSounds(1)=SoundGroup'Inf_Player.footsteps.JumpAsphalt'
     JumpSounds(2)=SoundGroup'Inf_Player.footsteps.JumpDirt'
     JumpSounds(3)=SoundGroup'Inf_Player.footsteps.JumpMetal'
     JumpSounds(4)=SoundGroup'Inf_Player.footsteps.JumpWood'
     JumpSounds(5)=SoundGroup'Inf_Player.footsteps.JumpGrass'
     JumpSounds(6)=SoundGroup'Inf_Player.footsteps.JumpDirt'
     JumpSounds(7)=SoundGroup'Inf_Player.footsteps.JumpSnowRough'
     JumpSounds(8)=SoundGroup'Inf_Player.footsteps.JumpSnowHard'
     JumpSounds(9)=SoundGroup'Inf_Player.footsteps.JumpWaterShallow'
     JumpSounds(10)=SoundGroup'Inf_Player.footsteps.JumpDirt'
     JumpSounds(11)=SoundGroup'Inf_Player.footsteps.JumpDirt'
     JumpSounds(12)=SoundGroup'Inf_Player.footsteps.JumpAsphalt'
     JumpSounds(13)=SoundGroup'Inf_Player.footsteps.JumpWood'
     JumpSounds(14)=SoundGroup'Inf_Player.footsteps.JumpMud'
     JumpSounds(15)=SoundGroup'Inf_Player.footsteps.JumpMetal'
     JumpSounds(16)=SoundGroup'Inf_Player.footsteps.JumpAsphalt'
     JumpSounds(17)=SoundGroup'Inf_Player.footsteps.JumpDirt'
     JumpSounds(18)=SoundGroup'Inf_Player.footsteps.JumpDirt'
     JumpSounds(19)=SoundGroup'Inf_Player.footsteps.JumpDirt'
}
