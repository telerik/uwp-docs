---
title: Financial Indicators
page_title: Financial Indicators
description: Check our &quot;Financial Indicators&quot; documentation article for RadChart for UWP control.
slug: radchart-series-radcartesianchart-indicators-indicators
tags: financial,indicators
published: True
position: 3
---

# Financial Indicators

## Overview

Financial Indicators are collection of DataPoints (calculated with different algorithms using the series data) visualizing using Line Shape.

Financial Indicators can be separated into two groups:

### Trend Line

Recommended for visualizing over the current series:

* **AdaptiveMovingAverageKaufmanIndicator**
* **BollingerBandsIndicator**
* **ExponentialMovingAverageIndicator**
* **ModifiedExponentialMovingAverageIndicator**
* **ModifiedMovingAverageIndicator**
* **MovingAverageIndicator**
* **WeightedMovingAverageIndicator**

### Financial Indicator

Recommended for visualizing in a separate Chart:

* **AverageTrueRangeIndicator**
* **CommodityChannelIndexIndicator**
* **MacdIndicator**
* **MacdhIndicator**
* **MomentumIndicator**
* **OscillatorIndicator**
* **RaviIndicator**
* **RateOfChangeIndicator**
* **RelativeMomentumIndexIndicator**
* **RelativeStrengthIndexIndicator**
* **StochasticFastIndicator**
* **StochasticSlowIndicator**
* **TrixIndicator**
* **TrueRangeIndicator**
* **UltimateOscillatorIndicator**

## Example

Here's an example with one Ohlc Series using one Trend Line(over the series) and one Financial Indicator(on the right):

![Chart Indicators Example](images/ChartIndicatorsExample.png)

	<telerikChart:RadCartesianChart x:Name="OhlcChart" Width="700" Height="700" PaletteName="DefaultLightSelected" HorizontalAlignment="Left">
	    <telerikChart:RadCartesianChart.Indicators>
	
	        <telerikChart:BollingerBandsIndicator ItemsSource="{Binding}" Period="2" StandardDeviations="2" Stroke="White" StrokeThickness="2" LowerBandStroke="Red">
	            <telerikChart:BollingerBandsIndicator.ValueBinding>
	                <telerikChart:PropertyNameDataPointBinding PropertyName="Close"/>
	            </telerikChart:BollingerBandsIndicator.ValueBinding>
	            <telerikChart:BollingerBandsIndicator.CategoryBinding>
	                <telerikChart:PropertyNameDataPointBinding PropertyName="Date"/>
	            </telerikChart:BollingerBandsIndicator.CategoryBinding>
	        </telerikChart:BollingerBandsIndicator>
	
	    </telerikChart:RadCartesianChart.Indicators>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:DateTimeCategoricalAxis LabelFormat="{}{0,0:dd/MM}"/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:RadCartesianChart.Series>
	        <telerikChart:CandlestickSeries ItemsSource="{Binding}">
	            <telerikChart:CandlestickSeries.CategoryBinding>
	                <telerikChart:PropertyNameDataPointBinding PropertyName="Date"/>
	            </telerikChart:CandlestickSeries.CategoryBinding>
	            <telerikChart:CandlestickSeries.HighBinding>
	                <telerikChart:PropertyNameDataPointBinding PropertyName="High"/>
	            </telerikChart:CandlestickSeries.HighBinding>
	            <telerikChart:CandlestickSeries.LowBinding>
	                <telerikChart:PropertyNameDataPointBinding PropertyName="Low"/>
	            </telerikChart:CandlestickSeries.LowBinding>
	            <telerikChart:CandlestickSeries.OpenBinding>
	                <telerikChart:PropertyNameDataPointBinding PropertyName="Open"/>
	            </telerikChart:CandlestickSeries.OpenBinding>
	            <telerikChart:CandlestickSeries.CloseBinding>
	                <telerikChart:PropertyNameDataPointBinding PropertyName="Close"/>
	            </telerikChart:CandlestickSeries.CloseBinding>
	        </telerikChart:CandlestickSeries>
	    </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
	<telerikChart:RadCartesianChart x:Name="secondChart" HorizontalAlignment="Right" Width="700" Height="700" >
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:DateTimeCategoricalAxis LabelFormat="{}{0,0:dd/MM}"/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:RadCartesianChart.Indicators>
	        <telerikChart:MacdhIndicator ItemsSource="{Binding}" ShortPeriod="2" SignalPeriod="4" LongPeriod="10">
	            <telerikChart:MacdhIndicator.PointTemplate>
	                <DataTemplate>
	                    <Rectangle Fill="#B45121" Stroke="#80D6F4"/>
	                </DataTemplate>
	            </telerikChart:MacdhIndicator.PointTemplate>
	            <telerikChart:MacdhIndicator.ValueBinding>
	                <telerikChart:PropertyNameDataPointBinding PropertyName="Close"/>
	            </telerikChart:MacdhIndicator.ValueBinding>
	            <telerikChart:MacdhIndicator.CategoryBinding>
	                <telerikChart:PropertyNameDataPointBinding PropertyName="Date"/>
	            </telerikChart:MacdhIndicator.CategoryBinding>
	        </telerikChart:MacdhIndicator>
	    </telerikChart:RadCartesianChart.Indicators>
	</telerikChart:RadCartesianChart>
	
The data class:

	public class FinancialData
	{
	    public double High { get; set; }
	    public double Low { get; set; }
	    public double Open { get; set; }
	    public double Close { get; set; }
	    public DateTime Date { get; set; }
	}

The sample data:
	
	List<FinancialData> SampleData = new List<FinancialData>();
	
	SampleData.Add(new FinancialData() { High = 31.1, Open = 30.33, Low = 30.19, Close = 30.66, Date = new DateTime(2010, 1, 4) });
	SampleData.Add(new FinancialData() { High = 31.24, Open = 30.62, Low = 29.91, Close = 30.86, Date = new DateTime(2010, 1, 11) });
	SampleData.Add(new FinancialData() { High = 31.24, Open = 30.75, Low = 28.84, Close = 28.96, Date = new DateTime(2010, 1, 19) });
	SampleData.Add(new FinancialData() { High = 29.92, Open = 29.24, Low = 27.66, Close = 28.18, Date = new DateTime(2010, 1, 25) });
	SampleData.Add(new FinancialData() { High = 28.79, Open = 28.39, Low = 27.57, Close = 28.02, Date = new DateTime(2010, 2, 1) });
	
	SampleData.Add(new FinancialData() { High = 28.4, Open = 28.01, Low = 27.57, Close = 27.93, Date = new DateTime(2010, 2, 8) });
	SampleData.Add(new FinancialData() { High = 29.03, Open = 28.13, Low = 28.02, Close = 28.77, Date = new DateTime(2010, 2, 16) });
	SampleData.Add(new FinancialData() { High = 28.94, Open = 28.84, Low = 28.02, Close = 28.67, Date = new DateTime(2010, 2, 22) });
	SampleData.Add(new FinancialData() { High = 29.3, Open = 28.77, Low = 28.24, Close = 28.59, Date = new DateTime(2010, 3, 1) });
	SampleData.Add(new FinancialData() { High = 29.38, Open = 28.52, Low = 28.5, Close = 29.27, Date = new DateTime(2010, 3, 8) });
	this.OhlcChart.DataContext = SampleData;
	this.secondChart.DataContext = SampleData;