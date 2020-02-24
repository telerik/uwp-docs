---
title: Overview
page_title: Overview
description: Check our &quot;Overview&quot; documentation article for RadChart for UWP control.
slug: radchart-overview
tags: overview
published: True
position: 0
---

# Overview

RadChart for {{ site.framework_name }} is a versatile charting component that has been specifically designed from the ground-up with the latest Windows patterns and practices in mind. It offers unmatched performance regarding loading time, drawing capabilities and real-time updates. Its intuitive object model and public API allow complex charts to be easily setup either in XAML or in code-behind. The control is completely data aware and may work in bound or unbound mode, depending on the requirements. Chart types (or series) are organized in hierarchies, depending on the coordinate system, used to plot data points – for example, we have RadCartesianChart (using the Cartesian coordinate system) and RadPieChart (using the radial coordinate system).

## Architecture

A charting component in general is used to visualize (or plot) some data in a human-readable way through different representations like lines, areas, bars, pies, etc. Each series has a collection of data points – the data equivalent of a 2D point – and knows how to visualize them. Different series types may process certain types of data points – for example, categorical series may contain categorical data points. Data points may be added directly to series or a data binding mechanism may be used to create the appropriate data points from the raw data. 

### RadCartesianChart

As the name hints, this chart control uses the Cartesian coordinate system to plot the data points in its chart series. The X and Y axes define how each point’s coordinates in the plot area are calculated.

#### Axes

The following Cartesian axes are available:

* **Categorical**
Arranges the plotted data points in categories where the key of each category is the point’s value (if available)
for that axis or its index within the points collection. The point’s coordinate, specified by this axis, is discrete and is calculated depending on the size of the category slot where the point resides.
* **Date-time Categorical**  
A special categorical axis that expects each data point to provide a System.DateTime structure as its value for this axis. The points are grouped by a user-defined date-time component (Year, Month, Day, etc.) and then the groups are sorted chronologically.
* **Linear**  
Calculates the coordinate of each data point, depending on the actual numerical value this point provides for the axis. Exposes Minimum and Maximum properties to allow explicit definition of the range of values visible on this axis. If these properties are not specified, the axis will automatically calculate the range, depending on the minimum and maximum data point values.
* **Logarithmic**  
A special linear axis that will transform each data point value using the logarithm function. It allows numerical data with a huge delta between the minimum and the maximum to be visualized in a readable way.
* **Date-Time Continuous**  
A special axis that expects each data point to provide a System.DateTime structure as its value for this axis. Think of this axis as a timeline where the coordinate of each data point is calculated depending on the position of its associated DateTime on the timeline. The base unit (or the timeline step) of the axis is calculated depending on the smallest difference between any two dates.

#### Series

The following Cartesian series are available:


##### Categorical

Categorical series need a Linear/Logarithmic and a Categorical/DateTimeCategorical/DateTimeContinuous axis in order to get properly plotted.

* **Bar**  
Data points are represented by a box where the height (width) of the box is the distance between the point’s numerical value and the categorical axis that plots the point. Bars may be either “horizontal” or “vertical” depending on whether the categorical axis is specified as an “X-axis” or as a “Y-axis”.
* **Line**  
Data points are connected with straight line segments.
* **Spline**  
Data points are connected with smooth line segments.
* **Area**  
Data points and the corresponding coordinate axis enclose an area that may be optionally stroked and/or filled.
* **SplineArea**  
An area, where points are connected with smooth rather than straight segments.
* **Candlestick**  
A special financial series that present some stock trend(s) in time. Uses candle-like shapes to visualize its data points.
* **OHLC**  
A special financial series that present some stock trend(s) in time. Uses stick-like shapes to visualize its data points. Each of the above series of the same type may be combined in either stacks or clusters. Combinations are formed when more than one data point from different series fall within the same category. The “Cluster” combine mode will position such points next to each other while the “Stack” combine mode will arrange such points in a stack-like structure. When stacks are formed, the numerical axis (if present) will consider each stack as a single entity and its sum will be the actual value used rather than each point’s one.

