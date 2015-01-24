---
title: MapShapeLayer
page_title: MapShapeLayer
description: MapShapeLayer
slug: radmap-mapshapelayer
tags: mapshapelayer
published: True
position: 1
---

# MapShapeLayer

## MapShapeLayer Properties

> The **MapShapeLayer** class inherits from the **MapLayer** class - [See the inherited properties]({%slug radmap-layers-overview%}).

The **MapShapeLayer** class exposes the following poperties:

* **[Source]({%slug radmap-datasource%})** (IShapeDataSource): Gets or sets the **IShapeDataSource** implementation that provides the shapes definition.
* **[ShapeColorizer]({%slug radmap-colorizers%})** (MapShapeColorizer): Gets or sets the **MapShapeColorizer** instance that is used to provide context-based colorization of the visualized shapes, based on their attribute data.
* **IsSelectionEnabled** (bool): Gets or sets a value indicating whether the shapes within the layer may be manipulated by a **[MapShapeSelectionBehavior]({%slug radmap-behaviors-mapshapeselectionbehavior%})** instance.
* **IsPointerOverEnabled** (bool): Gets or sets a value indicating whether the shapes within the layer may be manipulated by a **[MapShapePointerOverBehavior]({%slug radmap-behaviors-mapshapepointeroverbehavior%})** instance.
* **ShapeStyle** (D2DShapeStyle): Gets or sets the **D2DShapeStyle** instance that defines the appearance of all the shapes that are currently in **ShapeUIState.Normal**state.
* **ShapePointerOverStyle** (D2DShapeStyle): Gets or sets the **D2DShapeStyle** instance that defines the appearance of all the shapes that are currently in **ShapeUIState.PointerOver**state.
* **ShapeSelectedStyle** (D2DShapeStyle): Gets or sets the **D2DShapeStyle** instance that defines the appearance of all the shapes that are currently in **ShapeUIState.Selected** state.
* **ShapeStyleSelector** (MapShapeStyleSelector): Gets or sets the **MapShapeStyleSelector** instance that may be used to dynamically style a shape based on its attributes.
* **ShapeLabelAttributeName** (string): Gets or sets the name of the attribute, as specified by the *.dbf file, that points to the value set to each Shape as its label.
* **[ShapeLabelStyle]({%slug radmap-labelstyling%})** (D2DTextStyle): Gets or sets the **D2DTextStyle** instance that defines the appearance of each label, displayed by the visualized shapes.
* **ShapeLabelLayoutStrategy** (MapShapeLabelLayoutStrategy): Gets or sets the **MapShapeLabelLayoutStrategy** instance that may be used to customize the layout of each shape's label.
* **IsToolTipEnabled** (bool): Gets or sets a value indicating whether the shapes within the layer may be manipulated by a **[MapShapeToolTipBehavior]({%slug radmap-behaviors-mapshapetooltipbehavior%})** instance.
* **ShapeToolTipAttributeName** (string): Gets or sets the name of the attribute, as specified by the *.dbf file, that points to the value of each Shape that is used to display a tooltip for the shape.

Here is an example of how to add a **MapShapeLayer** to the **RadMap**. You will need *.shp and *.dbf (optional) files added to your project.

	<telerikMap:RadMap>
	    <telerikMap:MapShapeLayer 
	        IsSelectionEnabled="True"
	        IsToolTipEnabled="False"
	        ShapeLabelAttributeName="ADMIN_NAME">
	        <telerikMap:MapShapeLayer.Source>
	            <telerikMap:ShapefileDataSource 
	                SourceUriString="ms-appx:///Data/global.shp"
	                DataSourceUriString="ms-appx:///Data/global.dbf"/>
	        </telerikMap:MapShapeLayer.Source>
	    </telerikMap:MapShapeLayer>
	</telerikMap:RadMap>

# See Also

 * [Layers Overview]({%slug radmap-layers-overview%})
 * [Data Source]({%slug radmap-datasource%})
 * [Labels]({%slug radmap-labels%})
 * [Shape Colorizers]({%slug radmap-colorizers%})
 * [Shape Styling]({%slug radmap-shapestyling%})
