---
title: Data Source
page_title: Data Source
description: Check our &quot;Data Source&quot; documentation article for RadMap for UWP control.
slug: radmap-datasource
tags: data,source
published: True
position: 4
---

# Data Source

## ShapefileDataSource

The **ShapefileDataSource** class is used by the **Source** of the **[MapShapeLayer]({%slug radmap-mapshapelayer%})** and it specifies how the layer will retireve the data from the shape files. It exposes the following properties:

* **SourceUri** (Uri): Gets or sets the Uri that points to the file to read data from.
* **DataSourceUri** (Uri): Gets or sets the Uri that points to the file, containing the data (attributes) for each shape within the shape file.
* **SourceUriString** (string): Gets or sets the string representation of the **SourceUri** value. Primarily used to enable declarative Uri definition.
* **DataSourceUriString** (string): Gets or sets the string representation of the **DataSourceUri** value. Primarily used to enable declarative Uri definition.
* **Shapes** (MapShapeModelCollection): Gets the collection of **IMapShape** instances that represents the final result of the file processing.
* **AttributesToLoad** (string): Gets or sets the comma-delimited attributes to load from the specified in the **DataSourceUri** file. Useful when the data file contains large amount of attributes and only a small subset of them is required.
* **AttributeValueConverter** (IAttributeValueConverter): Gets or sets the **IAttributeValueConverter** implementation that allows
the user to change the attribute type (e.g. from String to DateTime) or the attribute value explicitly.
* **CoordinateValueConverter** (ICoordinateValueConverter): Gets or sets the **ICoordinateValueConverter** implementation that allows the **Location**
value of each processed shape to be modified externally when the user is trying to visualize an ESRI shapefile that uses projection different from Mercator;
in order RadMap to visualize the content properly, one must implement coordinate converter that transforms the Location values from the other projection to Mercator projection.
* **Encoding** (Encoding): Gets or sets the encoding of the file to read.
* **TransportResolver** (ITransportResolver): Gets or sets the current **ITransportResolver** implementation. Defaults to a **LocalTransportResolver** instance.

>By default the datasource handles only ms-appx and ms-appdata Uri schemes for the **SourceUri** / **DataSourceUri** values (through its LocalTransportResolver implementation); if one needs to load the shp/dbf files in a different manner
(e.g. download the files from internet location and cache them locally on a two-weekly basis), one needs to implement custom **ITransportResolver**.

Here is an example of how to define a **ShapefileDataSource** instance as a StaticResource.

	<telerikMap:ShapefileDataSource 
	    x:Key="dataSource" 
	    SourceUriString="ms-appx:///Data/global.shp"
	    DataSourceUriString="ms-appx:///Data/global.dbf"/>

Now you can use it as a **Source** of a **MapShapeLayer**.

	<telerikMap:RadMap>
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer Source="{StaticResource dataSource}"/>
	    </telerikMap:RadMap.Layers>
	</telerikMap:RadMap>

# See Also

* [MapShapeLayer]({%slug radmap-mapshapelayer%})