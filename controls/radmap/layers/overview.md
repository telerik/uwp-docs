---
title: Overview
page_title: Overview
description: Check our &quot;Overview&quot; documentation article for RadMap for UWP control.
slug: radmap-layers-overview
tags: overview
published: True
position: 0
---

# Overview

The **RadMap** control visualizes spatial data using *layered architecture*. It could display spatial data points (e.g. location of cities), polylines (e.g. road connections), or polygons (shape of countries or continents) in a *geographic coordinate system*. In this coordinate system, a point on the surface of the earth is defined using latitudes and longitudes.

* **Latitude**: This is measured as the angle from the equatorial plane to the line drawn from the center of the earth to the point on the surface. Usually latitude values range from 90° (toward the North Pole and suffixed with "N") to -90° (towards the South Pole and suffixed with "S").
* **Longitude**: This is measured on the equatorial plane and is defined as the angle between the line drawn from the center of the earth to the point and the line drawn from center of the earth to the prime meridian. Usually the longitude values range from 180° (to the east of prime meridian and suffixed with "E") to -180° (to the west of prime meridian and suffixed with "W").

![Rad Map-Geographic Coordinate System](images/RadMap-GeographicCoordinateSystem.png)

The position of the spatial data is described by the **Location** structure, that has the following properties:

* **Latitude** (double): Gets the latitude value of the location. The value should be between -90° and 90°.
* **Longitude** (double): Gets the longitude value of the location. The value should be between -180° and 180°.

The **RadMap** control could use two types of layers:

* **[MapShapeLayer]({%slug radmap-mapshapelayer%})**: Uses a shape file as source.
* **[MapUserLayer]({%slug radmap-mapuserlayer%})**:Uses a collection of shapes (any FrameworkElement) in a geographic context defined by the user.

Other features of the layers are:

* The **MapShapeLayer** can display [labels]({%slug radmap-labels%}) for the contained shapes. The labels support position and [style]({%slug radmap-labelstyling%}) customization.
* The layers support [common shape styling]({%slug radmap-shapestyling%}) and [colorization]({%slug radmap-colorizers%}).

## MapLayer Class

All types of layers that the map can use inherit from the **MapLayer** abstract class. It exposes the following properties:

* **Bounds** (LocationRect): Gets the bounding rectangle of the layer in geographical coordinates.

# See Also

* [MapShapeLayer]({%slug radmap-mapshapelayer%})
* [MapUserLayer]({%slug radmap-mapuserlayer%})
