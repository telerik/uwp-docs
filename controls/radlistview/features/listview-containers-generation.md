---
title: Containers Generation
page_title: Containers Generation
description: Check our &quot;Containers Generation&quot; documentation article for RadListView for UWP control.
slug: listview-containers-generation
tags: radlistview,listview,containers
published: True
position: 
---

# Containers Generation

The RadListView exposes several methods that can be overridden to customize the generated containers for the list view items and group headers.

## Items

- RadListViewItem **GetContainerForItem**(): Creates an empty container for list view item.
- void **PrepareContainerForItem**(RadListViewItem *item*, object *context*): Prepares the RadListViewItem container. The base method sets the item Style, DataContext, Content and ContentTemplate.
- void **ClearContainerForItem**(RadListViewItem *item*): Clears the RadListViewItem container. The base method clears the DataContext property.


## Group Headers

- ListViewGroupHeader **GetContainerForGroupHeader**(): Creates an empty container for list view group header.
- void **PrepareContainerForGroupHeader**(ListViewGroupHeader *groupHeader*, GroupHeaderContext *context*): Prepares the ListViewGroupHeader container. The base method sets the header Style, DataContext and ContentTemplate.
- void **ClearContainerForGroupHeader**(ListViewGroupHeader *item*): Clears the ListViewGroupHeader container. The base method clears the DataContext property.

## Example

	public class CustomListView : RadListView
	{
	    protected override RadListViewItem GetContainerForItem()
	    {
	        return new CustomListViewItem();
	    }
	
	    protected override void PrepareContainerForItem(RadListViewItem item, object context)
	    {
	        base.PrepareContainerForItem(item, context);
	        (item as CustomListViewItem).IsPrepared = true;
	    }
	
	    protected override void ClearContainerForItem(RadListViewItem item)
	    {
	        base.ClearContainerForItem(item);
	        (item as CustomListViewItem).IsPrepared = false;
	    }
	}
	
	[Bindable]
	public class CustomListViewItem : RadListViewItem
	{
	    public bool IsPrepared { get; set; }
	}
