---
title: GaugeIndicator Class
page_title: GaugeIndicator Class
description: Check our &quot;GaugeIndicator Class&quot; documentation article for RadGauge for UWP control.
slug: radgauge-indicators-gaugeindicatorclass
tags: gaugeindicator,class
published: True
position: 0
---

# GaugeIndicator Class

The gauge indicators represent specific values on the gauge scale. Here are all types of indicators:

* [BarGaugeIndicator Class]({%slug radgauge-indicators-bargaugeindicatorsclass%})
* [Marker Indicator]({%slug gauge-marker-indicator%})
* [Bar Indicators]({%slug gauge-bar-indicator%})
* [Arrow Indicator]({%slug gauge-arrow-indicator%})
* [Segmented Indicators]({%slug radgauge-segmented-indicator%})

## Properties

>**GaugeIndicator** class is a base class that defines properties for all of the above indicators.

* **Value** (double): Gets or sets the value of this indicator.
* **StartValue** (double): Determines from where in the value range does the indicator start. By default every indicator starts at 0.
* **Owner**: Gets the owner range of this indicator.
* **IsAnimated** (bool): Gets or sets the IsAnimated property value. This property enables and disables the animated transition between values.
* **AnimationDuration**: Gets or sets the duration of the animation when IsAnimated is true.
* **AnimationEasing**: Gets or sets the easing of the animation when IsAnimated is true.

