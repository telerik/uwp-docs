---
title: Properties And Configuration
page_title: Properties And Configuration
description: Check our &quot;Properties And Configuration&quot; documentation article for RadMap for UWP control.
slug: radmap-propertiesandconfiguration
tags: properties,and,configuration
published: True
position: 2
---

# Properties And Configuration

## RadMap Properties

The **RadMap** control exposes the following properties:

* **Center** (Location): Gets or sets a value that represents the logical center of the map.
* **ZoomLevel** (double): Gets or sets a value that represents the current zoom level of the map.
* **MaxZoomLevel** (double): Gets or sets a value that defines the maximum value the **ZoomLevel** property can reach.
* **MinZoomLevel** (double): Gets or sets a value that defines the minimum value the **ZoomLevel** property can reach.
* **Bounds** (LocationRect): Gets a **LocationRect** instance that defines the geographical boundaries of the currently visible area of the **RadMap** control.
* **[Layers]({%slug radmap-layers-overview%})** (MapLayer): Gets the collection with all the **MapLayer** instances currently available within the map.
* **SpatialReference** (ISpatialReference): Gets the current **ISpatialReference** implementation that is used by the map to visualize the geographical coordinates in the 2-D space.
* **[Behaviors]({%slug radmap-behaviors%})** (MapBehavior): Gets the collection with all the **MapBehavior** instances, registered with the map.
* **[Commands]({%slug radmap-commands%})**: Gets the collection with user-defined commands, associated with the different **CommandId** values.
* **CommandService** (MapCommandService): Gets the **MapCommandService** instance that handles the commanding support in the map.

The **RadMap** control has the following methods:

* **HitTest**
(**Point** location, **MapShapeLayer** shapeLayer): Initiates a hit test on the specified *location* on *shapeLayer* whose shapes will be hit test. Default value is null i.e. hit testing is performed on all layers (starting from the top-most one) and the first positive match is returned.
* **SetView**(**LocationRect** boundingRect): Sets the provided value as the current view of the map.
* **GetLayerForShape**(**IMapShape** shape): Gets the **MapShapeLayer** that the *shape* parameter belongs to.
* **ConvertPhysicalToGeographicCoordinate**(**Location** location): Converts the specified physical point to its geographic equivalent. The provided physical point is relative to the map's TopLeft position.
* **ConvertGeographicToPhysicalCoordinate**(**DoublePoint** location): Converts the specified geographic location to its physical equivalent.

