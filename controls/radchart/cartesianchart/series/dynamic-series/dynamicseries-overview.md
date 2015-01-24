---
title: Overview
page_title: Overview
description: Overview
slug: radchart-cartesianchart-series-dynamicseries-overview
tags: overview
published: True
position: 0
---

# Overview

The DynamicSeries definition is encapsulated by the **ChartSeriesDescriptor**abstract class. The descriptor class serves as a series factory and creates the desired **ChartSeries** instance. The type of the series to be created will be retrieved from the Style property and its TargetType. Concrete descriptor implementations will be separated by the data type – categorical, scatter, pie, etc. The dynamic data will be passed to the chart through a separate Data Source object, named ChartSeriesProvider. It will contain a collection of series descriptors as well as descriptor selector, allowing for context-based series creation. The raw data will be passed through the Source property (like in CollectionViewSource).

## User Scenarios

DynamicSeries could be used in various user scenarios:

* Allow the user to pass dynamic data to the chart and let the chart handle series generation, depending on some abstract definition/description of the desired series.
* Allow the user to have context-based series creation.
* Support the following data formats:
	* Collection of collections – e.g. List of arrays.
	* Collection of view models, where each model contains a property, containing the data for the series.
* Reflect a change in the dynamic data visually.

## Architecture

Here is the architecture of the DynamicSeries:

* **[SeriesProvider]({%slug radchart-cartesianchart-series-dynamicseries-chartseriesprovider%})**: Represents a logical object that may be used to feed a **RadChartBase** instance with data, leaving the series creation to the chart itself.
* **SeriesDescriptors**: Gets the collection of **ChartSeriesDescriptor** objects that specify what chart series are to be created. Here are listed all types of series descriptors:
	* **[CategoricalSeriesDescriptor]({%slug radchart-cartesianchart-series-dynamicseries-seriesdescriptors-categoricalseriesdescriptor%})**: Represents a series descriptor used to create all categorical chart series variations.
	* **[OhlcSeriesDescriptor]({%slug radchart-cartesianchart-series-dynamicseries-seriesdescriptors-ohlcseriesdescriptor%})**: Represents a series descriptor used to create financial series - **CandlestickSeries** and **OhlcSeries**.
	* **[ScatterSeriesDescriptor]({%slug radchart-cartesianchart-series-dynamicseries-seriesdescriptors-scatterseriesdescriptor%})**: Represents a series descriptor used to create all scatter chart series variations.

You have two ways to set the desired type of series you want to use.

* Via **[TypePath]({%slug radchart-cartesianchart-series-dynamicseries-seriesdescriptors-properties%})** property in your SeriesDescriptor - set a value of type Type matching the Series name.
* By setting **TargetType = telerik:Series** in the style of your SeriesDescriptor - where Series is the name of the desired Series. For example: **TargetType = "telerik:BarSeries"**.
