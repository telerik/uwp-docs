---
title: Properties
page_title: Properties
description: Properties
slug: radchart-legendcontrol-properties
tags: properties
published: True
position: 1
---

# Properties

* **LegendProvider**: Gets or sets the chart provider that a **RadLegendControl** will use to display its items.

	Here's an example:

		<telerikPrimitives:RadLegendControl LegendProvider="{Binding ElementName=chartName}"/>
* **ItemsPanel**: Represents the items panel that will be used for the legend to display its data.

	Here's an example:

		<telerikPrimitives:RadLegendControl.ItemsPanel>
			<ItemsPanelTemplate>
				<StackPanel/>
			</ItemsPanelTemplate>
		</telerikPrimitives:RadLegendControl.ItemsPanel>
* **ItemTemplate**: Gets or sets the **DataTemplate** used to display each legend item.

	Here's an example:

		<telerikPrimitives:RadLegendControl.ItemTemplate>
		    <DataTemplate>
		        <StackPanel Orientation="Horizontal">
		            <Ellipse Fill="{Binding Fill}" Stroke="{Binding Stroke}" StrokeThickness="1" Width="10" Height="10"/>
		            <TextBlock Text="{Binding Title}" Foreground="{Binding Fill}" Margin="10">
		            </TextBlock>
		        </StackPanel>
		    </DataTemplate>
		</telerikPrimitives:RadLegendControl.ItemTemplate>
* **LegendItems**: Represents a collection of **LegendItem** items that will be displayed. It can be used in [Unbound Mode]({%slug radchart-legendcontrol-unboundmode%}), i.e., you don't use the **LegendProvider** property to bind to a chart's source, but manually create your custom **LegendItems**.

	Here's an example:

		<telerikPrimitives:RadLegendControl>
		    <telerikPrimitives:RadLegendControl.LegendItems>
		        <telerikPrimitives:LegendItem Stroke="LightGreen" Fill="Black" Title="Green"/>
		        <telerikPrimitives:LegendItem Stroke="Yellow" Fill="Black" Title="Yellow"/>
		    </telerikPrimitives:RadLegendControl.LegendItems>
		</telerikPrimitives:RadLegendControl>
