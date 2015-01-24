---
title: Properties and Configuration
page_title: Properties and Configuration
description: Properties and Configuration
slug: radgauge-properties
tags: properties,and,configuration
published: True
position: 3
---

# Properties and Configuration

**RadGauge** is a base class for:

* [Radial Gauge]({%slug radgauge-gauges-radialgauge%})
* [Linear Gauge]({%slug radgauge-gauges-lineargauge%})

## Properties

* **Indicators**: Gets a collection that holds the [indicators]({%slug radgauge-indicators-gaugeindicatorclass%}) in this range.
* **MinValue** (double): Gets or sets the minimum value that this range can represent.
* **MaxValue** (double): Gets or sets the maximum value that this range can represent.
* **LabelStep** (double): Gets or sets the label step. This step is used to determine how
the range labels will be spread over the value range.
* **LabelTemplate** (DataTemplate): Gets or sets the template that will represent the labels.
* **TickStep** (double): Gets or sets the tick step.The tick step is used to determine how
the range ticks are spread over the value range.
In other words, it determines how many ticks will be created.
* **TickTemplate** (DataTemplate): Gets or sets the template for the minor ticks.
* **MajorTickStep**: Gets or sets a step that is used to determine which ticks will be major ticks. This step is used on top of the number of created ticks, not the value range. Major ticks will use the major tick template.
* **MajorTickTemplate** (DataTemplate): Gets or sets the template for the major ticks. If this is null, the TickTemplate will be used instead.
* **MiddleTickStep**: Gets or sets a step that is used to determine which ticks will be middle ticks. This step is used on top of the number of created ticks, not the value range. Middle ticks will use the middle tick template.
* **MiddleTickTemplate** (DataTemplate): Gets or sets the template for the middle ticks. If this is null, the TickTemplate will be used instead.

