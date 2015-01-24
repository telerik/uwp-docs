---
title: How to Generate a Dynamic Seires Using a Collection of ViewModels
page_title: How to Generate a Dynamic Seires Using a Collection of ViewModels
description: How to Generate a Dynamic Seires Using a Collection of ViewModels
slug: radchart-cartesianchart-series-dynamicseries-usingviewmodelscollection
tags: how,to,generate,a,dynamic,seires,using,a,collection,of,viewmodels
published: True
position: 4
---

# How to Generate a Dynamic Seires Using a Collection of ViewModels

The following example demonstrates how to generate dynamic series that use a collection of view models as a context.

![Dynamic Series Using Collection View Models](images/DynamicSeriesUsingCollectionViewModels.png)

1. Create a class that represents a single **DataPoint** and also a **ViewModel** class with a property to hold the collection of **DataPoints** for each series.

		public class Data
		{
			public double Value { get; set; }
			
			public string Category { get; set; }
		}
		
		public class ViewModel
		{
			public List<Data> GetData { get; set; }
		}

1. Create two methods to help us create a collection of view models and create sample data for each one.

		public List<Data> GenerateData()
		{
			List<Data> data = new List<Data>();
			data.Add(new Data { Category = "Apple", Value = r.Next(1, 20) });
			data.Add(new Data { Category = "Orange", Value = r.Next(10, 30) });
			data.Add(new Data { Category = "Lemon", Value = r.Next(20, 40) });
			
			return data;
		}
		
		public List<ViewModel> GenerateCollection()
		{
			List<ViewModel> collection = new List<ViewModel>();
			for (int i = 0; i < 5; i++)
			{
				ViewModel vm = new ViewModel();
				vm.GetData = GenerateData();
				collection.Add(vm);
			}
			
			return collection;
		}

	Here **r** is a random number.
	
		Random r = new Random();

1. Set the created collection of view models as a **Source** of the **ChartSeriesProvider**.

		this.provider.Source = GenerateCollection();

1. Finally, create the chart using XAML. This sample uses the **ItemsSourcePath** property to set the path to the property of the view models.

		<telerikChart:RadCartesianChart PaletteName="DefaultDark" >
		    <telerikChart:RadCartesianChart.HorizontalAxis>
		        <telerikChart:CategoricalAxis/>
		    </telerikChart:RadCartesianChart.HorizontalAxis>
		    <telerikChart:RadCartesianChart.VerticalAxis>
		        <telerikChart:LinearAxis/>
		    </telerikChart:RadCartesianChart.VerticalAxis>
		    <telerikChart:RadCartesianChart.SeriesProvider >
		        <telerikChart:ChartSeriesProvider x:Name="provider">
		            <telerikChart:ChartSeriesProvider.SeriesDescriptors>
		                <telerikChart:CategoricalSeriesDescriptor ItemsSourcePath="GetData" ValuePath="Value" CategoryPath="Category">
		                    <telerikChart:CategoricalSeriesDescriptor.Style>
		                        <Style TargetType="telerikChart:BarSeries">
		                            <Setter Property="CombineMode" Value="Cluster"/>
		                        </Style>
		                    </telerikChart:CategoricalSeriesDescriptor.Style>
		                </telerikChart:CategoricalSeriesDescriptor>
		            </telerikChart:ChartSeriesProvider.SeriesDescriptors>
		        </telerikChart:ChartSeriesProvider>
		    </telerikChart:RadCartesianChart.SeriesProvider>
		</telerikChart:RadCartesianChart>
