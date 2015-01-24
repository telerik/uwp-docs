---
title: Create RadRangeSlider with a Single Scale
page_title: Create RadRangeSlider with a Single Scale
description: Create RadRangeSlider with a Single Scale
slug: radrangeslider-howto-createsliderwithsinglescale
tags: create,radrangeslider,with,a,single,scale
published: True
position: 1
---

# Create RadRangeSlider with a Single Scale

The following example demonstrates how to remove the ScaleTopLeft of the slider.

![Rad Range Slider-How To-One Scale](images/RadRangeSlider-HowTo-OneScale.png)

You have to add the following references:
	
	xmlns:telerikPrimitives ="using:Telerik.UI.Xaml.Controls.Primitives"
	xmlns:telerikRrangeSliderPrimitives ="using:Telerik.UI.Xaml.Controls.Primitives.RangeSlider"

Here is the RadRangeSlider setup:

	<telerikInput:RadRangeSlider TickFrequency="10" Width="300">
	    <telerikInput:RadRangeSlider.TopLeftScaleStyle>
	        <Style TargetType="telerikPrimitives:ScalePrimitive">
	            <Setter Property="Visibility" Value="Collapsed"/>
	        </Style>
	    </telerikInput:RadRangeSlider.TopLeftScaleStyle>
	</telerikInput:RadRangeSlider>