---
title: Grouping
page_title: Grouping
description: Check our &quot;Grouping&quot; documentation article for RadListView for UWP control.
slug: radlistview-grouping
tags: radlistview,listview,grouping
published: True
position: 
---

# Grouping

RadListView provides you with the functionality to programmatically group its data. This can be achieved through adding group descriptors to the RadListView.GroupDescriptors collection.

There are two type of descriptors:

* **PropertyGroupDescriptor** : You can group the data by a property value from the class that defines your items.

This descriptor exposes the following properties:
 - *PropertyName* : Gets or sets the string name of the property you want to group by.
 - *SortOrder* : Changes the sort order in each group to Ascending or Descending.

* **DelegateGroupDescriptor** : This descriptor enables you to group by a custom key(e.g. some complex expression combining two or more properties) instead of being limited by the value of a single property of your item.
This descriptor exposes the following properties:
- *KeyLookup* : Gets or sets the IKeyLookup instance used to retrieve the group key for each data item.
- *SortOrder* : Changes the sort order in each group to Ascending or Descending.


## Example #

The example below demonstrates how you can use **DelegateGroupDescriptor**.

First, add the RadListView definition:

	<dataControls:RadListView ItemsSource="{Binding}">
		<dataControls:RadListView.Resources>
			<local:Key x:Key="key" />
		</dataControls:RadListView.Resources>
		<dataControls:RadListView.ItemTemplate>
			<DataTemplate>
				<TextBlock Text="{Binding Name}" />
			</DataTemplate>
		</dataControls:RadListView.ItemTemplate>
		<dataControls:RadListView.GroupDescriptors>
			<dataCore:DelegateGroupDescriptor SortOrder="Descending" KeyLookup="{StaticResource key}" />
		</dataControls:RadListView.GroupDescriptors>
	</dataControls:RadListView>

Add the needed namespaces:

	xmlns:dataControls="using:Telerik.UI.Xaml.Controls.Data"
	xmlns:dataCore="using:Telerik.Data.Core"

Here is the code-behind logic:

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