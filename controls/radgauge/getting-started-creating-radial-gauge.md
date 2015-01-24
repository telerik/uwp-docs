---
title: Getting started
page_title: Getting started
description: Getting started
slug: radgauge-getting-started-creating-radial-gauge
tags: getting,started
published: True
position: 1
---

# Getting started

This tutorial will help you quickly setup and integrate a gauge into a running application.

## Add References

Add a reference to the **Telerik UI for Windows Universal** extension SDK or to your binaries folder.
If you choose to add binaries, you will need the following references:

* **Telerik.Core**
* **Telerik.UI.Xaml.Primitives**
* **Telerik.UI.Xaml.DataVisualization**

## Define a Linear/Radial Gauge

First, add Telerik namespace in MainPage.xaml:

	xmlns:telerik="using:Telerik.UI.Xaml.Controls.DataVisualization"

and then define a Radial/Linear Gauge in XAML:

* **Radial Gauge**

		<telerik:RadRadialGauge/>

* **Linear Gauge**

		<telerik:RadLinearGauge/>


