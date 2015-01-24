---
title: Label Styling
page_title: Label Styling
description: Label Styling
slug: radmap-labelstyling
tags: label,styling
published: True
position: 2
---

# Label Styling

The **MapShapeLayer** has a **ShapeLabelStyle** property that is of **D2DTextStyle** type and defines the style of the labels.

>The text is rendered using Direct2D (for superior performance), not XAML, and property set is different.

You can also change the foreground of the labels depending on the [shape state]({%slug radmap-shapestyling%}) via the **Foreground** property of the shape styles.

>You will need to add the following namspace: **xmlns:telerikDrawing="using:Telerik.UI.Drawing"**, that has definition of the **D2DTextStyle** and **D2DShapeStyle** classes.

Here is an example demonstrating how to style the labels of the shapes using the **ShapeLabelStyle** property of the containing **MapShapeLayer**.

	<telerikMap:RadMap Width="500" Height="300">
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer ShapeLabelAttributeName="ADMIN_NAME">
	            <telerikMap:MapShapeLayer.Source>
	                <telerikMap:ShapefileDataSource SourceUriString="ms-appx:///Data/global.shp" DataSourceUriString="ms-appx:///Data/global.dbf"/>
	            </telerikMap:MapShapeLayer.Source>
	            <telerikMap:MapShapeLayer.ShapeLabelStyle>
	                <telerikDrawing:D2DTextStyle FontWeight="Bold" FontName="Arial" FontSize="17">
	                    <telerikDrawing:D2DTextStyle.Foreground>
	                        <telerikDrawing:D2DSolidColorBrush Color="#005663"/>
	                    </telerikDrawing:D2DTextStyle.Foreground>
	                </telerikDrawing:D2DTextStyle>
	            </telerikMap:MapShapeLayer.ShapeLabelStyle>
	        </telerikMap:MapShapeLayer>
	    </telerikMap:RadMap.Layers>
	</telerikMap:RadMap>

This is the result:

![Rad Map-Styling-Label Style](images/RadMap-Styling-LabelStyle.png)

# See Also

* [Labels]({%slug radmap-labels%})
