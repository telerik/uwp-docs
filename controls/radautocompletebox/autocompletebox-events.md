---
title: Events
page_title: Events
description: Events
slug: autocompletebox-events
tags: events
published: True
position: 4
---

# Events

## Public Events

RadAutoCompleteBox exposes two public events that can be useful for scenarios that the control does not support out-of-the-box:
        
* **TextChanged**: Occurs when content changes in the text box.
* **SelectionChanged**: Occurs when the user selects an item from the drop-down list of filtered items.

## Handling the TextChanged Event

The following XAML code snippet demonstrates how to subscribe to the TextChanged event of RadAutoCompleteBox:

	<telerikInput:RadAutoCompleteBox x:Name="radAutoCompleteBox" Width="200" VerticalAlignment="Top" TextChanged="RadAutoCompleteBox_TextChanged" />

The following C# code snippet demonstrates how to handle the TextChanged event of RadAutoCompleteBox:

	private void RadAutoCompleteBox_TextChanged(object sender, TextChangedEventArgs e)
	{
		if (radAutoCompleteBox.Text == "Suggestion 21")
		{
			// handle case accordingly...
		}
	}

## Handling the SelectionChanged Event

The following XAML code snippet demonstrates how to subscribe to the SelectionChanged event of RadAutoCompleteBox:

	<telerikInput:RadAutoCompleteBox x:Name="radAutoCompleteBox2" Width="200" VerticalAlignment="Top" SelectionChanged="RadAutoCompleteBox_SelectionChanged" />

In the event handler of the SelectionChanged event you have access to the item that has been picked. The following C# code snippet gives an example of how the SelectionChanged event can be handled:

	private void RadAutoCompleteBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
	{
		if (e.AddedItems.Count == 0)
		{
			return;
		}

		string selectedItem = e.AddedItems[0] as string;
		if (selectedItem == "Suggestion 26")
		{
			// handle case accordingly...
		}
	}

# See Also

 * [Getting Started]({%slug autocompletebox-gettingstarted%})
