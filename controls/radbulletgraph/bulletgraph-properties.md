---
title: Properties and Configuration
page_title: Properties and Configuration
description: Check our &quot;Properties and Configuration&quot; documentation article for RadBulletGraph for UWP control.
slug: bulletgraph-properties
tags: properties,and,configuration
published: True
position: 3
---

# Properties and Configuration

Here are described all properties exposed by the **RadBulletGraph** control and its components.

> The implementation of the RadBulletGraph uses **RotateTransform** on its elements when **RadBulletGraph.Orientation = Orientation.Vertical**.
This should be taken into account when you customize its Labels, Ticks, ComparativeMeasure, etc.


## Properties Affecting RadBulletGraph Scale

* **IsAnimated** (bool): Gets a value that determines if the FeaturedMeasure will be animated when its value changes.
* **StartValue** (double): Gets or sets the start value of the RadBulletGraph scale.
* **EndValue** (double): Gets or sets the end value of the RadBulletGraph scale.
* **TickStep** (double): Gets or sets the tick step of the RadBulletGraph scale.
* **LabelStep** (double): Gets or sets the label step of the RadBulletGraph scale.
* **LabelTemplate** (DataTemplate): Gets or sets the label template of the RadBulletGraph scale.
* **TickTemplate** (DataTemplate): Gets or sets the tick template of the RadBulletGraph scale.
* **LabelOffset** (double): Gets or sets the label offset of the RadBulletGraph scale. This offset moves the labels
relative to the ticks and the measures.
* **Orientation** (Orientation): Gets or sets the orientation of the RadBulletGraph.

## Properties Affecting FeaturedMeasure

* **FeaturedMeasure** (double): Gets or sets the end value of the FeaturedMeasure.
* **FeaturedMeasureStartValue** (double): Gets or sets the start value of the FeaturedMeasure.
* **FeaturedMeasureBrush** (Brush): Gets or sets the color of the FeaturedMeasure.
* **FeaturedMeasureThickness** (double): Gets or sets the thickness of the FeaturedMeasure.
* **FeaturedMeasureAlternativeTemplate** (DataTemplate): Gets or sets the template that determines the look of the alternative FeaturedMeasure. The alternative FeaturedMeasure is visible when the StartValue of RadBulletGraph is non-zero.

## Properties Affecting ProjectedMeasure

* **ProjectedMeasure**: Gets or sets the value of the ProjectedMeasure.
* **ProjectedMeasureBrush** (Brush): Gets or sets the color of the ProjectedMeasure.

##Properties Affecting ComparativeMeasure

* **ComparativeMeasure**: Gets or sets the value of the comparative measure.
* **ComparativeMeasureTemplate** (DataTemplate): Gets or sets a template that determines the look of the default ComparativeMeasure. If no template is specified for the AdditionalComparativeMeasures, this template will be used instead.
* **AdditionalComparativeMeasures**: Gets a collection that contains any AdditionalComparativeMeasure.
All operations on this collection are supported.

## Properties Affecting QualitativeRanges

* **QualitativeRanges**(ObservableCollection&lt;BarIndicatorSegment&gt;): Gets the collection that contains the QualitativeRanges of the RadBulletGraph.
New ranges can be added and old ones can be removed. There must be two ranges at minimum and
no more than five - otherwise an exception is thrown. [Here]({%slug bulletgraph-how-to-add-qualitative-indicators%}) is an example demonstrating how to add QualitativeRanges.