---
title: Overview
page_title: Overview
description: Overview
slug: chart-annotations-overview
tags: overview
published: True
position: 0
---

# Overview

Annotations are visual elements used to highlight certain areas on the plot. They can be used as comments or as markers for specific values on the plot. You can practically use any visual element as template for the annotation.

**RadChart** provides support for the following types of annotations:

* **[Grid Line Annotations]({%slug chart-annotations-gridline-types%})**:
	* **CartesianGridLineAnnotation**: visually represented by
a straight line accross the chart that marks a specific value on the associated **[ cartesian axis]({%slug radchart-series-cartesianchart-axes%})**.
	* **PolarGridLineAnnotation**: visually represented by a round line accross the chart that marks a specific value on the **[PolarAxis]({%slug radchart-axes-polaraxis%})**.
	* **RadialGridLineAnnotation**: visually represented by a straight line accross the chart that marks a specific angular value if associated with **[NumericalRadialAxis]({%slug radchart-axes-numericalradialaxis%})**, or categorical value if associated with **[CategoricalRadialAxis]({%slug radchart-axes-categoricalradialaxis%})**.
* **[Plot Band Annotations]({%slug chart-annotations-plotband-types%})**:
	* **CartesianPlotBandAnnotation**: visually represented by a band accross the chart that marks a specific range on the associated
**[ cartesian axis]({%slug radchart-series-cartesianchart-axes%})**.
	* **PolarPlotBandAnnotation**: visually represented by a circular band accross the chart that marks a specific value (radius) range on the **[PolarAxis]({%slug radchart-axes-polaraxis%})**.
	* **RadialPlotBandAnnotation**: visually represented by an arc that marks a specific angular range if associated with **[NumericalRadialAxis]({%slug radchart-axes-numericalradialaxis%})**, or categorical range if associated with **[CategoricalRadialAxis]({%slug radchart-axes-categoricalradialaxis%})**.
* **From-To Annotations**:
	* **[CartesianCustomLineAnnotation]({%slug chart-annotations-customline-types%})**: visually represented by
a straight line accross the chart between specific start and end coordinates.
	* **[CartesianMarkedZoneAnnotation]({%slug chart-annotations-markedzone-types%})**: visually represented by
a rectangle area accross the chart drawn between specific start and end coordinates.
* **[Custom Annotations]({%slug chart-annotations-custom-types%})**:
	* **CartesianCustomAnnotation**: this annotation marks a specific point on the cartesian chart. It requires its both horizontal and vertical coordinates to be specified.
	* **PolarCustomAnnotation**: this annotation marks a specific value on the polar chart. It requires its both radial and polar coordinates to be specified.

Here is a class hierarchy of the supported annotation types so you can get a better understanding of their structure and interdependencies:

![Annotations Class Hierarchy](images/AnnotationsClassHierarchy.png)

# See Also

 * [GridLine Annotation Types]({%slug chart-annotations-gridline-types%})
 * [PlotBand Annotation Types]({%slug chart-annotations-plotband-types%})
 * [Custom Annotation Types]({%slug chart-annotations-custom-types%})
 * [Annotation Labels]({%slug chart-annotations-labels%})
