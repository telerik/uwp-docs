---
title: Display Horizontal Bar Chart
page_title: Display Horizontal Bar Chart
description: Check our &quot;Display Horizontal Bar Chart&quot; documentation article for RadChart for UWP control.
slug: radchart-howto-display-horizontal-bar-chart
tags: display,horizontal,bar,chart
published: True
position: 1
---

# Display Horizontal Bar Chart



RadChart allows a series to be rendered vertically as well as horizontally.
          A series position depends on the axes that you define. Thus in order to display a bar series horizontally,
          you need to define the category axis as a vertical axis, rather than a horizontal axis.
        Define a Bar Chart with a Horizontal Series

The following example demonstrates how to create a RadCartesianChart with horizontal BarSeries.![Chart-How To-Horizontal Bar Chart](images/Controls/Chart/HowTo/Chart-HowTo-HorizontalBarChart.png)

Create a bar chart with swapped axes.

{{region HorizontalBarChart}}
	        <telerik:RadCartesianChart>
	            <telerik:RadCartesianChart.HorizontalAxis>
	                <telerik:LinearAxis/>
	            </telerik:RadCartesianChart.HorizontalAxis>
	            <telerik:RadCartesianChart.VerticalAxis>
	                <telerik:CategoricalAxis/>
	            </telerik:RadCartesianChart.VerticalAxis>
	            <telerik:BarSeries CombineMode="Cluster" ItemsSource="{Binding Data1}">
	                <telerik:BarSeries.ValueBinding>
	                    <telerik:PropertyNameDataPointBinding PropertyName="Value"/>
	                </telerik:BarSeries.ValueBinding>
	                <telerik:BarSeries.CategoryBinding>
	                    <telerik:PropertyNameDataPointBinding PropertyName="Category"/>
	                </telerik:BarSeries.CategoryBinding>
	            </telerik:BarSeries>
	            <telerik:BarSeries CombineMode="Cluster" ItemsSource="{Binding Data2}">
	                <telerik:BarSeries.ValueBinding>
	                    <telerik:PropertyNameDataPointBinding PropertyName="Value"/>
	                </telerik:BarSeries.ValueBinding>
	                <telerik:BarSeries.CategoryBinding>
	                    <telerik:PropertyNameDataPointBinding PropertyName="Category"/>
	                </telerik:BarSeries.CategoryBinding>
	            </telerik:BarSeries>
	        </telerik:RadCartesianChart>
	{{endregion}}



Create a sample class for data:

{{region SampleData}}
	    public class SampleData
	    {
	        public double Value { get; set; }
	        public string Category { get; set; }
	    }
	{{endregion}}



Create the view model:

{{region SampleViewModel}}
	    public class SampleViewModel
	    {
	        private Random r = new Random();
	
	        public IEnumerable Data1 { get; private set; }
	        public IEnumerable Data2 { get; private set; }
	
	
	        public SampleViewModel()
	        {
	            this.Data1 = (from c in Enumerable.Range(0, 10)
	                          select new SampleData
	                          {
	                              Category = "Category " + c,
	                              Value = r.Next(10, 100)
	                          }).ToList();
	
	            this.Data2 = (from c in Enumerable.Range(0, 10)
	                          select new SampleData
	                          {
	                              Category = "Category " + c,
	                              Value = r.Next(10, 100)
	                          }).ToList();
	        }
	    }
	
	{{endregion}}



Set the chart data context.

{{region SetDataContext}}
	        protected override void OnNavigatedTo(NavigationEventArgs e)
	        {
	            this.DataContext = new SampleViewModel();
	        }
	{{endregion}}


