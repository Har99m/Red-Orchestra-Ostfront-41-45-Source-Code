//-----------------------------------------------------------
// ROTeamPickupMsg
// untested
// a msg sent to a player in case he tries to pickup an item
// set for the other team.
// by worluk 2008
//
//-----------------------------------------------------------
class ROTeamPickupMsg extends LocalMessage;

var(Messages) localized string WrongTeam;

static function string GetString(
    optional int Switch,
    optional PlayerReplicationInfo RelatedPRI_1,
    optional PlayerReplicationInfo RelatedPRI_2,
    optional Object OptionalObject
    )
{

    return default.WrongTeam;


}

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
    WrongTeam="You cannot pick up this item"
    bBeep=false
    bFadeMessage=true
    bIsUnique=false
    DrawColor=(R=214,G=28,B=36,A=255)
    FontSize=2
    LifeTime=3
    PosX=0.5
    PosY=0.75
}
