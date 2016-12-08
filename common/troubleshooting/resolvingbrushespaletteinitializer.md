---
title: Exception when using Custom Control Template
page_title: Exception when using Custom Control Template
description: Exception when using Custom Control Template
slug: controls-troubleshooting-resolvingbrushespaletteinitializer
tags: exception,when,using,custom,control,template
published: True
position: 0
---

# Exception when using Custom Control Template

When customizing default control template of any of our Telerik controls make sure that you have created an instance of the PaletteInitializer class in your application resources.
        
Example:

	<theming:PaletteInitializer x:Key="PaletteInitializer"/>

Where: 

* *xmlns:theming="using:Telerik.UI.Xaml.Controls.Chart.Theming"* - when customizing the default control template of RadChart
* *xmlns:theming="using:Telerik.UI.Xaml.Controls.Input.Theming"* - when customizing the default control template of RadDatePicker, RadTimePicker or RadAutoCompleteBox
* *xmlns:theming="using:Telerik.UI.Xaml.Controls.Primitives.Theming"* - when customizing the default control template of RadHubTile or RadLegendControl
* *xmlns:theming="using:Telerik.UI.Xaml.Controls.DataVisualization.Theming"* - when customizing the default control template of RadGauge or RadBulletGraph
