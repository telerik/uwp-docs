---
title: ComboBox Column
page_title: ComboBox Column
description: Check our &quot;ComboBox Column&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-columns-comboboxcolumn
tags: combobox,column
published: True
position: 8
---

# ComboBox Column

The **DataGridComboBoxColumn** inherits from the [DataGridTextColumn]({%slug datagrid-columns-textcolumn%}) and in EditMode it uses a ComboBox control to select a value from list of possibilities.

## Properties

Here are the specific properties defined for **DataGridComboBoxColumn**:

* **ItemsSource** (IEnumerable&lt;object&gt;): This property is used when the source of the ComboBox items is not part of the data and is the same for all items in the grid.
* **ItemsSourcePath** (string): This property is used to specify a property of your data class to be used as source for the ComboBox.
* **DisplayMemberPath** (string): Sets the display path of the items in the ComboBox selector. It points to a field in the items from the ItemsSource collection of the ComboBox.
* **SelectedValuePath** (string): Sets the value that is actually selected in the ComboBox (could be different from the display value) and is passed to the property that is edited in the ComboBox column.

## Examples

The following examples demonstrate different scenarios in which the **DataGridComboBoxColumn** can be used.

### ItemsSource Example

The **ItemsSource** property is used when the source of the ComboBox items in edit mode are the same for all items in the column.

The following example describes the scenario from the image below:
 
![ItemsSource property](images/ComboBoxColumn-ItemsSource.png)

This is the definition of the data class used in the grid ItemsSource. 

	public class DataItem
	{
	    public string Currency { get; set; }
	
	    public double Price { get; set; }
	
	    public string Item { get; set; }
	}

We can define a class that will be used as a static ComboBox source provider:

	public class ExternalItemsProvider
	{
	    private static readonly List<string> items = new List<string> { "CHF", "JPY", "RUB", "USD", };
	    
	    public static List<string> Items
	    {
	        get
	        {
	            return items;
	        }
	    }
	}

Then we can define an instance of this class as a static resource in the page:

	<Page.Resources>
	    <local:ExternalItemsProvider x:Key="items"/>
	</Page.Resources>

This is the declaration of the grid:

	<telerikGrid:RadDataGrid x:Name="grid" UserEditMode="Inline" AutoGenerateColumns="False">
	    <telerikGrid:RadDataGrid.Columns>
			<telerikGrid:DataGridTextColumn PropertyName="Item"/>
			<telerikGrid:DataGridNumericalColumn PropertyName="Price"/>
	        <telerikGrid:DataGridComboBoxColumn PropertyName="Currency" ItemsSource="{Binding Items, Source={StaticResource items}}" />
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

Where:

	xmlns:telerikGrid="using:Telerik.UI.Xaml.Controls.Grid"

And:

	this.grid.ItemsSource = new List<DataItem>
	{
	    new DataItem { Item = "theater tickets", Price = 20, Currency = "CHF"},
	    new DataItem { Item = "dinner", Price = 33.5, Currency = "JPY"},
	    new DataItem { Item = "winter shoes", Price = 50, Currency = "USD"},
	    new DataItem { Item = "travel expenses", Price = 22, Currency = "USD"}
	};

This is the result:

![](images/ComboBoxColumn-ItemsSource-Result.png)

### ItemsSourcePath Example

The **ItemsSourcePath** property is used when the source of each ComboBox in edit mode is retrieved from a property of the DataItem.

This example describes the scenario from the image below: 

![ItemsSource property](images/ComboBoxColumn-ItemsSourcePath.png)

This time the DataItem class has a property that provides values for the ComboBox source:

	public class DataItem
	{
	    public string Brand { get; set; }
	    
	    public string Item { get; set; }
	    
	    public List<string> Brands { get; set; }
	}

This is the grid declaration:

	<telerikGrid:RadDataGrid x:Name="grid" UserEditMode="Inline" AutoGenerateColumns="False" UserGroupMode="Enabled" Width="300">
	        <telerikGrid:DataGridTextColumn PropertyName="Item"/>
	        <telerikGrid:DataGridComboBoxColumn PropertyName="Brand" ItemsSourcePath="Brands"/>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

And this is the data used by the grid:

	this.grid.ItemsSource = new List<DataItem>
	{
	    new DataItem { Item = "car", Brand = "Honda", Brands = new List<string> { "Honda", "Volvo", "Mercedes" } },
	    new DataItem { Item = "bike", Brand = "Scott", Brands = new List<string> { "Scott", "Giant", "Trek" } }
	}; 

This is the result:

![](images/ComboBoxColumn-ItemsSourcePath-Result.png)

### DisplayMemberPath Example

This example demonstrates a scenario where the property used by the DataGridComboBoxColumn and the items of the ComboBox source have **the same** type of object. In this case with the DisplayMemberPath you can to specify the name of the property that will be displayed by the grid and the ComboBox.

