---
title: Shape Colorizers
page_title: Shape Colorizers
description: Shape Colorizers
slug: radmap-colorizers
tags: shape,colorizers
published: True
position: 0
---

# Shape Colorizers

Colorizers provide a convenient way to color the shapes in a layer depending on an attribute value of the shapes. The colorizer uses a set of colors and the shapes are divided in ranges depending on their attribute value and the number of colors that the colorizer uses. You can choose between linear and logarithmic distribution of the ranges. There are two types of colorizers:

* **DesaturationColorizer**: Uses a base color to create a set of desaturated colors. The count of the generated colors depends on the **RangeCount** value.
* **PaletteColorizer**: Uses a collection of colors (**D2DSolidColorBrush** objects).

## Common Properties

Here are listed the properties that are common for all colorizer types:

* **IsProperlyInitialized** (bool): Gets a value indicating whether the colorizer is successfully initialized and has its colorization logic realized.
* **AttributeName** (string): Gets or sets the name of the attribute that identifies a **double** value for each shape. This value is used when defining which color will be applied to the shape.
* **RangeDistribution** (ChoroplethRangeDistribution): Gets or sets the instance that may be used to override the default linear distribution of shape values.
* **ActualRange** (ValueRange<double>): Gets the current range, computed by the colorizer.
* **Ranges** (IEnumerable<ColorRange>): Gets all the ranges computed by the colorizer.

## DesaturationColorizer

Here are listed the properties exposed by the **DesaturationColorizer** class:

* **BaseColor** (Color): Gets or sets the **Color** value from which the rest desaturated values will be generated. This value will be used to color the shapes with maximum values of the **AttributeName** property. Defaults to 7.
* **From** (double): Gets or sets a value between 0 and 1 that specifies the maximum percentage of desaturation that may be applied to the specified **BaseColor** value. A zero means completely white.
* **To** (double): Gets or sets a value between 0 and 1 that specifies the starting desaturation percentage of the **BaseColor** value. 1 means that the first color will be the BaseColor itself.
* **RangeCount** (int): Gets or sets the number of ranges to be generated, based on the computed **ActualRange**.

Here is an example demonstrating how to use a **DesaturationColorizer**.
The shape files contain information about all administrative districts of the world and they are colored based on the area attribute of the districts.
First we will define the colorizer as a static resource:

	<telerikMap:DesaturationColorizer x:Key="DesaturationColorizer" BaseColor="DarkGreen" AttributeName="SQKM_ADMIN" From="1" To="0" RangeCount="10">
	    <telerikMap:DesaturationColorizer.RangeDistribution>
	        <telerikMap:LogarithmicRangeDistribution/>
	    </telerikMap:DesaturationColorizer.RangeDistribution>
	</telerikMap:DesaturationColorizer>

Then we can use the colorizer to set the **ShapeColorizer** property of a map layer.

	<telerikMap:RadMap Background="White" Width="500" Height="300">
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer ShapeColorizer="{StaticResource DesaturationColorizer}">
	            <telerikMap:MapShapeLayer.Source>
	                <telerikMap:ShapefileDataSource SourceUriString="ms-appx:///Data/global.shp" DataSourceUriString="ms-appx:///Data/global.dbf"/>
	            </telerikMap:MapShapeLayer.Source>
	        </telerikMap:MapShapeLayer>
	    </telerikMap:RadMap.Layers>
	</telerikMap:RadMap>

This is the result:

![Rad Map-Desaturation Colorizer](images/RadMap-DesaturationColorizer.png)

## PaletteColorizer

Here are listed the properties exposed by the **PaletteColorizer** class:

>The **D2DBrush** class is defined in the **Telerik.UI.Drawing** namespace.

* **Brushes** (ObservableCollection<D2DBrush>): Gets the collection of **D2DBrush** objects that defines the appearance of each range. The number of ranges is implicitly defined by the count of this collection.
* **RangeStops** (string): Gets or sets a comma separated list of the numeric range stop values for the colorizer to use when generating its associated **ColorRange** instances. This property is optional. If set, it has higher priority than **Brushes** count and the range stops control the number of **ColorRange** instances; if not set, the colorizer will generate the **ColorRange** instances automatically based on the provided **Brushes** count. For example if this property is set to "1, 2.5, 3, 5", the colorizer will generate 3 ranges - [1, 2.5], [2.5, 3], [3, 5].

>In scenarios where **RangeStops** property is set, the shapes that do not belong to any of the explicitly defined ranges are colored using the **Fill** property defined in the **[MapShapeLayers.ShapeStyle]({%slug radmap-shapestyling%})**.

Here is an example demonstrating how to use a **PaletteColorizer**.
The shape files contain information about all administrative districts of the world and they are colored based on the area attribute of the districts.
First we will define the colorizer as a static resource:

	<telerikMap:PaletteColorizer x:Key="PaletteColorizer" AttributeName="SQKM_ADMIN" RangeStops="1, 30000, 100000, 500000, 1000000, 1000000000">
	    <telerikMap:PaletteColorizer.Brushes>
	        <telerikDrawing:D2DSolidColorBrush Color="RoyalBlue"/>
	        <telerikDrawing:D2DSolidColorBrush Color="LimeGreen"/>
	        <telerikDrawing:D2DSolidColorBrush Color="Yellow"/>
	        <telerikDrawing:D2DSolidColorBrush Color="Orange"/>
	        <telerikDrawing:D2DSolidColorBrush Color="Tomato"/>
	    </telerikMap:PaletteColorizer.Brushes>
	</telerikMap:PaletteColorizer>

Then we can use the colorizer to set the **ShapeColorizer** property of a map layer.

	<telerikMap:RadMap Background="White" Width="500" Height="300">
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer ShapeColorizer="{StaticResource PaletteColorizer}">
	            <telerikMap:MapShapeLayer.Source>
	                <telerikMap:ShapefileDataSource SourceUriString="ms-appx:///Data/global.shp" DataSourceUriString="ms-appx:///Data/global.dbf"/>
	            </telerikMap:MapShapeLayer.Source>
	        </telerikMap:MapShapeLayer>
	    </telerikMap:RadMap.Layers>
	</telerikMap:RadMap>

This is the result:

![Rad Map-Palette Colorizer](images/RadMap-PaletteColorizer.png)

# See Also

* [MapShapeLayer]({%slug radmap-mapshapelayer%})
