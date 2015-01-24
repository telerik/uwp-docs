---
title: Selection Behavior
page_title: Selection Behavior
description: Selection Behavior
slug: radchart-behaviors-chartselectionbehavior
tags: selection,behavior
published: True
position: 3
---

# Selection Behavior

The **ChartSelectionBehavior** is a type of visualization that allow users to "select" point of the series. This behavior can bring much more user interactivity to RadChart and make the data in the chart much easier to understand.

## Properties

* **SeriesSelectionMode**: Gets or sets the **ChartSelectionMode** that controls the selection behavior of the chart series.
	* **None**
	* **Single**
	* **Multiple**
* **DataPointSelectionMode**: Gets or sets the **ChartSelectionMode** that controls the selection behavior of the data points within the chart series.
* **TouchTargetOverhang**: Gets or sets the **Thickness** structure that will be used when calculating the touch rectangle.
* **SelectedPoints**: Retrieves all the points from all series within the chart plot area that are currently selected.
* **SelectedSeries**: Retrieves all the series instances within the plot area that are currently selected.

Here is the XAML definition:

	<telerik:RadCartesianChart.Behaviors>
		<telerik:ChartSelectionBehavior DataPointSelectionMode="Multiple"/>
	</telerik:RadCartesianChart.Behaviors>