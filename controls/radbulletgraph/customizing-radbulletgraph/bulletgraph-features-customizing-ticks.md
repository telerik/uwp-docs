---
title: Customizing Scale Ticks
page_title: Customizing Scale Ticks
description: Check our &quot;Customizing Scale Ticks&quot; documentation article for RadBulletGraph for UWP control.
slug: bulletgraph-features-customizing-ticks
tags: customizing,scale,ticks
published: True
position: 1
---

# Customizing Scale Ticks

RadBulletGraph gives you the ability to control the appearance of its scale ticks.

## Ticks Display Interval

You can control the display intervals of scale ticks via the **TickStep** property.

	<telerik:RadBulletGraph TickStep="25"/>

## Styling Scale Ticks

RadBulletGraph has a **TickTemplate** making its ticks fully customizable.

	<telerik:RadBulletGraph>
		<telerik:RadBulletGraph.TickTemplate>
			<DataTemplate>
				<StackPanel Orientation="Horizontal">
					<Ellipse Fill="Red" Height="5" Width="5"/>
					<TextBlock Text="{Binding}"/>
				</StackPanel>
			</DataTemplate>
		</telerik:RadBulletGraph.TickTemplate>
	</telerik:RadBulletGraph>
