---
title: Marker Indicator
page_title: Marker Indicator
description: Marker Indicator
slug: gauge-marker-indicator
tags: marker,indicator
published: True
position: 2
---

# Marker Indicator

The gauge components contain an indicator that represents a marker. A marker in the most general sense is a visual cue that signifies an important
point inside a value range. This cue can be static, indicating some kind of threshold or it can be dynamic, indicating a dynamic threshold or some specific data that is dynamic.
MarkerGaugeIndicator is the only indicator that is applicable to both the linear and the radial range.


## Properties

>**MarkerGaugeIndicator** class inherits from the **GaugeIndicator** class -
[See the inherited properties](%slug radgauge-indicators-gaugeindicatorclass%).

* **Content** (object): Gets or sets the content for the marker.
* **ContentTemplate** (DataTemplate): Gets or sets the template for the marker.
* **IsRotated** (bool): Gets or sets a value that determines if the marker will rotate in place as well as around the center of a radial range or whether it will rotate automatically in a linear range when its orientation is Vertical.

## Example

The following code example shows how to add a MarkerGaugeIndicator to RadRadialGauge:

	<telerik:RadRadialGauge LabelStep="60" TickStep="20" MaxValue="120" LabelRadiusScale="1.10" Width="200">
		<telerik:MarkerGaugeIndicator Value="99" Content="INDICATOR" Foreground="Green" Margin="0,0,30,0" IsRotated="False" />
	</telerik:RadRadialGauge>

Result:

![Rad Gauge-Marker Indicator](images/RadGauge-MarkerIndicator.png)
