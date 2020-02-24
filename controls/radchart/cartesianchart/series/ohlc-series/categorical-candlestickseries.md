---
title: CandlestickSeries
page_title: CandlestickSeries
description: Check our &quot;CandlestickSeries&quot; documentation article for RadChart for UWP control.
slug: radchart-cartesianchart-series-categorical-candlestickseries
tags: candlestickseries
published: True
position: 2
---

# CandlestickSeries

## Overview

The **CandlestickSeries** is similar to the **[OhlcSeries]({%slug radchart-cartesianchart-series-categorical-ohlcseries%})**, but instead of tick marks, it uses a rectangle which horizontal sides define the opening and closing price. The rectangle is filled if the opening price is lower than closing one, otherwise it's empty.

![Candle Stick Series](images/CandleStickSeries.png)

>**CandlestickSeries** class inherits from the **OhlcSeriesBase** class - [See the inherited properties]({%slug radchart-series-cartesianchart-series-ohlcseries-ohlcbase%}).

## Example

Here's an example how to create **RadCartesianChart**with **CandleStickSeries**.

1. First, create a class for the sample data.
	
		public class FinancialData
		{
			public double High { get; set; }
		
			public double Low { get; set; }
		
			public double Open { get; set; }
		
			public double Close { get; set; }
		}

1. Then create the sample data.

		List<FinancialData> sampleData = new List<FinancialData>();
		sampleData.Add(new FinancialData() { High = 10, Open = 5, Low = 2, Close = 8 });
		sampleData.Add(new FinancialData() { High = 15, Open = 7, Low = 3, Close = 5 });
		sampleData.Add(new FinancialData() { High = 20, Open = 15, Low = 10, Close = 19 });
		sampleData.Add(new FinancialData() { High = 7, Open = 2, Low = 1, Close = 5 });
		sampleData.Add(new FinancialData() { High = 25, Open = 15, Low = 10, Close = 12 });
		
		this.candleStickSeries.DataContext = sampleData;

1. Finally, we are ready to create the chart using XAML.

		<telerikChart:RadCartesianChart x:Name="candlestickSeries">
		    <telerikChart:RadCartesianChart.VerticalAxis>
		        <telerikChart:LinearAxis/>
		    </telerikChart:RadCartesianChart.VerticalAxis>
		    <telerikChart:RadCartesianChart.HorizontalAxis>
		        <telerikChart:CategoricalAxis/>
		    </telerikChart:RadCartesianChart.HorizontalAxis>
		
		    <telerikChart:CandlestickSeries ItemsSource="{Binding}">
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
		</telerikChart:RadCartesianChart>
