---
title: Data Virtualization Strategies
page_title:  Data Virtualization
description: Check our &quot;Data Virtualization Strategies&quot; documentation article for RadDataBoundListBox for UWP control.
slug: databoundlistbox-data-virtualization
tags: data,virtualization
published: True
---

#  Data Virtualization

This topic describes how to enable incremental loading in **RadDataBoundListBox**.


To enable incremental loading in RadDataBoundListBox, the collection used as its ItemsSource should implement the **ISupportIncrementalLoading** interface. You can also take advantage of the **IncrementalLoadingCollection** which is our default implementation.

Here are listed the properties related to incremental loading:

* **IncrementalLoadingMode**: 
	* Auto: In this mode the data is loaded automatically on demand.
	* Explicit: The data is loaded when an explicit request is performed.
* **IncrementalLoadingItemContent**: The content of the item 
* **IncrementalLoadingItemTemplate**: The template of the IncrementalLoadingItemContent.
* **ItemLoadingContent**: This content is displayed when new data are currently being requested.
* **ItemLoadingTemplate**: The template of the ItemLoadingContent.

## Example

	public sealed partial class MainPage : Page
	{
	    private int currentCount = 0;
	
	    public MainPage()
	    {
	        this.InitializeComponent();
	
	        var collection = new IncrementalLoadingCollection<string>(
	            async count =>
	            {
	                await Task.Delay(2000);
	
	                if (this.currentCount > 20)
	                {
	                    return null;
	                }
	
	                var items = Enumerable.Range(0, (int)count).Select(c => string.Format("Item {0}", this.currentCount + c)).ToList();
	                this.currentCount += (int)count;
	                return items;
	            }) { BatchSize = 10 };
	
	        for (var i = 0; i < 10; i++)
	        {
	            collection.Add(string.Format("item{0}", i));
	            this.currentCount++;
	        }
	
	        this.listbox.ItemsSource = collection;
	
	        this.NavigationCacheMode = NavigationCacheMode.Required;
	    }
	}

Auto:

	<telerikDataControls:RadDataBoundListBox x:Name="listbox" IncrementalLoadingMode="Auto" ItemLoadingContent="loading..."/>

Explicit:

	<telerikDataControls:RadDataBoundListBox x:Name="listbox" IncrementalLoadingMode="Explicit" IncrementalLoadingItemContent="load more items" ItemLoadingContent="loading..."/>