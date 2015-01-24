---
title: Labels
page_title: Labels
description: Labels
slug: radmap-labels
tags: labels
published: True
position: 5
---

# Labels

You can add a label for each shape in a **[MapShapeLayer]({%slug radmap-mapshapelayer%})** by setting the **ShapeLabelAttributeName** property of the layer to an attribute from the *.dbf file specified in the [Source]({%slug radmap-datasource%}) property of the layer.

Here is an example demonstrating how to add labels to the shapes.

	<telerikMap:MapShapeLayer ShapeLabelAttributeName="ADMIN_NAME">
	    <telerikMap:MapShapeLayer.Source>
	        <telerikMap:ShapefileDataSource
	            SourceUriString="ms-appx:///Data/global.shp"
	            DataSourceUriString="ms-appx:///Data/global.dbf"/>
	    </telerikMap:MapShapeLayer.Source>
	</telerikMap:MapShapeLayer>

In the [Label Styling]({%slug radmap-labelstyling%}) sections you can find more information about customizing the appearance of the labels.

## Positioning the Labels

The labels are positioned at the center of the shape they refer to, but sometimes the shapes have complex forms and their center is not the best place to render the label.
In these cases, can use the **ShapeLabelLayoutStrategy** property of the **MapShapeLayer** class to adjust the label's position.
The following example demonstrates how you can do that.

1. First, you have to create a class that inherits from the **MapShapeLabelLayoutStrategy** class and override its **ProcessCore** method.

		public class CustomLabelPositionStrategy : MapShapeLabelLayoutStrategy
		{
		    protected override void ProcessCore(MapShapeLabelLayoutContext context, MapShapeLayer container)
		    {
		        var name = context.Shape.GetAttribute("ADMIN_NAME");
		        if (name.ToString() == "England")
		        {
		            context.RenderLocation = new Location { Latitude = 52.5, Longitude = -2 };
		        }
		    }
		}

1. Then set the **ShapeLabelLayoutStrategy** property of the **MapShapeLayer** to an instance of the created class.

		<telerikMap:RadMap Background="#2EC4FF">
		    <telerikMap:RadMap.Layers>
		        <telerikMap:MapShapeLayer ShapeLabelAttributeName="ADMIN_NAME">
		
		            <telerikMap:MapShapeLayer.ShapeLabelLayoutStrategy>
		                <local:CustomLabelPositionStrategy/>
		            </telerikMap:MapShapeLayer.ShapeLabelLayoutStrategy>
		
		            <telerikMap:MapShapeLayer.Source>
		                <telerikMap:ShapefileDataSource SourceUriString="ms-appx:///Data/global.shp" DataSourceUriString="ms-appx:///Data/global.dbf"/>
		            </telerikMap:MapShapeLayer.Source>
		            <telerikMap:MapShapeLayer.ShapeColorizer>
		                <telerikMap:DesaturationColorizer BaseColor="#FFBD2E" AttributeName="SQKM_ADMIN" From="1" To="0" RangeCount="10">
		                    <telerikMap:DesaturationColorizer.RangeDistribution>
		                        <telerikMap:LogarithmicRangeDistribution/>
		                    </telerikMap:DesaturationColorizer.RangeDistribution>
		                </telerikMap:DesaturationColorizer>
		            </telerikMap:MapShapeLayer.ShapeColorizer>
		        </telerikMap:MapShapeLayer>
		    </telerikMap:RadMap.Layers>
		</telerikMap:RadMap>

Here is comparison between the default label position and the custom label position.

![Rad Map-Shape Label Layout Strategy](images/RadMap-ShapeLabelLayoutStrategy.png)

# See Also

 * [MapShapeLayer]({%slug radmap-mapshapelayer%})
