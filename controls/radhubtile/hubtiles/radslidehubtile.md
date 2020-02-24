---
title: SlideHubTile
page_title: SlideHubTile
description: Check our &quot;SlideHubTile&quot; documentation article for RadHubTile for UWP control.
slug: radhubtile-radslidehubtile
tags: slidehubtile
published: True
position: 2
---

# SlideHubTile

## Properties

Here's a list of the RadSlideHubTile properties:

* BottomContent (object): Gets or sets the front content of the tile. Typically this will be a picture but it may be any arbitrary content.
* BottomContentTemplate (DataTemplate): Gets or sets the DataTemplate that is used to visualize the BottomContent property.
* TopContent (object): Gets or sets the secondary front content of the tile. Typically this will be a picture but it may be any arbitrary content.
* TopContentTemplate (DataTemplate): Gets or sets the DataTemplate that is used to visualize the TopContent property.

## Example

The following example demonstrates how to set images to the BottomContent and TopContent properties and make them flip every one second:

	<telerik:RadSlideHubTile UpdateInterval="0:0:1">
	    <telerik:RadSlideHubTile.BottomContent>
	        <Image Source="Sydney.jpg"></Image>
	    </telerik:RadSlideHubTile.BottomContent>
	    <telerik:RadSlideHubTile.TopContent>
	        <Image Source="Vancouver.jpg"></Image>
	    </telerik:RadSlideHubTile.TopContent>
	</telerik:RadSlideHubTile>

Result:

![Rad Hub Tile-Hub Tile Example](images/RadHubTile-SlideHubTileExample.png)