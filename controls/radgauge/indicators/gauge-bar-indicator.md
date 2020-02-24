---
title: Bar Indicators
page_title: Bar Indicators
description: Check our &quot;Bar Indicators&quot; documentation article for RadGauge for UWP control.
slug: gauge-bar-indicator
tags: bar,indicators
published: True
position: 3
---

# Bar Indicators

The **RadialBarGaugeIndicator** and **LinearBarGaugeIndicator** represent a specific value on the gauge
scale as a bar that fills the axis up to this value.

## RadialBarGaugeIndicator

The following code sample shows how to add a RadialBarGaugeIndicator to a RadRadialGauge:

	<telerik:RadRadialGauge LabelStep="60" TickStep="20" MaxValue="120"Width="200" LabelRadiusScale="1.10">
		<telerik:RadialBarGaugeIndicator Value="100" Brush="Green" Thickness="5" Margin="10"/>
	</telerik:RadRadialGauge>

Result:

![Rad Gauge-Radial Bar Gauge Indicator](images/RadGauge-RadialBarGaugeIndicator.png)

## LinearBarGaugeIndicator

The following code sample shows how to add a LinearBarGaugeIndicator to a RadLinearGauge:

	<telerik:RadLinearGauge LabelStep="60" TickStep="20" MaxValue="120"Width="200">
		<telerik:LinearBarGaugeIndicator Value="100" Brush="Green" Thickness="5" telerik:RadLinearGauge.IndicatorOffset="-10"/>
	</telerik:RadLinearGauge>

Result:

![Rad Gauge-Linear Bar Gauge Indicator](images/RadGauge-LinearBarGaugeIndicator.png)
