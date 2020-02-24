---
title: Shape Styling
page_title: Shape Styling
description: Check our &quot;Shape Styling&quot; documentation article for RadMap for UWP control.
slug: radmap-shapestyling
tags: shape,styling
published: True
position: 1
---

# Shape Styling

The **MapShapeLayer** class exposes several properties that define the appearance of the shapes and the labels in different states of the shapes. Each of these properties is of type **D2DShapeStyle**.

>You will need to add the following namspace: **xmlns:telerikDrawing="using:Telerik.UI.Drawing"**, that has definition of the **D2DTextStyle** and **D2DShapeStyle** classes.

## Examples

Below are given several examples that demonstrate how to style the shapes and the labels in different states.

### Styling the Shapes in NormalState

When the shapes are in **Normal** state their appearance is defined by the **ShapeStyle** property of the containing **MapShapeLayer**. Here is an example:

	<telerikMap:RadMap Width="500" Height="300" Background="#A8FEFF">
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer ShapeLabelAttributeName="ADMIN_NAME">
	            <telerikMap:MapShapeLayer.Source>
	                <telerikMap:ShapefileDataSource SourceUriString="ms-appx:///Data/global.shp" DataSourceUriString="ms-appx:///Data/global.dbf"/>
	            </telerikMap:MapShapeLayer.Source>
	            <telerikMap:MapShapeLayer.ShapeStyle>
	                <telerikDrawing:D2DShapeStyle StrokeThickness="1">
	                    <telerikDrawing:D2DShapeStyle.Fill>
	                        <telerikDrawing:D2DSolidColorBrush Color="#A2FF73"/>
	                    </telerikDrawing:D2DShapeStyle.Fill>
	                    <telerikDrawing:D2DShapeStyle.Stroke>
	                        <telerikDrawing:D2DSolidColorBrush Color="#ACCFA5"/>
	                    </telerikDrawing:D2DShapeStyle.Stroke>
	                    <telerikDrawing:D2DShapeStyle.Foreground>
	                        <telerikDrawing:D2DSolidColorBrush Color="#5857BD"/>
	                    </telerikDrawing:D2DShapeStyle.Foreground>
	                </telerikDrawing:D2DShapeStyle>
	            </telerikMap:MapShapeLayer.ShapeStyle>
	        </telerikMap:MapShapeLayer>
	    </telerikMap:RadMap.Layers>
	</telerikMap:RadMap>

Here is the result:

![Rad Map-Styling-Normal State](images/RadMap-Styling-NormalState.png)

### Styling the Shapes in PointerOverState

When the shapes are in **PointerOver** state their appearance is defined by the **ShapePointerOverStyle** property of the containing **MapShapeLayer**. Here is an example:

	<telerikMap:RadMap Width="500" Height="300">
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer ShapeLabelAttributeName="ADMIN_NAME">
	            <telerikMap:MapShapeLayer.Source>
	                <telerikMap:ShapefileDataSource SourceUriString="ms-appx:///Data/global.shp" DataSourceUriString="ms-appx:///Data/global.dbf"/>
	            </telerikMap:MapShapeLayer.Source>
	            <telerikMap:MapShapeLayer.ShapePointerOverStyle>
	                <telerikDrawing:D2DShapeStyle StrokeThickness="1">
	                    <telerikDrawing:D2DShapeStyle.Fill>
	                        <telerikDrawing:D2DSolidColorBrush Color="PaleGreen"/>
	                    </telerikDrawing:D2DShapeStyle.Fill>
	                    <telerikDrawing:D2DShapeStyle.Stroke>
	                        <telerikDrawing:D2DSolidColorBrush Color="Lime"/>
	                    </telerikDrawing:D2DShapeStyle.Stroke>
	                    <telerikDrawing:D2DShapeStyle.Foreground>
	                        <telerikDrawing:D2DSolidColorBrush Color="RoyalBlue"/>
	                    </telerikDrawing:D2DShapeStyle.Foreground>
	                </telerikDrawing:D2DShapeStyle>
	            </telerikMap:MapShapeLayer.ShapePointerOverStyle>
	        </telerikMap:MapShapeLayer>
	    </telerikMap:RadMap.Layers>
	    <telerikMap:RadMap.Behaviors>
	        <telerikMap:MapShapePointerOverBehavior/>
	    </telerikMap:RadMap.Behaviors>
	</telerikMap:RadMap>

