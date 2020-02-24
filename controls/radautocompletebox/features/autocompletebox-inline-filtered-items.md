---
title: Inline Filtered Items Display
page_title: Inline Filtered Items Display
description: Check our &quot;Inline Filtered Items Display&quot; documentation article for RadAutoCompleteBox for UWP control.
slug: autocompletebox-inline-filtered-items
tags: inline,filtered,items,display
published: True
position: 7
---

# Inline Filtered Items Display

In some scenarios, you might need to show the filtered items from RadAutoCompleteBox inline in the page content instead of displaying them in the default drop-down visualization. To support this, RadAutoCompleteBox exposes the FilteredItems property that can be bound to a separate list control anywhere on the page.

## Using the FilteredItems Property

The FilteredItems property returns the filtered items that are available based on the current user input. You can use this property as a data source for any list control to display filtered items in it. If you also wish to prevent the suggestions drop-down from being displayed, you can use the DropDownPlacement property and set it to None.

The following XAML code snippet demonstrates a simple scenario where the suggestions provided by RadAutoCompleteBox are displayed in a ListBox placed below the RadAutoCompleteBox on the page:

	<Grid Background="{StaticResource ApplicationPageBackgroundThemeBrush}">
	    <Grid.RowDefinitions>
	        <RowDefinition Height="Auto"/>
	        <RowDefinition/>
		</Grid.RowDefinitions>

		<telerikInput:RadAutoCompleteBox x:Name="radAutoCompleteBox" DropDownPlacement="None" Width="200" VerticalAlignment="Top" />
		<ListBox ItemsSource="{Binding ElementName=radAutoCompleteBox, Path=FilteredItems}" Grid.Row="1" VerticalAlignment="Top" Width="400">
			<ListBox.ItemTemplate>
				<DataTemplate>
					<TextBlock Text="{Binding}"/>
				</DataTemplate>
			</ListBox.ItemTemplate>
		</ListBox>
	</Grid>

Here is the expected state of the FilteredItems property:

* If the textbox part of the control is empty, the FilteredItems property will contain all available items that are bound to the control instance.
* If the textbox part of the control is non-empty, and has partial text match (based on the current filtering rules), the FilteredItems property will contain the subset of all items bound to the control instance that match the current text input.
* If the textbox part of the control is non-empty, and has no text match (based on the current filtering rules), the FilteredItems property will contain an empty collection of items.

# See Also

 * [Drop-down Behavior]({%slug autocompletebox-dropdown-customization%})
