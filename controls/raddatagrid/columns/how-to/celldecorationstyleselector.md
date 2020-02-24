---
title: Use the CellDecorationStyleSelector Property
page_title: Use the CellDecorationStyleSelector Property
description: Check our &quot;Use the CellDecorationStyleSelector Property&quot; documentation article for RadDataGrid for UWP control.
slug: raddatagrid-celldecorationstyleselector
tags: use,the,celldecorationstyleselector,property
published: True
position: 3
---

# Use the CellDecorationStyleSelector Property

This example demonstrates how to use **CellDecorationStyleSelector** property to set custom background to the grid cells depending on a property from the model.

>To style the text in the grid cells, you have to use the **[CellContentStyleSelector]({%slug datagrid-columns-howto-usecellcontentstyleselectorproperty%})** property.

![Cell Decoration Style Selector](images/CellDecorationStyleSelector.png)

## Example

First lets create a simple class that represents our data:

	public enum Gender
	{
	    Male,
	    Female
	}
	
	public class Person
	{
	    public string Name { get; set; }
	
	    public Gender Gender { get; set; }
	}

And a ViewModel class that will be used as DataContext of the grid:

	public class ViewModel
	{
	    public ObservableCollection<Person> Data { get; set; }
	
	    public ViewModel()
	    {
	        Data = new ObservableCollection<Person>()
	        {
	            new Person() { Name = "Anna", Gender = Gender.Female },
	            new Person() { Name = "Tom", Gender = Gender.Male },
	            new Person() { Name = "Jack", Gender = Gender.Male },
	            new Person() { Name = "Emmy", Gender = Gender.Female }
	        };
	    }
	}

Now we have to implement a class that inerits the *StyleSelector* class and override its
*StyleSelectorCore* method in order to provide custom logic
for cell Columns\HowTo. In this example it will provide different styles depending on whether the data item's Gender is Male or Female.

	public class CellStyleSelector : StyleSelector
	{
	    public Style MaleStyle { get; set; }
	
	    public Style FemaleStyle { get; set; }
	
	    protected override Style SelectStyleCore(object item, DependencyObject container)
	    {
	        var cell = (item as DataGridCellInfo);
	        var person = cell.Item as Person;
	
	        if (person.Gender == Gender.Female)
	        {
	            return this.FemaleStyle;
	        }
	
	        return this.MaleStyle;
	    }
	}

Let's add an instance of the CellStyleSelector class to the page resources that will be used by the CellDecorationStyleSelector property of the grid and set its style properties.


> We have to set the Style properties with `TargetType="Rectangle"`.

	<local:CellStyleSelector x:Key="BackgroundSelector">
	    <local:CellStyleSelector.MaleStyle>
	        <Style TargetType="Rectangle">
	            <Setter Property="Fill" Value="RoyalBlue"/>
	        </Style>
	    </local:CellStyleSelector.MaleStyle>
	    <local:CellStyleSelector.FemaleStyle>
	        <Style TargetType="Rectangle">
	            <Setter Property="Fill" Value="HotPink"/>
	        </Style>
	    </local:CellStyleSelector.FemaleStyle>
	</local:CellStyleSelector>

Finally we are ready to define our grid and set the CellDecorationStyleSelector property of its columns:

	<telerik:RadDataGrid ItemsSource="{Binding Data}" AutoGenerateColumns="False" Width="300" Height="300">
	    <telerik:RadDataGrid.DataContext>
	        <local:ViewModel/>
	    </telerik:RadDataGrid.DataContext>
	    <telerik:RadDataGrid.Columns>
	        <telerik:DataGridTextColumn PropertyName="Name" CellDecorationStyleSelector="{StaticResource BackgroundSelector}" />
	        <telerik:DataGridTextColumn PropertyName="Gender" CellDecorationStyleSelector="{StaticResource BackgroundSelector}" />
	    </telerik:RadDataGrid.Columns>
	</telerik:RadDataGrid>

As we expect: when the item is Female, the background is pink; and when the item is Male, the background is blue.
