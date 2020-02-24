---
title: ContainerVisualsFactory
page_title: ContainerVisualsFactory
description: Check our &quot;ContainerVisualsFactory&quot; documentation article for RadChart for UWP control.
slug: radchart-containervisualsfactory
tags: containervisualsfactory
published: True
position: 4
---

# Overview

With the **R2 2017 SP1** release version of **UI for UWP**, RadChart provides a brand new rendering implementation for some of the Chart's visual elements. By using it some of the visual elements are drawn using the [Composition API](https://docs.microsoft.com/en-us/uwp/api/windows.ui.composition). This article will provide information about the visual elements drawn with the Composition API and how you can modify the drawing implementaion.

## Visuals supporting Composition API

The following visual elements are drawn using the [SpriteVisual](https://docs.microsoft.com/en-us/uwp/api/windows.ui.composition.spritevisual) element of the Composition API:

* [Axis]({%slug radchart-axes-axis%})
* [Ticks]({%slug radchart-axes-axis%})
* [ScatterLineSeries]({%slug radchart-cartesianchart-series-skatter-scatterlineseries%})
* [BarSeries]({%slug radchart-cartesianchart-series-categorical-barseries%})
* [RangeBarSeries]({%slug radchart-cartesianchart-series-categorical-rangebarseries%})
* [LineSeries]({%slug radchart-cartesianchart-series-categorical-lineseries%})
* [StepLineSeries]({%slug radchart-cartesianchart-series-categoricalseries-steplineseries%})
* [CandleStickSeries]({%slug radchart-cartesianchart-series-categorical-candlestickseries%})
* [OhlcSeries]({%slug radchart-cartesianchart-series-categorical-ohlcseries%})
* [Trend Line and Financial Indicator]({%slug radchart-series-radcartesianchart-indicators-indicators%})

>By default, the listed above visuals will be drawn using the Composition API. If the visual elements have a custom Style or Template set - the Composition won't be used for the drawing functionality.

## ContainerVisualsFactory

The __ContainerVisualsFactory__ class helps preparing the [ContainerVisuals](https://docs.microsoft.com/en-us/uwp/api/windows.ui.composition.containervisual) that will be used for the rendering ot the Chart control. RadChart exposes a __ContainerVisualsFactory__ property that can be used to change the defaulf implementation for the drawing of the ContainerVisuals.

In order to achieve a different behavior (for example to be able to change the Brush of the SpriteVisual) you can create a custom __ContainerVisualsFactory__ class and override its methods.

The methods of the factory that could be overridden are the following:

* __CanDrawContainerVisual:__  Indicates whether the visual element can be drawn using the Composition API. If the method returns false the element won't be drawn as a SpriteVisual element. Using that method the Composition mechanism could easily be disabled and the elements to be drawn using the UIElements provided by the Framework.

* __CreateContainerVisual:__  It creates a new SpriteVisual instance that will be used for the visualization of the elements. The methods return ContainerVisual type of element and you could easily return any other ContainerVisual that will be used for the drawing - currently, we suggest you to use the __SpriteVisual__ as the only __ContainerVisual__ element from the Composition API that provides a __CompositionBrush__.

* __PrepareTickVisual:__  Prepares the __SpriteVisual__ used for the visualization of the ticks of the Axis by setting its Size, Color and Offset.

* __PrepareCartesianChartGridLineVisual:__ Prepares the __SpriteVisual__ used for the visualization of the lines of the CartesianChartGrid by setting its Size, Color and Offset. You can also pass to the method a __DoubleCollection__ that represents the dash array for the lines that will be used when drawing the __SpriteVisuals__.

* __PreparePointTemplateSeriesVisual:__ Used for setting the Offset, Brush and Size of the series that are drawn with the Composition API.

* __PrepareCartesianAxisLineVisual:__ Prepares the __SpriteVisual__ that will be visualized as an Axis. The method also provides information about the AxisType that is currently drawn.

* __PrepareLineRenderVisual:__ - Prepares the Trend Lines and Financial Indicators by setting their Size, Offset and Brush.

* __PrepareBarIndicatorVisual:__ - Prepares the BarIndicatorBase instances by setting their Size, Offset and Brush.

The following example will demonstrate how to implement a custom ContainerVisualsFactory that will change the Brush of the BarSeries of RadChart and change the dash array of the CartesianChartGrid.

First, you need to create a custom class that inherits the default ContainerVisualsFactory:

	public class CustomContainerVisualFactory : ContainerVisualsFactory
	{
		
	}

Next thing you have to do is to override the **CreateContainerVisual** method that should return a **ContainerVisual** used for the rendering of the Chart control. The **Compositor** parameter is used for the creation of the **SpriteVisual** element and the type gives you information of the currently created element:

	public class CustomContainerVisualFactory : ContainerVisualsFactory
	{
		protected override ContainerVisual CreateContainerVisual(Compositor compositor, Type elementType)
		{
			var containerVisual = base.CreateContainerVisual(compositor, elementType) as SpriteVisual;
			if (containerVisual != null && elementType == typeof(BarSeries))
			{
				containerVisual.Brush = compositor.CreateColorBrush(Color.FromArgb(0xFF, 0x93, 0xC8, 0x49));
			}

			return containerVisual;
		}
	}

Finally, we will override the **PrepareCartesianChartGridLineVisual** method as well in order to change the dash array for the lines used for the drawing of the CartesianChartGrid:

	public class CustomContainerVisualFactory : ContainerVisualsFactory
	{
		protected override ContainerVisual CreateContainerVisual(Compositor compositor, Type elementType)
		{
			var containerVisual = base.CreateContainerVisual(compositor, elementType) as SpriteVisual;
			if (containerVisual != null && elementType == typeof(BarSeries))
			{
				containerVisual.Brush = compositor.CreateColorBrush(Color.FromArgb(0xFF, 0x93, 0xC8, 0x49));
			}

			return containerVisual;
		}

		protected override ContainerVisual PrepareCartesianChartGridLineVisual(ContainerVisual containerVisual, RadRect layoutSlot, Orientation orientation, DoubleCollection dashArray)
		{
			return base.PrepareCartesianChartGridLineVisual(containerVisual, layoutSlot, orientation, new DoubleCollection() { 1, 0});
		}
	}
	
You could easily override the other methods as well in order to achieve the desired behavior and appearance of the Chart.