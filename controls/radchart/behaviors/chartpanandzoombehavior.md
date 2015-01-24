---
title: Pan and Zoom Behvior
page_title: Pan and Zoom Behvior
description: Pan and Zoom Behvior
slug: radchart-behaviors-chartpanandzoombehavior
tags: pan,and,zoom,behvior
published: True
position: 2
---

# Pan and Zoom Behvior



## ChartPanAndZoomBehavior

RadChart provides pan and zoom interactivity with the **ChartPanAndZoomBehavior** class.
It is very simple to use and allows users to zoom in the chart plot area when there is a dense area of data points that can not be seen clearly at the normal chart scale.
The pan functionality allows moving the visible area of the chart when it is zoomed in.
In order to utilize this behavior, users simply have to add it to the chart's Behaviors collection and specify the pan and zoom modes.

* **ZoomMode/PanMode**: Gets or sets the ChartPanZoomMode value that specifies how the chart will respond to a zoom/pan gesture.
	* **None**:
	* **Horizontal**:The chart can be zoomed/panned horizontally (along the X-axis).
	* **Vertical**: The chart can be zoomed/panned vertically (along the Y-axis).
	* **Both**:The chart can be zoomed/panned both vertically and horizontally.
* **HandleDoubleTap** (bool): Determines whether a double-tap gesture will be handled by the behavior to reset the values of the **Zoom** and **ScrollOffset** properties of the chart.

	<telerik:RadCartesianChart.Behaviors>
		<telerik:ChartPanAndZoomBehavior ZoomMode="Both" PanMode="Horizontal"/>
	</telerik:RadCartesianChart.Behaviors>
