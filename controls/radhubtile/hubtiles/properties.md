---
title: Basic
page_title: Basic
description: Check our &quot;Basic&quot; documentation article for RadHubTile for UWP control.
slug: radhubtile-properties
tags: basic
published: True
position: 0
---

# Basic Properties

* **Title** (object): Gets or sets the Title which is displayed in the bottom-left corner of the control.
* **TitleTemplate** (DataTemplate): Gets or sets the DataTemplate that is used to visualize the Title property.
* **Command** (ICommand): Gets or sets a command that will be executed when the hub tile is tapped.
* **CommandParameter** (object): Gets or sets the command parameter that will be passed to the command assigned to the Command property.
* **IsFrozen** (bool): Gets or sets the IsFrozen property. Freezing a RadHubTile means that it will cease to periodically update itself, for example when it is off screen.
* **UpdateInterval** (TimeSpan): Gets or sets the UpdateInterval where "0:0:1" is 1 second. This interval determines how often the tile will update its visual states when it is not frozen.
* **BackContent** (object): Gets or sets the back content of the tile. When the back content is set, the tile flips with a swivel animation to its back side and periodically flips between its back and front states.
* **BackContentTemplate** (DataTemplate): Gets or sets the DataTemplate that is used to visualize the BackContent property.