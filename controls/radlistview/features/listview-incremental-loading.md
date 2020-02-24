---
title: Incremental Loading
page_title: Incremental Loading
description: Check our &quot;Incremental Loading&quot; documentation article for RadListView for UWP control.
slug: radlistview-incremental-loading
tags: radlistview,listview,data,virtualization,incremental,loading
published: True
position: 
---

# Incremental Loading

This topic describes how to enable incremental data loading in RadListView.

To enable incremental loading, you have to use as ItemsSource a collection that implements the **ISupportIncrementalLoading** interface. You can also take advantage of the **IncrementalLoadingCollection** which is our default implementation.

The **IncrementalLoadingMode** property specifies how new items are requested. Two loading modes are supported:

- **Automatic**: Scrolling to the end of the control automatically loads more items.
- **Explicit**: The user has to explicitly request more items by click/tap on the button.  

The RadListView also supports LoadMoreDataCommand that by default is executed to load new data. You can find more information about the list view commands [here]({% slug radlistview-commands %}).

## Example

This example demonstrates how to use the incremental loading functionality.

Here is the RadListView XAML declaration:
	
	<telerikDataControls:RadListView x:Name="listView" IncrementalLoadingMode="Explicit" ItemsSource="{Binding Items}">
		<telerikDataControls:RadListView.DataContext>
    		<local:ViewModel/>
		</telerikDataControls:RadListView.DataContext>
	    <telerikDataControls:RadListView.ItemTemplate>
	        <DataTemplate>
	            <TextBlock Text="{Binding Text}"/>
	        </DataTemplate>
	    </telerikDataControls:RadListView.ItemTemplate>
	</telerikDataControls:RadListView>

Where:

	xmlns:telerikDataControls="using:Telerik.UI.Xaml.Controls.Data"

This is the view model class:

 	public class ViewModel
    {
        private int currentCount = 0;

        public ViewModel()
        {
            this.Items = new IncrementalLoadingCollection<Item>(this.GetMoreItems) { BatchSize = 5 };
        }

        public IncrementalLoadingCollection<Item> Items { get; set; }

        private async Task<IEnumerable<Item>> GetMoreItems(uint count)
        {
            await Task.Delay(1000);
            var result = Enumerable.Range(this.currentCount, (int)count).Select(x => new Item { Text = "item " + x }).ToList();
            currentCount += (int)count;
            return result;
        }
    }

	public class Item 
    {
        public string Text { get; set; }
    }

Here is the result:

![RadListView incremental loading](images/listview-data-virtualization.png "RadListView Incremental Loading")
