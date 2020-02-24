---
title: Explicit Styling
page_title: Explicit Styling
description: Check our &quot;Explicit Styling&quot; documentation article for RadDatePicker and RadTimePicker for UWP controls.
slug: raddatetimepickers-explicitstyling
tags: explicit,styling
published: True
position: 0
---

# Explicit Styling

## Selector Button Style

The following example demonstrates how to style the text in the selection part of the **RadDatePicker** control.


You have to define an explicit
style in the Resources of the control that targets the **DateTimePickerButton** class,
which is defined in the **Telerik.UI.Xaml.Controls.Input.DateTimePickers** namespace.


	<telerikInput:RadDatePicker>
	    <telerikInput:RadDatePicker.Resources>
	        <Style TargetType="telerikDTP:DateTimePickerButton">
	            <Setter Property="Foreground" Value="Orange"/>
	            <Setter Property="FontSize" Value="25"/>
	            <Setter Property="FontStyle" Value="Italic"/>
	            <Setter Property="Background" Value="Beige"/>
	        </Style>
	    </telerikInput:RadDatePicker.Resources>
	</telerikInput:RadDatePicker>

Where:
	
	xmlns:telerikInput="using:Telerik.UI.Xaml.Controls.Input"
	xmlns:telerikDTP="using:Telerik.UI.Xaml.Controls.Input.DateTimePickers"

This is the result:

![Rad Date Time Picker-Selector Button Style](images/ExplicitStyling/RadDateTimePicker-SelectorButtonStyle.png)

# See Also

 * [Telerik Named Brushes]({%slug raddatetimepickers-teleriknamedbrushes%})