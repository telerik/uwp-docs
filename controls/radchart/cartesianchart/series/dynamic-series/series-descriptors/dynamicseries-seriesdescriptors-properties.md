---
title: Properties
page_title: Properties
description: Properties
slug: radchart-cartesianchart-series-dynamicseries-seriesdescriptors-properties
tags: properties
published: True
position: 0
---

# Properties

The **SeriesDescriptors** property is a collection of **ChartSeriesDescriptor** objects that specify what chart series are to be created.

* **DefaultType** (Type): Gets the default type of series that is to be created if no **TypePath** and no **Style** properties are specified.
* **TypePath** (string): Gets or sets the name of the property that points to the series type that needs to be created.
* **Style** (Style): Gets or sets the **Style** that describes the appearance of the series to be created. If no **TypePath** is specified, the **TargetType** property of this style object is used to generate the desired series.
* **ItemsSourcePath** (string): Gets or sets the name of the property that points to the items source that will feed the generated series.
* **CollectionIndex** (int): Gets or sets the index within the source collection of data (view models) for which the current descriptor should be used. This property is useful when, for example, a **BarSeries** needs to be generated for the first data entry and **LineSeries** for the rest of the entries.

