---
title: PointTemplateSeries Class
page_title: PointTemplateSeries Class
description: PointTemplateSeries Class
slug: radchart-series-pointtemplateseries
tags: pointtemplateseries,class
published: True
position: 2
---

# PointTemplateSeries Class

The **PointTemplateSeries** class inherits from the base **ChartSeries** class and adds notation
for a chart series that may visualize their points through a **DataTemplate** or through an internally created visual element, the so called *DefaultVisual*. For example, one such series is **BarSeries**,
where each **DataPoint** is represented by a **Border** instance by default.

## Properties

>**PointTemplateSeries** class inherits from the **ChartSeries** class - [See the inherited properties]({%slug radchart-series-chartseriesproperties%}).

The following properties are declared by the **PointTemplateSeries** class.

* **PointTemplate** (DataTemplate): Defines the **DataTemplate** used to visualize each
**DataPoint** within the series.

	The following code snippet demonstrates how you can customize the visual representation for each data point.

		<telerikChart:BarSeries>
		    <telerikChart:BarSeries.PointTemplate>
		        <DataTemplate>
		            <Ellipse Width="20" Height="20" Fill="Green" Stroke="Red"/>
		        </DataTemplate>
		    </telerikChart:BarSeries.PointTemplate>
		</telerikChart:BarSeries>

	>Using **DataTemplate** for each **DataPoint** may degrade the chart's performance as more complex visual trees are created. Default visuals are internally created in case no **PointTemplate** is specified.
* **PointTemplateSelector** (DataTemplateSelector): Defines additional flexibility for providing a
**DataTemplate** object on a per data point basis, depending on the current context.
* **PointTemplates** (ObservableCollection<DataTemplate>): Defines a collection of **DataTemplate** objects
that can be used to specify an index-based set of templates to be continuously distributed among all data points. For example, if you have two templates in the **PointTemplates** collection, then each odd point in the **DataPoints** collection will take the second template.

	The following code snippet demonstrates how to add two different data templates to the **PointTemplates** collection.

		<telerikChart:BarSeries>
		    <telerikChart:BarSeries.PointTemplates>
		        <DataTemplate>
		            <Rectangle Width="20" Height="20" Stroke="Red" Fill="Green"/>
		        </DataTemplate>
		        <DataTemplate>
		            <Ellipse Width="20" Height="20" Stroke="Red" Fill="Green"/>
		        </DataTemplate>
		    </telerikChart:BarSeries.PointTemplates>
		</telerikChart:BarSeries>

* **DefaultVisualStyle** (Style): Defines an entry point that may be used to change the appearance of the internally created visuals (if any). These visuals depend on the series type. For example, the **BarSeries** will create **Border** instances while financial series, like the **CandlestickSeries**, will create a special
shape that represents the financial data in the best possible way.

	The following code snippet demonstrates how to change the default appearance of the **Border** instances within a **BarSeries**.

		<telerikChart:BarSeries>
		    <telerikChart:BarSeries.DefaultVisualStyle>
		        <Style TargetType="Border">
		            <Setter Property="Background" Value="Red"/>
		        </Style>
		    </telerikChart:BarSeries.DefaultVisualStyle>
		</telerikChart:BarSeries>