Here is the result:

![Rad Map-Styling-Pointer Over State](images/RadMap-Styling-PointerOverState.png)

### Styling the Shapes in SelectedStyle

When the shapes are in **Selected** state their appearance is defined by the **ShapeSelectedStyle** property of the containing **MapShapeLayer**. Here is an example:

	<telerikMap:RadMap Width="500" Height="300">
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer ShapeLabelAttributeName="ADMIN_NAME">
	            <telerikMap:MapShapeLayer.Source>
	                <telerikMap:ShapefileDataSource SourceUriString="ms-appx:///Data/global.shp" DataSourceUriString="ms-appx:///Data/global.dbf"/>
	            </telerikMap:MapShapeLayer.Source>
	            <telerikMap:MapShapeLayer.ShapeSelectedStyle>
	                <telerikDrawing:D2DShapeStyle StrokeThickness="1">
	                    <telerikDrawing:D2DShapeStyle.Fill>
	                        <telerikDrawing:D2DSolidColorBrush Color="PaleGreen"/>
	                    </telerikDrawing:D2DShapeStyle.Fill>
	                    <telerikDrawing:D2DShapeStyle.Stroke>
	                        <telerikDrawing:D2DSolidColorBrush Color="Lime"/>
	                    </telerikDrawing:D2DShapeStyle.Stroke>
	                    <telerikDrawing:D2DShapeStyle.Foreground>
	                        <telerikDrawing:D2DSolidColorBrush Color="RoyalBlue"/>
	                    </telerikDrawing:D2DShapeStyle.Foreground>
	                </telerikDrawing:D2DShapeStyle>
	            </telerikMap:MapShapeLayer.ShapeSelectedStyle>
	        </telerikMap:MapShapeLayer>
	    </telerikMap:RadMap.Layers>
	    <telerikMap:RadMap.Behaviors>
	        <telerikMap:MapShapeSelectionBehavior SelectionMode="MultiSimple"/>
	    </telerikMap:RadMap.Behaviors>
	</telerikMap:RadMap>

Here is the result:

![Rad Map-Styling-Selected State](images/RadMap-Styling-SelectedState.png)

## ShapeStyleSelector

This example demonstrates how to style the shapes in a layer using the **ShapeStyleSelector** property. The regions with names starting with "A" will be colored differently. For the rest of the shapes we will use [colorizer]({%slug radmap-colorizers%}).


1. First, you have to create a custom class that inherits from the **MapShapeStyleSelector** class and override its **SelectStyleCore** method.

		public class CustomShapeStyleSelector : MapShapeStyleSelector
		{
		    protected override void SelectStyleCore(MapShapeStyleContext context, MapShapeLayer container)
		    {
		        var name = context.Shape.GetAttribute("ADMIN_NAME").ToString();
		        if (name.StartsWith("A"))
		        {
		            context.NormalStyle = new D2DShapeStyle()
		            {
		                Fill = new D2DSolidColorBrush() { Color = Colors.OrangeRed },
		                Foreground = new D2DSolidColorBrush() { Color = Colors.Yellow }
		            };
		        }
		    }
		}

1. Then you have to set the **ShapeStyleSelector** property of the layer to an instance of the customstyle selector class.

		<telerikMap:RadMap Background="#2EC4FF" Width="500" Height="300">
		    <telerikMap:RadMap.Layers>
		        <telerikMap:MapShapeLayer ShapeLabelAttributeName="ADMIN_NAME">
		            <telerikMap:MapShapeLayer.ShapeStyleSelector>
		                <local:CustomShapeStyleSelector/>
		            </telerikMap:MapShapeLayer.ShapeStyleSelector>
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

Here is the result:

![Rad Map-Styling-Shape Style Selector](images/RadMap-Styling-ShapeStyleSelector.png)

# See Also

 * [MapShapeLayer]({%slug radmap-mapshapelayer%})
