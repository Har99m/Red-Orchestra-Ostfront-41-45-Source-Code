//==============================================================================
//	Created on: 08/15/2003
//	Base class for all UT2004 GUIPages
//
//	Written by Ron Prestenback
//	© 2003, Epic Games, Inc.  All Rights Reserved
//==============================================================================
class UT2K4GUIPage extends GUIPage
	abstract;

var Sound PopInSound, SlideInSound, FadeInSound, BeepSound;

defaultproperties
{
     PopInSound=Sound'ROMenuSounds.MainMenu.OptionIn'
     SlideInSound=Sound'ROMenuSounds.MainMenu.GraphSlide'
     FadeInSound=Sound'ROMenuSounds.MainMenu.CharFade'
     BeepSound=Sound'ROMenuSounds.Generic.msfxMouseClick'
     WinTop=0.375000
     WinHeight=0.500000
}
