//-----------------------------------------------------------
// Teambased Pickup
// untested
// allows to specify a team which is able to pickup this weapon
// by worluk 2008
//
//-----------------------------------------------------------
class TeamPickup extends ROPanzerFaustPickup;

enum ROSideIndex
{
	AXIS,
	ALLIES,
	NEUTRAL  	// either side can use this vehicle
};

var() ROSideIndex	TeamNum;



auto state Pickup
{
function UsedBy( Pawn user )
{
   log("im awesome");
   log("PlayerTeam: " $ user.PlayerReplicationInfo.Team.TeamIndex);
   log("TeamNum: " $ TeamNum);
  if(user.PlayerReplicationInfo.Team.TeamIndex!=TeamNum && TeamNum != 2)
  {
     user.ReceiveLocalizedMessage(class'ROTeamPickupMsg');
     return;
  }
  super.UsedBy(user);
}
}

DefaultProperties
{

TeamNum=AXIS

}
