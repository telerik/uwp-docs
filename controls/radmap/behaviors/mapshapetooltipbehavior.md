---
title: MapShapeTooltipBehavior
page_title: MapShapeTooltipBehavior
description: MapShapeTooltipBehavior
slug: radmap-behaviors-mapshapetooltipbehavior
tags: mapshapetooltipbehavior
published: True
position: 4
---

# MapShapeTooltipBehavior

Represents a **MapBehavior** that provides a context-sensitive information on a per map shape basis. Applicable when **MapShapeLayer** instances are added to the **RadMap**. The **MapShapeToolTipBehavior** exposes the following properties:

>The **MapShapeTooltipBehavior** class inherits from the **MapBehavior** class - [See the inherited properties]({%slug radmap-behaviors%}).


* **TouchOverhang** (Point): Gets or sets the offset to be applied when the tooltip position is calculated.
* **ShowDelay** (TimeSpan): Gets or sets the delay to be applied before the tooltip is displayed.
* **IsOpen** (bool): Gets a value indicating whether the tooltip is currently displayed.

### Default ToolTip

Here is an example that demonstrates how to add a **MapShapeToolTipBehavior** to the **RadMap** control.

>You have to set the **ShapeLabelAttributeName** property of the layer to which you would like to add a tooltip.

	<telerikMap:RadMap>
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer ShapeToolTipAttributeName="ADMIN_NAME">
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
	    <telerikMap:RadMap.Behaviors>
	        <telerikMap:MapShapeToolTipBehavior/>
	        <telerikMap:MapShapeSelectionBehavior/>
	    </telerikMap:RadMap.Behaviors>
	</telerikMap:RadMap>

![Rad Map-Default Tooltip Behavior](images/RadMap-DefaultTooltipBehavior.png)

### Customizing the ToolTip Content

The content of the tooltip could be customized using the **MapShapeToolTipBehavior.ContentTemplate** attached property to the **MapShapeLayer**.
Here is an example:

	<telerikMap:RadMap Background="#2EC4FF">
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer>
	
	            <telerikMap:MapShapeToolTipBehavior.ContentTemplate>
	                <DataTemplate>
	                    <TextBlock>
	                        <Run Text="{Binding Shape.Attributes[SQKM_ADMIN]}"/>
	                        <Run Text="km"/>
	                    </TextBlock>
	                </DataTemplate>
	            </telerikMap:MapShapeToolTipBehavior.ContentTemplate>
	
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
	    <telerikMap:RadMap.Behaviors>
	        <telerikMap:MapShapeToolTipBehavior/>
	        <telerikMap:MapShapeSelectionBehavior/>
	    </telerikMap:RadMap.Behaviors>
	</telerikMap:RadMap>

This is the result:

![Rad Map-Custom Text Tooltip Behavior](images/RadMap-CustomTextTooltipBehavior.png)

### Customizing the ToolTip Container

The container of the tooltip could be customised with implicit **Style** that targets the **MapTooltip** class defined in the **Telerik.UI.Xaml.Controls.Map.Primitives** namespace. Here is an example:

	<telerikMap:RadMap>
	    <telerikMap:RadMap.Resources>
	        <Style TargetType="telerikMapPrimitives:MapToolTip">
	            <Setter Property="Template">
	                <Setter.Value>
	                    <ControlTemplate TargetType="telerikMapPrimitives:MapToolTip">
	                        <Grid>
	                            <Ellipse Fill="Black"/>
	                            <ContentPresenter Content="{TemplateBinding Content}" Margin="10"
	                                              ContentTemplate="{TemplateBinding ContentTemplate}"/>
	                        </Grid>
	                    </ControlTemplate>
	                </Setter.Value>
	            </Setter>
	        </Style>
	    </telerikMap:RadMap.Resources>
	
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer ShapeLabelAttributeName="ADMIN_NAME" IsToolTipEnabled="True" ShapeToolTipAttributeName="SQKM_ADMIN">
	            <telerikMap:MapShapeLayer.Source>
	                <telerikMap:ShapefileDataSource SourceUriString="ms-appx:///Data/global.shp" DataSourceUriString="ms-appx:///Data/global.dbf"/>
	            </telerikMap:MapShapeLayer.Source>
	        </telerikMap:MapShapeLayer>
	    </telerikMap:RadMap.Layers>
	    <telerikMap:RadMap.Behaviors>
	        <telerikMap:MapShapeToolTipBehavior/>
	        <telerikMap:MapShapeSelectionBehavior/>
	    </telerikMap:RadMap.Behaviors>
	</telerikMap:RadMap>

This is the result:

![Rad Map-Custom Container Tooltip Behavior](images/RadMap-CustomContainerTooltipBehavior.png)

# See Also

 * [Behaviors Overview]({%slug radmap-behaviors%})
