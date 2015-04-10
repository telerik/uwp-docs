---
title: HexHubTile
page_title: HexHubTile
description: HexHubTile
slug: radhubtile-radhexhubtile
tags: hex, hexhubtile
published: True
position: 4
---

# HexHubTile

![RadHexHubTile](images/hexhubtile.png)

Here's a list of the **RadHexHubTile** properties:

* **ImageSource** (ImageSource): Gets or sets the source of the image.
* **Length** (double): Gets or sets the longest dimension of the hexagon.
* **Orientation** (HexOrientation): Gets or sets the orientation of the hexagon. {Flat, Angled}
* **StrokeThickness** (double): Gets or sets the thickness of the hexagon border.

![HexOrientation](Images/hex-orientation.png)

> The **RadHexHubTile** control inherits from the **HubTileBase** class - see the inherited properties [here]({%slug adhubtile-properties%}).

## Example

	<telerikPrimitives:RadHexHubTile Background="#3E73A7" BorderBrush="#99FFFFFF" StrokeThickness="5" IsFrozen="False" ImageSource="ms-appx:///Images/image.jpg">
	    <telerikPrimitives:RadHexHubTile.TitleTemplate>
	        <DataTemplate>
	            <TextBlock Text="Title" Margin="0 70 0 0" FontSize="20" FontWeight="Bold"/>
	        </DataTemplate>
	    </telerikPrimitives:RadHexHubTile.TitleTemplate>
	    <telerikPrimitives:RadHexHubTile.BackContentTemplate>
	        <DataTemplate>
	            <TextBlock Text="Back" FontSize="20" FontWeight="Bold"/>
	        </DataTemplate>
	    </telerikPrimitives:RadHexHubTile.BackContentTemplate>
	</telerikPrimitives:RadHexHubTile>
