---
title: MapShapeSelectionBehavior
page_title: MapShapeSelectionBehavior
description: Check our &quot;MapShapeSelectionBehavior&quot; documentation article for RadMap for UWP control.
slug: radmap-behaviors-mapshapeselectionbehavior
tags: mapshapeselectionbehavior
published: True
position: 3
---

# MapShapeSelectionBehavior

Represents a **MapBehavior** implementation that allows map shapes from different **MapShapeLayer** instances to be selected. The **MapShapeSelectionBehavior** exposes the following properties:

>The **MapShapeSelectionBehavior** class inherits from the **MapBehavior** class - [See the inherited properties]({%slug radmap-behaviors%}).

* **SelectedShapes** (IEnumerable<IMapShape>): Gets the currently selected **IMapShape** instances.
* **SelectedShape** (IMapShape): Gets or sets the currently selected **IMapShape** instance. When multiple selection is enabled, this value is set to the first selected shape.
* **SelectionMode** (MapShapeSelectionMode): Gets or sets a value that defines how the user input affects the current selection. Here are the available values:
* **None**: No selection is allowed.
* **Single**: Single-shape selection is allowed. A shape is selected when tapped and deselected if tapped again. If a new shape is tapped, the previously selected shape is deselected.
* **MultiSimple**: Multiple-shape selection is allowed. A shape is selected when tapped and deselected if tapped again.
* **MultiExtended**: Multiple-shape selection is allowed. Multiple shapes may be selected only if the Control modifier key is pressed.

Here is an example that demonstrates how to add a **MapShapeSelectionBehavior** to the **RadMap** control.

	<telerikMap:RadMap>
	    <telerikMap:RadMap.Behaviors>
	        <telerikMap:MapShapeSelectionBehavior SelectionMode="MultiSimple"/>
	    </telerikMap:RadMap.Behaviors>
	</telerikMap:RadMap>

# See Also

 * [Behaviors Overview]({%slug radmap-behaviors%})
