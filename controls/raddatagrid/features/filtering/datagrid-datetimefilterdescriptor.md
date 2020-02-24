---
title: DateTime Filter Descriptor
page_title: DateTime Filter Descriptor
description: Check our &quot;DateTime Filter Descriptor&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-filtering-datetimefilterdescriptor
tags: datetime,filter,descriptor
published: True
position: 5
---

# DateTime Filter Descriptor

>DateTimeFilterDescriptor is a Descriptor which filters by property of System.DateTime data type.

## Properties

* **PropertyName**: Gets or sets the name of the property that is used to retrieve the value to filter by.
* **Value**: Gets or sets the value used in the comparisons. This is the right operand of the comparison.
* **Operator**: Gets or sets the NumericalOperator value that defines the boolean logic behind the left and right operand comparison.

Now, we will show a simple example where we will filter by the Founded property which is of type System.DateTime and the condition will be its value to be less than(before) *1600/01/01* :

	<telerikGrid:RadDataGrid Width="450" VerticalAlignment="Center" x:Name="grid">
	    <telerikGrid:RadDataGrid.FilterDescriptors>
	        <telerikGrid:DateTimeFilterDescriptor PropertyName="Founded"
	                                              Operator="IsLessThan"
	                                              Value="1600/01/01"/>
	    </telerikGrid:RadDataGrid.FilterDescriptors>
	    <telerikGrid:RadDataGrid.Commands>
	        <local:CustomGenerateColumnCommand/>
	    </telerikGrid:RadDataGrid.Commands>
	</telerikGrid:RadDataGrid>

Here we create sample data and set it as ItemsSource of our DataGrid:

	List<CustomData> data = new List<CustomData>
	{
	    new CustomData { Country = "Brazil", City = "Caxias do Sul", Founded = new DateTime(1890,6,20) },
	    new CustomData { Country = "Brazil", City = "Joinville", Founded = new DateTime(1851,3,9) },
	    new CustomData { Country = "Colombia", City = "Cali", Founded = new DateTime(1536,7,25) },
	    new CustomData { Country = "Colombia", City = "Bogota", Founded = new DateTime(1538,8,6) },
	    new CustomData { Country = "Brazil", City = "Fortaleza", Founded = new DateTime(1726,4,13) },
	    new CustomData { Country = "Brazil", City = "Porto Alegre", Founded = new DateTime(1772,3,26) },
	};
	this.grid.ItemsSource = data;

Where *CustomData* class defines our objects:

	public class CustomData
	{
	    public string Country { get; set; }
	
	    public string City { get; set; }
	
	    public DateTime Founded { get; set; }
	}

We will also use the **GenerateColumn** command to format the DateTime values as we prefer:

	public class CustomGenerateColumnCommand : DataGridCommand
	{
	    public CustomGenerateColumnCommand()
	    {
	        this.Id = CommandId.GenerateColumn;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as GenerateColumnContext;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as GenerateColumnContext;
	        // put your custom logic here 
	        if (context.PropertyName == "Founded")
	        {
	            DataGridTextColumn column = new DataGridTextColumn();
	            column.CellContentFormat = "{0: yyyy/MM/dd}";
	            context.Result = column;
	        }
	        else
	        {
	            context.Result = new DataGridTextColumn();
	        }
	    }
	}

The first picture shows our RadDataGrid before passing the filter and the second after filtering:

![DateTimeFilterDescriptor example](images/DateTimeFilterDescriptorExample.png)