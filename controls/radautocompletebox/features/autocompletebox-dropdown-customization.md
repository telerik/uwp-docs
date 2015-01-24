---
title: Drop-down Behavior
page_title: Drop-down Behavior
description: Drop-down Behavior
slug: autocompletebox-dropdown-customization
tags: drop-down,behavior
published: True
position: 5
---

# Drop-down Behavior

RadAutoCompleteBox exposes functionality for adjusting the behavior of the drop-down in which filtered items are populated.

## Using the DropDownPlacement Property

By default, the location of the popup is automatically calculated based on the available screen real estate. However, it is possible to manually control the drop-down position via the DropDownPlacement property exposed by RadAutoCompleteBox. The DropDownPlacement property defines the location of the drop-down relative to the textbox part of the control and accepts the following values defined in the AutoCompleteBoxPlacementMode enumeration:

* **Auto**: The position of the drop-down is dynamically calculated based on the available screen estate (the favored position is below the textbox).
* **Top**: The drop-down is always displayed above the input field.
* **Bottom**: The drop-down is always displayed below the input field.
* **None**: The drop-down is not displayed. In this scenario the FilteredItems property of RadAutoCompleteBox can be bound to an external list control to display the available suggestion items.

The following XAML code snippet demonstrates how to set the DropDownPlacement property:

	<telerikInput:RadAutoCompleteBox DropDownPlacement="Top" VerticalAlignment="Top" Width="200" />

## Using the DropDownMaxHeight Property

RadAutoCompleteBox exposes the DropDownMaxHeight property to support customization of the maximum height constraint for the drop-down that holds the available suggestion items.

The following XAML code snippet demonstrates how to set the DropDownMaxHeight property:
 
	<telerikInput:RadAutoCompleteBox DropDownMaxHeight="600" VerticalAlignment="Top" Width="200" />

## Using the IsDropDownOpen Property

RadAutoCompleteBox exposes the IsDropDownOpen property to support programmatic opening and closing of the drop-down that holds the available suggestion items. Here is the expected state of the drop-down filtered items when the popup is opened programmatically:

* If the textbox part of the control is empty, the drop-down (and the FilteredItems property of RadAutoCompleteBox) will contain all available items that are bound to the control instance.
* If the textbox part of the control is non-empty and has partial text match (based on the current filtering rules), the drop-down (and the FilteredItems property of RadAutoCompleteBox) will contain the subset of all items bound to the control instance that match the current text input.
* If the textbox part of the control is non-empty and has no text match (based on the current filtering rules), the drop-down (and the FilteredItems property of RadAutoCompleteBox) will contain an empty collection of items.
            
The following XAML code snippet demonstrates how to set the IsDropDownOpen property in order to achieve initially opened drop-down on application startup:

	<telerikInput:RadAutoCompleteBox x:Name="autoCompleteBox" VerticalAlignment="Top" Width="200" Loaded="autoCompleteBox_Loaded" />

	private void autoCompleteBox_Loaded(object sender, RoutedEventArgs e)
	{
	    autoCompleteBox.IsDropDownOpen = true;
	}

# See Also

 * [Inline Filtered Items Display]({%slug autocompletebox-inline-filtered-items%})
 * [Drop-down Styling]({%slug autocompletebox-styling-suggestions-dropdown%})
