---
title: MapPanAndZoomBehavior
page_title: MapPanAndZoomBehavior
description: MapPanAndZoomBehavior
slug: radmap-behaviors-mappanandzoombehavior
tags: mappanandzoombehavior
published: True
position: 1
---

# MapPanAndZoomBehavior

Represents a **MapBehavior** implementation that handles Pinch and Drag gestures and manipulates the relevant properties of the associated **RadMap** instance. The **MapPanAndZoomBehavior** exposes the following properties:

>The **MapPanAndZoomBehavior** class inherits from the **MapBehavior** class - [See the inherited properties]({%slug radmap-behaviors%}).

* **IsPanEnabled** (bool): Gets or sets a value indicating whether the Translation manipulation is handled by the behavior.
* **ZoomMode** (MapZoomMode): Gets or sets a value that specifies how a Pinch gesture is processed by the behavior. Here are the available values:
* **ZoomToPoint**: The map is zoomed to the contact point with the primary pointer that triggered the input.
* **ZoomToCenter**: The map is zoomed its center regardless of the primary pointer that triggered the input.
* **None** The map can not be zoomed through user input.
* **DoubleTapAction** (MapDoubleTapAction): Gets or sets a value indicating how the double tap action is processed. Here are the available values:
* **Reset**: The map is reset to initial state (**Center** and **ZoomLevel** properties are reset to initial values).
* **ZoomToPoint**: The map is zoomed to the contact point with the primary pointer that triggered the input.
* **None**: The map does not handle the double tap gesture.

Here is an example that demonstrates how to add a **MapPanAndZoomBehavior** to the **RadMap** control.

	<telerikMap:RadMap>
	    <telerikMap:RadMap.Behaviors>
	        <telerikMap:MapPanAndZoomBehavior ZoomMode="ZoomToCenter" DoubleTapAction="Reset"/>
	    </telerikMap:RadMap.Behaviors>
	</telerikMap:RadMap>

# See Also

* [Behaviors Overview]({%slug radmap-behaviors%})
