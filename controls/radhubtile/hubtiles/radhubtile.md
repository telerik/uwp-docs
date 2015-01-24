---
title: HubTile
page_title: HubTile
description: HubTile
slug: radhubtile-radhubtile
tags: hubtile
published: True
position: 1
---

# HubTile

**RadHubTile** is the most commonly used tile. It consists of an icon and a title, a notification and a message beside it.

## Properties

* **Message** (object): Gets or sets the message content that is displayed in the top-left corner of the control.
* **MessageTemplate** (DataTemplate): Gets or sets the DataTemplate that is used to visualize the Message property.
* **Notification** (object): Gets or sets the additional information (notification) displayed on the tile. Typically this may be the Message Count and is displayed in the bottom-right corner of the control.
* **NotificationTemplate** (DataTemplate): Gets or sets the DataTemplate that is used to visualize the Notification property.
* **ImageSource** (ImageSource): Gets or sets the source of the tile image.

## Example

The following example shows the positioning of some of these properties in a RadHubTile.

	<telerik:RadHubTile Title="Title" Message="Message" Notification="Notificiation" ImageSource="HubTileImageSource.png" />

![Rad Hub Tile-Hub Tile Example](images/RadHubTile-HubTileExample.png)