//=====================================================
//ROWeaponPickupMessage
// started by Antarian 8/10/03
//
// Copyright (C) 2003 Jeffrey Nakai
//
// Class to show Red Orchestra Weapon Pickup Messages
// These will be displayed when an actor is touching
// a weapon that is lying on the ground
//=====================================================

class ROWeaponPickupMessage extends LocalMessage;

/*var localized string	GetInMessage;
var localized string	GetOutMessage;
var localized string	TooManyCarsMessage;

static function string GetString(
	optional int Switch,
	optional PlayerReplicationInfo RelatedPRI_1,
	optional PlayerReplicationInfo RelatedPRI_2,
	optional Object OptionalObject
	)
{
	switch(Switch)
	{
	case 0:
		return Default.GetInMessage;
		break;

	case 1:
		return Default.GetOutMessage;
		break;

	case 2:
		return Default.TooManyCarsMessage;
		break;
	}
}      */

defaultproperties
{
     bIsUnique=True
     bIsConsoleMessage=False
     DrawColor=(G=128,R=128)
     StackMode=SM_Down
     PosY=0.100000
}
