// ====================================================================
//  Class:  UT2K4UI.GUIGFXButton
//
//  Written by Joe Wilcox
//  (c) 2002, Epic Games, Inc.  All Rights Reserved
// ====================================================================

class GUICheckBoxButton extends GUIGFXButton
	Native;

// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)

var()	Material	CheckedOverlay[10];
var()   bool		bAllOverlay;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	local int i;

	Super.InitComponent(MyController, MyOwner);

	for ( i = 0; i < ArrayCount(CheckedOverlay); i++ )
	{
		if ( CheckedOverlay[i] == None )
			CheckedOverlay[i] = Graphic;
	}
}

defaultproperties
{
     CheckedOverlay(0)=Texture'InterfaceArt_tex.Menu.checkBoxX_b'
     CheckedOverlay(1)=Texture'InterfaceArt_tex.Menu.checkBoxX_b'
     CheckedOverlay(2)=Texture'InterfaceArt_tex.Menu.checkBoxX_b'
     CheckedOverlay(3)=Texture'InterfaceArt_tex.Menu.checkBoxX_b'
     CheckedOverlay(4)=Texture'InterfaceArt_tex.Menu.checkBoxX_b'
     Position=ICP_Scaled
     bCheckBox=True
     StyleName="CheckBox"
     bTabStop=True
}