![](images/ComboBoxColumn-DisplayMemberPath.png)

This will be the class that describes the property associated with the DataGridComboBoxColumn:

    public class CurrencyInfo : IComparable
    {
        public string Name { get; set; }

        public string Abbrev { get; set; }

        public int CompareTo(object obj)
        {
            return this.Abbrev.CompareTo(((CurrencyInfo)obj).Abbrev);
        }

        public override bool Equals(object obj)
        {
            var data = obj as CurrencyInfo;
            return data != null && data.Abbrev == this.Abbrev && data.Name == this.Name;
        }
    }
>Please, note that the class should override the **Equals** method in order to successfully determine whether the model property and the ComboBox source item have the same value. 
>Also, the class has to implement the **IComparable** interface if sorting is enabled.

Here is the data class:

	public class DataItem
	{
	    public CurrencyInfo Currency { get; set; }
	
	    public double Price { get; set; }
	
	    public string Item { get; set; }
	}

Here is the grid declaration:

	<telerikGrid:RadDataGrid x:Name="grid" UserEditMode="Inline" AutoGenerateColumns="False" UserGroupMode="Enabled" Width="500">
		<telerikGrid:RadDataGrid.Columns>
			<telerikGrid:DataGridTextColumn PropertyName="Item"/>
			<telerikGrid:DataGridNumericalColumn PropertyName="Price"/>
			<telerikGrid:DataGridComboBoxColumn PropertyName="Currency" ItemsSource="{Binding Items, Source={StaticResource items}}" DisplayMemberPath="Abbrev" />
		</telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

And this is the data used by the grid:

	this.grid.ItemsSource = new List<DataItem>
	{
	    new DataItem { Item = "theater tickets", Price = 20, Currency = new CurrencyInfo { Abbrev = "CHF", Name = "Swiss franc" } },
	    new DataItem { Item = "dinner", Price = 33.5, Currency = new CurrencyInfo { Abbrev = "JPY", Name = "Japanese yen" } },
	    new DataItem { Item = "winter shoes", Price = 50, Currency = new CurrencyInfo { Abbrev = "USD", Name = "United States dollar" } },
	    new DataItem { Item = "travel expenses", Price = 22, Currency = new CurrencyInfo { Abbrev = "USD", Name = "United States dollar" } }
	};

This is the result:

![](images/ComboBoxColumn-DisplayMemberPath-Result.png)

### SelectedValuePath Example

In a scenario when the grid has a property that is of primitive type, but the ComboBox source holds complex objects, you should set the SelectedValuePath property in order to determine which property of the complex object will be passed as a value for the grid item's property. The DisplayMemberPath and SelectedValuePath could point to different properties of the ComboBox items and this example will demonstrate such scenario. 

![](images/ComboBoxColumn-SelectedValuePath.png)

The ComboBox will use a static source of CurrencyInfo objects as described in the previous examples.

This is the data class that has a Currency property of type string. 

	public class DataItem
	{
	    public string Currency { get; set; }
	
	    public double Price { get; set; }
	
	    public string Item { get; set; }
	}

This is the grid declaration:

	<telerikGrid:RadDataGrid x:Name="grid" UserEditMode="Inline" AutoGenerateColumns="False" UserGroupMode="Enabled" Width="500">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTextColumn PropertyName="Item"/>
	        <telerikGrid:DataGridNumericalColumn PropertyName="Price"/>
	        <telerikGrid:DataGridComboBoxColumn PropertyName="Currency" ItemsSource="{Binding Items, Source={StaticResource items}}" SelectedValuePath="Abbrev" DisplayMemberPath="Name"/>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

And this is the data used by the grid:

	this.grid.ItemsSource = new List<DataItem>
	{
	    new DataItem { Item = "theater tickets", Price = 20, Currency = "CHF" },
	    new DataItem { Item = "dinner", Price = 33.5, Currency = "JPY" },
	    new DataItem { Item = "winter shoes", Price = 50, Currency = "USD" },
	    new DataItem { Item = "travel expenses", Price = 22, Currency = "USD" }
	}; 

This is the result:

![](images/ComboBoxColumn-SelectedValuePath-Result.png)

### Dynamic Objects Example

**DataGridComboBoxColumn** could also be used with dynamic objects. We will use the previous example, but instead of DataItem we will use ExpandoObject in the grid ItemsSource and we will define its properties dynamically.

	var collection = new List<ExpandoObject>();
	dynamic car = new ExpandoObject();
	car.Item = "car";
	car.Price = 30000;
	car.Currency = "USD";
	collection.Add(car);
	
	dynamic house = new ExpandoObject();
	house.Item = "house";
	house.Price = "200000";
	house.Currency = "CHF";
	collection.Add(house);
	
	this.grid.ItemsSource = collection;