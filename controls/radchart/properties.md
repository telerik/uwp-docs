---
title: Properties and Configuration
page_title: Properties and Configuration
description: Check our &quot;Properties and Configuration&quot; documentation article for RadChart for UWP control.
slug: radchart-properties
tags: properties,and,configuration
published: True
position: 3
---

# Properties and Configuration

* **SeriesProvider** (ChartSeriesProvider): Gets or sets an object that may be used to create chart series dynamically, depending on the underlying data.
* **Zoom** (Size): Gets or sets the current zoom (scale) of the chart.
* **MaxZoom** (Size): Gets or sets the maximum allowed zoom for this instance.
* **MinZoom** (Size): Gets or sets the minimum allowed zoom for this instance.
* **PlotOrigin** (Point): Gets the origin of the plot area relative to the viewport.
* **PlotAreaClip** (RadRect): Gets the clip that encloses the plot area in view coordinates - that is without the zoom factor applied and with the pan offset calculated.
* **ScrollOffset** (Point): Gets or sets the origin used to calculate the arrange box of the chart area.
The value is in units relative to the viewport size. For example value of (-1, 0) will scroll the chart scene to the left with the width of the viewport.
* **ClipToBounds** (bool): Gets or sets a value indicating whether the chart content will be clipped to the control's bounds.
* **EmptyContent** (object): Gets or sets the content to be displayed when the chart is either not properly initialized or missing data.
* **EmptyContentTemplate** (DataTemplate): Gets or sets the **DataTemplate** that defines the visual tree of the **ContentPresenter** instance that visualizes the **EmptyContent** property.
* **PlotAreaStyle** (Style): Gets or sets the **Style** instance that describes the visual appearance of the plot area. The **Style** should target the **Border** type.
* **Palette** (ChartPalette): Gets or sets the **ChartPalette** instance that defines the appearance of the chart.
* **PaletteName** (PredefinedPaletteName): Gets or sets the name of the predefined **Palette** that will be applied to the chart.
* **SelectionPalette** (ChartPalette): Gets or sets the **ChartPalette** instance that defines the appearance of the chart for selected series and/or data points.
* **SelectionPaletteName** (PredefinedPaletteName): Gets or sets the name of the predefined **SelectionPalette** that will be applied to the chart.
* **ViewportWidth** (double): Gets the actual width of the chart.
* **ViewportHeight** (double): Gets the actual height of the chart.

## Conversion API

* **ConvertPointToData(Point coordinates)**: Converts the specified physical coordinates in pixels to data coordinates using the primary chart axes (if any).
* **ConvertPointToData(Point coordinates, Axis horizontalAxis, Axis verticalAxis)**: Converts the specified physical coordinates in pixels to data coordinates using the specified chart axes.
* **ConvertDataToPoint(Tuple<object, object> data)**: Converts the specified data coordinates to physical coordinates (in pixels) using the primary chart axes (if any).
* **ConvertDataToPoint(Tuple<object, object> data, Axis horizontalAxis, Axis verticalAxis)**: Converts the specified data coordinates to physical coordinates (in pixels) using the specified chart axes.