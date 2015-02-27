---
title: Filtering
page_title: Filtering
description: RadListView Filtering
slug: radlistview-filtering
tags: radlistview,listview,filtering
published: True
position: 
---

# Filtering

RadListView provides you with the functionality to programmatically filter its data. This can be achieved through adding FilterDescriptors to its RadListView.FilterDescriptors collection.
Here are the available filter descriptors:

* **TextFilterDescriptor** : 
 - *PropertyName* : Gets or sets the property used to retrieve the value to filter by.
 - *Operator* : Gets or sets the TextOperator value which defines how the Value member is compared with each value from the ItemsSource.
 - *Value* : Gets or sets the string value used in the comparisonsl This is the right operand of the comparison.
 - *IsCaseSensitive*: Gets or sets the value that determines whether the text comparisons will be case-sensitive. Default value is true.

* **BooleanFilterDescriptor** : 
 - *PropertyName* : Gets or sets the property used to retrieve the value to filter by.
 - *Value* : Gets or sets the bool value used in the comparisons. This is the right operand of the comparison.

* **NumericalFilterDescriptor** :

 - *PropertyName* : Gets or sets the property used to retrieve the value to filter by.
 - *Value* : Gets or sets the numerical value used in the comparisons. This is the right operand of the comparison.
 - *Operator* : Gets or sets the NumericalOperator value which defines the logic behind the left and right operand comparison.
 
* **DateTimeFilterDescriptor** :

 - *PropertyName* : Gets or sets the property used to retrieve the value to filter by.
 - *Operator* : Gets or sets the NumericalOperator value which defines the logic behind the left and right operand comparison.
 - *Value* : Gets or sets the DateTime value used in the comparisons. This is the right operand of the comparison.

* **DelegateFilterDescriptor** : 

 - *Filter* : Gets or sets the IFilter implementation used to check whether a data item passes the filter or not.


## Example

       <dataControls:RadListView ItemsSource="{Binding}">
            <dataControls:RadListView.Resources>
                <local:Key x:Key="filter" />
            </dataControls:RadListView.Resources>
            <dataControls:RadListView.ItemTemplate>
                <DataTemplate>
                    <TextBlock Text="{Binding Name}" />
                </DataTemplate>
            </dataControls:RadListView.ItemTemplate>
            <dataControls:RadListView.FilterDescriptors>
                <dataCore:DelegateFilterDescriptor Filter="{StaticResource filter}" />
            </dataControls:RadListView.FilterDescriptors>
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

    public class Key : IFilter
    {
        public bool PassesFilter(object item)
        {
            return (item as Item).Id % 2 == 0;
        }
    }