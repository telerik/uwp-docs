---
title: Overview
page_title: Overview
description: Overview
slug: radchart-series-cartesianchart-axes
tags: overview
published: True
position: 0
---

# Overview

Available are the following Cartesian axes:

* **Categorical**: Arranges the plotted data points in categories where the key of each category is the point category value (if available) or its index within the points collection. The point’s coordinate, specified by this axis, is discrete and is calculated depending on the size of the category slot where the point resides. 
* **Linear**: Calculates the coordinate of each data point, depending on the actual numerical value this point provides for the axis. Exposes Minimum and Maximum properties to allow explicit definition of the range of values visible on this axis. If these properties are not specified, the axis will automatically calculate the range, depending on the minimum and maximum data point values. 
* **Logarithmic**: A special linear axis that will transform each data point value using the logarithm function. Allows for numerical data with a huge difference between the minimum and the maximum to be visualized in a readable way. 
* **Date-time Categorical**: A special categorical axis that expects each data point to provide a System.DateTime structure as its value for this axis. The points are grouped by a user-defined date-time component (Year, Month, Day, etc.) and then the groups are sorted chronologically. 
* **Date-Time Continuous**: A special axis that expects each data point to provide a System.DateTime structure as its value for this axis. May be thought of as a timeline where the coordinate of each data point is calculated depending on the position of its associated DateTime on the timeline. The base unit (or the timeline step) of the axis is calculated depending on the smallest difference between any two dates. 
            
>The different type of series are supported by specific types of axes: 

* **Categorical** series need one numerical axis and one categorical axis. 
* **Scatter** series need two numerical axes (X and Y). 