##### Scatter
 
Scatter series need two linear/logarithmic axes in order to get properly plotted. Scatted data provides both the X and the Y coordinate.

* **ScatterPoint**  
Data points are represented by an arbitrary template.
* **ScatterLine**  
Data points are connected with straight line segments.
* **ScatterSpline**  
Data points are connected with smooth line segments.
* **ScatterArea**  
Data points and the horizontal axis enclose an area that may be optionally stroked and/or filled.
* **ScatterSplineArea**  
A ScatterArea, where points are connected with smooth rather than straight segments.

#### CartesianChartGrid
  
The Cartesian chart may be optionally decorated with grid-like visuals that support horizontal and vertical lines, associated with axis ticks and horizontal and vertical stripes – the area between two adjacent ticks.

### RadPieChart  

This chart control visualizes its data points using a discrete polar coordinate system. 
Each point is represented as an arc segment. The arc’s length represents the point’s value percentage of the total sum.

### RadPolarChart
  
This chart control uses the polar coordinate system to plot its data.

#### Axes
  
The following axes are available:

* **CategoricalRadial**  
A special categorical axis that arranges its ticks and labels in a circle. Much like the Cartesian CategoricalAxis, it plots the associated data into groups (categories) and the angle coordinate of each point is calculated depending on the category slot position on the circle.
* **NumericalRadialAxis**  
A special categorical axis that expects each data point to provide a System.DateTime structure as its value for this axis. The points are grouped by a user-defined date-time component (Year, Month, Day, etc.) and then the groups are sorted chronologically.
* **Polar**  
A special numerical axis that calculates the radius value of each data point.

#### Series
  
The following series are available:

##### Polar
  
Polar series need a NumericalRadial and a Polar axis in order to get properly plotted.

* **PolarPoint**  
Data points are represented by an arbitrary template and not connected.
* **PolarLine**  
Data points are connected with straight line segments.
* **PolarSpline**  
Data points are connected with smooth line segments.
* **PolarArea**  
Data points and the corresponding coordinate axis enclose an area that may be optionally stroked and/or filled.
* **PolarSplineArea**  
An area, where points are connected with smooth rather than straight segments.

##### Radar
  
Radar series need CategoricalRadial and Polar axes in order to get properly plotted.

* **RadarPoint**  
Data points are represented by an arbitrary template and not connected.
* **RadarLine**  
Data points are connected with straight line segments.
* **RadarSpline**  
Data points are connected with smooth line segments.
* **RadarArea**  
Data points and the horizontal axis enclose an area that may be optionally stroked and/or filled.
* **RadarSplineArea**  
A ScatterArea, where points are connected with smooth rather than straight segments.

#### PolarChartGrid
  
The Polar chart may be optionally decorated with grid-like visuals that support horizontal and vertical lines, 
associated with axis ticks and horizontal and vertical stripes – the area between two adjacent ticks.

## Behaviors  

Optionally, each chart may be enabled with interactivity through its Behaviors property. A behavior is generally an abstraction
that handles user input in a RadChart instance and optionally provides visual feedback upon some action.
The following behaviors are available:

* **PanAndZoomBehavior**  
This behavior handles Manipulation events and/or MouseMove/MouseWheel to enable panning and zooming of the associated chart plot area.
* **TrackballBehavior**  
This behavior handles Hold and/or MouseMove events to enable context-sensitive information about a data point.
* **TooltipBehavior**  
This behavior handles Hold and/or MouseMove events to enable context-sensitive information about a data point. It differs from the TrackballBehavior
in terms of visual information and trigger action.
* **SelectionBehavior**  
This behavior handles the Tap event to enable selection/deselection of data points and/or chart series. When a data point becomes "Selected", the
Chart's SelectionPalette property is used to visualize the selected point.