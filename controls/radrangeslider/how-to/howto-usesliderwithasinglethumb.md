---
title: Create RadRangeSlider with a Single Thumb
page_title: Create RadRangeSlider with a Single Thumb
description: Create RadRangeSlider with a Single Thumb
slug: radrangeslider-howto-usesliderwithasinglethumb
tags: create,radrangeslider,with,a,single,thumb
published: True
position: 0
---

# Create RadRangeSlider with a Single Thumb

The following example demonstrates how to remove the SelectionStart thumb of the slider.  
![Rad Range Slider-How To-One Thumb](images/RadRangeSlider-HowTo-OneThumb.png)

You have to add the following references:
	
	xmlns:telerikPrimitives ="using:Telerik.UI.Xaml.Controls.Primitives"
	xmlns:telerikRrangeSliderPrimitives ="using:Telerik.UI.Xaml.Controls.Primitives.RangeSlider"

Here is the RadRangeSlider setup:

> You will have to disable the SelectionMiddleThumb by setting its IsHitTestVisible property to false.

	<telerikInput:RadRangeSlider Grid.Row="0" Minimum="0" SelectionStart="0" TickFrequency="10" Width="300">
	    <telerikInput:RadRangeSlider.SliderPrimitiveStyle>
	        <Style TargetType="telerikPrimitives:RangeSliderPrimitive">
	            <Setter Property="SelectionStartThumbStyle">
	                <Setter.Value>
	                    <Style TargetType="Thumb">
	                        <Setter Property="Visibility" Value="Collapsed"/>
	                    </Style>
	                </Setter.Value>
	            </Setter>
	            <Setter Property="SelectionMiddleThumbStyle">
	                <Setter.Value>
	                    <Style TargetType="Thumb">
	                        <Setter Property="BorderThickness" Value="0"/>
	                        <Setter Property="Background" Value="#FF006AC1"/>
	                        <Setter Property="Height" Value="11"/>
	                        <Setter Property="IsHitTestVisible" Value="False"/>
	                    </Style>
	                </Setter.Value>
	            </Setter>
	        </Style>
	    </telerikInput:RadRangeSlider.SliderPrimitiveStyle>
	</telerikInput:RadRangeSlider>