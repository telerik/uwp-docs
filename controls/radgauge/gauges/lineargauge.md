---
title: Linear Gauge
page_title: Linear Gauge
description: Check our &quot;Linear Gauge&quot; documentation article for RadGauge for UWP control.
slug: radgauge-gauges-lineargauge
tags: linear,gauge
published: True
position: 1
---

# Linear Gauge

Linear Gauge is a linear scale, which can display multiple scales and ranges.

## Properties

>**RadLinearGauge** class inherits from the **RadGauge** class - [See the inherited properties]({%slug radgauge-properties%}).

* **LabelOffset** (double): Gets or sets an offset that is used to nudge the labels to the right or left (top/bottom if Orientation is horizontal) of the ticks. This is an attached property.

## Example

The following code sample demonstrates how to define RadLinearGauge:

	<telerik:RadLinearGauge Height="200" MaxValue="50" LabelOffset="-10" telerik:RadLinearGauge.Orientation="Vertical" />

Result:

![Rad Gauge-Linear Gauge Example](images/RadGauge-LinearGaugeExample.png)
