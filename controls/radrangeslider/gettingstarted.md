---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: radrangeslider-gettingstarted
tags: getting,started
published: True
position: 1
---

# Getting Started

## How to create a basic RadRangeSlider

This quick start tutorial will help you setup and add a **RadRangeSlider**
control to an application.

1. First you have to add a reference to the Telerik UI for Windows Universal extension SDK or
to the binaries. If you choose to add binaries, you will need the following
references:

* **Telerik.Core**
* **Telerik.UI.Xaml.Primitives**
* **Telerik.UI.Xaml.Input**
1. Add the following namespace in the MainPage.xaml:

		xmlns:telerikInput="using:Telerik.UI.Xaml.Controls.Input"

1. Define a RadRangeSlider in XAML:

		<telerikInput:RadRangeSlider Width="300" TickFrequency="10" SelectionStart="40" SelectionEnd="90"/>

The result is:

![Rad Range Slider-Getting Started](images/RadRangeSlider-GettingStarted.png)

# See Also

 * [Properties and Configuration]({%slug radrangeslider-propertiesandconfiguration%})
