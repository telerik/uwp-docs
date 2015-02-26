---
title: Features
page_title: Features
description: RadLoopingList Features
slug: loopinglist-features
tags: radloopinglist,loopinglist
published: True
position: 2
---

# Features

## Collapsing

By default the RadLoopingList control shows its selected item and other items which fit into its layout slot. In some cases you might want to display the other items only when the user is interacting with the control but to otherwise keep only the selected one visible. This is done by using the **IsExpanded** property of RadLoopingList.

	<telerikLoopingList:RadLoopingList x:Name="loopingList" IsExpanded="False" ManipulationStarted="loopingList_ManipulationStarted" ManipulationCompleted="loopingList_ManipulationCompleted"/>
	
	private void loopingList_ManipulationStarted(object sender, ManipulationStartedRoutedEventArgs e)
	{
	    this.loopingList.IsExpanded = true;
	}
	
	private void loopingList_ManipulationCompleted(object sender, ManipulationCompletedRoutedEventArgs e)
	{
	    this.loopingList.IsExpanded = false;
	}

## Item Size

You can control the size of the RadLoopingList control's visual items by using the following properties: 

- **ItemWidth**: specifies the width of the item.
- **ItemHeight**: specifies the height of the item.
- **ItemSpacing**: specifies the space between the items.

Here is an example of a RadLoopingList control with items having width of 120, height of 50 and spacing equal to 10.

	<telerikLoopingList:RadLoopingList ItemWidth="120" ItemHeight="50" ItemSpacing="10" />

## Snapping

RadLoopingList supports defining different centering positions for the selected item when the IsCentered property is set to true. This is done via the **CenteredItemSnapPosition** property, that  accepts the following values:

- **Middle**: The default value and it implies that the selected item is positioned in the center of the viewport.
- **Near**: Implies that the selected item is positioned at the near viewport edge of RadLoopingList. In horizontal scrolling mode that means at the left side of the control, whereas in vertical scrolling mode that means at the top edge of the viewport.
- **Far**: Implies that the selected item is positioned at the far viewport edge of RadLoopingList. In horizontal scrolling mode that means at the right side of the control, whereas in vertical scrolling mode that means at the bottom edge of the viewport.

RadLoopingList exposes the SnapOffsetCorrection property which accepts double values and defines the offset correction applied to the selected item when it is snapped.
For instance, when the CenteredItemSnapPosition property is set to Far and the SnapOffsetCorrection property is set to -15, the selected item will be snapped to the far edge of the viewport and then a correction of 15 pixels off the new scroll position will be made.

>The SnapOffsetCorrection is applicable only when the IsCentered property of RadLoopingList is set to true.

## Looping

The looping feature can be turned on an off with the **IsLoopingEnabled** property.

## Read-only mode

RadLoopingList can be put into a read only state via the **IsManipulationEnabled** property. This effectively enables or disables end-user interaction with the control. It can still be controlled programmatically.

## Events

RadLoopingList exposes two very simple events. These are **SelectedIndexChanged** and **ScrollCompleted**.
ScrollCompleted is fired when the scrolling animation finishes. It is important to note that snapping also triggers this event.
SelectedIndexChanged on the other hand fires when the user selects an item, when the **SelectedIndex** property of RadLoopingList is set through code and when the item is automatically centered and selected by the snapping feature.
