---
title: Sorting
page_title: Sorting
description: RadListView Sorting
slug: radlistview-sorting
tags: radlistview,listview,sorting
published: True
position: 
---

# Sorting

RadListView provides you with the functionality to programmatically sort its data. This can be achieved through adding SortDescriptors to its RadListView.SortDescriptors collection.

There are two type of descriptors:

* **PropertySortDescriptor** : You can sort the data by a property value from the class that defines your items.
  This descriptor exposes the following properties:
  - *PropertyName*: Gets or sets the string name of the property that is used to retrieve the key to sort by.
  - *SortOrder*: Changes the sort order to Ascending or Descending.
<!--  - *Comparer*: Gets or sets a custom IComparer instance. If this property is null, the default comparer will be used.
-->

* **DelegateSortDescriptor** : This descriptor enables you to sort by a custom key(e.g. some complex expression combining two or more properties) instead of being limited by the value of a single property of your item.
This descriptor exposes the following properties:
 - *KeyLookup*: Gets or sets the IKeyLookup instance used to retrieve the sort key for each data item.
 - *SortOrder*: Changes the sort order to Ascending or Descending.
<!-- - *Comparer*: Gets or sets a custom IComparer instance. If this property is null, the default comparer will be used. -->

## Example

        <dataControls:RadListView ItemsSource="{Binding}">
            <dataControls:RadListView.Resources>
                <local:Key x:Key="key" />
            </dataControls:RadListView.Resources>
            <dataControls:RadListView.ItemTemplate>
                <DataTemplate>
                    <TextBlock Text="{Binding Name}" />
                </DataTemplate>
            </dataControls:RadListView.ItemTemplate>
            <dataControls:RadListView.SortDescriptors>
                <dataCore:DelegateSortDescriptor SortOrder="Descending" KeyLookup="{StaticResource key}" />
            </dataControls:RadListView.SortDescriptors>
        </dataControls:RadListView>

	    List<Item> list = new List<Item>();
	    for (int i = 0; i < 10; i++)
	    {
	        list.Add(new Item { Id = i, Name = "Mr." + i });
	    }
	    this.DataContext = list;


	    public class Item
	    {
	        public string Name { get; set; }
	        public double Id { get; set; }
	    }
	
	    public class Key : IKeyLookup
	    {
	        public object GetKey(object instance)
	        {
	            return (instance as Item).Id % 2;
	        }
	    }