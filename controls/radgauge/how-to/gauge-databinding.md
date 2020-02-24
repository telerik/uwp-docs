---
title: How to Bind to Business Objects
page_title: How to Bind to Business Objects
description: Check our &quot;How to Bind to Business Objects&quot; documentation article for RadGauge for UWP control.
slug: gauge-databinding
tags: how,to,bind,to,business,objects
published: True
position: 0
---

# How to Bind to Business Objects

This article will demonstrate how to bind the **RadGauge** control properties to business objects.

In this example we will use the **RadLinearGauge** control to display some temperature ranges and update the temperature value through a view model.

![How To Bind To View Model Example](images/HowToBindToViewModelExample.png)

1. First, let us create a ViewModel class. It is important that the ViewModel implements the **INotifyPropertyChanged** interface and raises the **PropertyChanged** event for the properties that will be updated runtime.

		public class ViewModel : INotifyPropertyChanged
		{
		    private double temperature;
		
		    public ViewModel()
		    {
		        this.Temperature = 35;
		        this.Min = 20;
		        this.Average = 30;
		        this.Max = 50;
		    }
		
		    public event PropertyChangedEventHandler PropertyChanged;
		
		    public double Temperature
		    {
		        get
		        {
		            return this.temperature;
		        }
		        set
		        {
		            if (this.temperature != value)
		            {
		                this.temperature = value;
		                this.OnPropertyChanged("Temperature");
		            }
		        }
		    }
		
		    public double Min { get; set; }
		
		    public double Average { get; set; }
		
		    public double Max { get; set; }
		
		    protected virtual void OnPropertyChanged(string propertyName)
		    {
		        PropertyChangedEventHandler handler = this.PropertyChanged;
		        if (handler != null)
		        {
		            handler(this, new PropertyChangedEventArgs(propertyName));
		        }
		    }
		}

1. Then, let us create the **RadLinearGauge** control with several indicators.

		<telericGauge:RadLinearGauge MaxValue="100" MinValue="0" Orientation="Vertical" Height="300">
		    <telericGauge:RadLinearGauge.DataContext>
		        <local:ViewModel/>
		    </telericGauge:RadLinearGauge.DataContext>
		    <telericGauge:SegmentedLinearGaugeIndicator Value="100" >
		        <telericGauge:BarIndicatorSegment Stroke="Green" Length="{Binding Min}"/>
		        <telericGauge:BarIndicatorSegment Stroke="Orange" Length="{Binding Average}"/>
		        <telericGauge:BarIndicatorSegment Stroke="Red" Length="{Binding Max}"/>
		    </telericGauge:SegmentedLinearGaugeIndicator>
		    <telericGauge:MarkerGaugeIndicator Value="{Binding Temperature}">
		        <telericGauge:MarkerGaugeIndicator.Content>
		            <TextBlock Foreground="Gray" Margin="0,0,50,0">
		                <Run Text="{Binding Temperature}"/>
		                <Run Text="°C"/>
		            </TextBlock>
		        </telericGauge:MarkerGaugeIndicator.Content>
		    </telericGauge:MarkerGaugeIndicator>
		    <telericGauge:MarkerGaugeIndicator Value="{Binding Temperature}">
		        <telericGauge:MarkerGaugeIndicator.Content>
		            <Rectangle Fill="Gray" Width="10" Height="10"/>
		        </telericGauge:MarkerGaugeIndicator.Content>
		    </telericGauge:MarkerGaugeIndicator>
		</telericGauge:RadLinearGauge>

1. Now, if we update the **ViewModel.Temperature** property, the **RadLinearGauge** will update its indicators.
