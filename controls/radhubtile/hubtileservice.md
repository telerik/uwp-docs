---
title: HubTile Service
page_title: HubTile Service
description: HubTile Service
slug: radhubtile-hubtileservice
tags: hubtile,service
published: True
position: 4
---

# HubTile Service

HubTileService provides the ability to group hub tiles with a group tag and to freeze or unfreeze groups of hub tiles.

## Properties

* **GroupTag** (attached property): Identifies the GroupTag attached property.
* **GetGroupTag**: Gets the group tag of the provided hub tile.
* **SetGroupTag**: Sets the group tag of the specified hub tile to the specified value.
* **FreezeGroup**: Freezes a group of hub tiles.
* **UnfreezeGroup**: Unfreezes a group of hub tiles.

## Example

Here's an example using HubTileService:

	<telerik:RadSlideHubTile UpdateInterval="0:0:1" VerticalAlignment="Top" telerik:HubTileService.GroupTag="firstGroup"  >
	    <telerik:RadSlideHubTile.TopContent>
	        <TextBlock Text="firstTopContent"/>
	    </telerik:RadSlideHubTile.TopContent>
	    <telerik:RadSlideHubTile.BottomContent>
	        <TextBlock Text="firstBottomContent"/>
	    </telerik:RadSlideHubTile.BottomContent>
	</telerik:RadSlideHubTile>
	<telerik:RadSlideHubTile UpdateInterval="0:0:1" x:Name="secondHubTile" telerik:HubTileService.GroupTag="secondGroup">
	    <telerik:RadSlideHubTile.TopContent>
	        <TextBlock Text="secondTopContent"/>
	    </telerik:RadSlideHubTile.TopContent>
	    <telerik:RadSlideHubTile.BottomContent>
	        <TextBlock Text="secondBottomContent"/>
	    </telerik:RadSlideHubTile.BottomContent>
	</telerik:RadSlideHubTile>
	<telerik:RadSlideHubTile UpdateInterval="0:0:1" VerticalAlignment="Bottom" telerik:HubTileService.GroupTag="firstGroup">
	    <telerik:RadSlideHubTile.TopContent>
	        <TextBlock Text="thirdTopContent"/>
	    </telerik:RadSlideHubTile.TopContent>
	    <telerik:RadSlideHubTile.BottomContent>
	        <TextBlock Text="thirdBottomContent"/>
	    </telerik:RadSlideHubTile.BottomContent>
	</telerik:RadSlideHubTile>

1. First, we freeze the HubTiles with GroupTag = "firstGroup"

		HubTileService.FreezeGroup("firstGroup");

1. Then, we get the GroupTag of the second HubTile and freeze it.

		var groupTag = HubTileService.GetGroupTag(secondHubTile);
		HubTileService.FreezeGroup(groupTag);
