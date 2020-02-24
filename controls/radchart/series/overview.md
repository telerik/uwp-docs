---
title: Overview
page_title: Overview
description: Check our &quot;Overview&quot; documentation article for RadChart for UWP control.
slug: radchart-series-overview
tags: overview
published: True
position: 0
---

# Overview

The data visualization in RadChart is done by a hierarchy of classes that inherit from the **ChartSeries** class.
Each series has a collection of data points, that is the view model of the data. A series may have its data populated directly through the **DataPoints** property (unbound mode) or by data-binding to an arbitrary **IEnumerable** instance through the **ItemsSource** property. When a series is data-bound it will internally populate its **DataPoints** collection. A series may work either in bound or unbound mode, but not in both.

## Series Class Hierarchy

Concrete series types are available for specific charts. For example, there is a set of **CartesianSeries**
applicable in the context of a **RadCartesianChart**. Here is the hierarchy of all series:

![Series Class Diagram](images/SeriesClassDiagram.png)

Here are listed all supported series grouped by the chart types that can use them:

### CartesianChart

#### CategoricalSeries

* [PointSeries]({%slug radchart-cartesianchart-series-categorical-pointseries%})
* [BarSeries]({%slug radchart-cartesianchart-series-categorical-barseries%})
* [LineSeries]({%slug radchart-cartesianchart-series-categorical-lineseries%})
* [SplineSeries]({%slug radchart-cartesianchart-series-categorical-splineseries%})
* [AreaSeries]({%slug radchart-cartesianchart-series-categorical-areaseries%})
* [SplineAreaSeries]({%slug radchart-cartesianchart-series-categorical-splineareaseries%})

#### ScatterSeries

* [ScatterPointSeries]({%slug radchart-cartesianchart-series-skatter-scatterpointseries%})
* [ScatterLineSeries]({%slug radchart-cartesianchart-series-skatter-scatterlineseries%})
* [ScatterSplineSeries]({%slug radchart-cartesianchart-series-skatter-scattersplineseries%})
* [ScatterAreaSeries]({%slug radchart-cartesianchart-series-skatter-scatterareaseries%})
* [ScatterSplineAreaSeries]({%slug radchart-cartesianchart-series-skatter-scattersplineareaseries%})

#### FinancialSeries

* [OhlcSeries]({%slug radchart-cartesianchart-series-categorical-ohlcseries%})
* [CandlestickSeries]({%slug radchart-cartesianchart-series-categorical-candlestickseries%})

### PolarChart

#### PolarSeries

* [PolarPointSeries]({%slug radchart-series-polarchart-series-polar-polarpoint%})
* [PolarLineSeries]({%slug radchart-series-polarchart-series-polar-polarline%})
* [PolarSplineSeries]({%slug radchart-series-polarchart-series-polar-polarspline%})
* [PolarAreaSeries]({%slug radchart-series-polarchart-series-polar-polararea%})
* [PolarSplineAreaSeries]({%slug radchart-series-polarchart-series-polar-polarsplinearea%})

#### RadarSeries

* [RadarPointSeries]({%slug radchart-series-polarchart-series-radar-radarpoint%})
* [RadarLineSeries]({%slug radchart-series-polarchart-series-radar-radarline%})
* [RadarSplineSeries]({%slug radchart-series-polarchart-series-radar-radarspline%})
* [RadarAreaSeries]({%slug radchart-series-polarchart-series-radar-radararea%})
* [RadarSplineAreaSeries]({%slug radchart-series-polarchart-series-radar-radarsplinearea%})

### PieChart

* [PieSeries]({%slug radchart-series-pieseries%})
* [DoughnutSeries]({%slug radchart-series-doughnutseries%})