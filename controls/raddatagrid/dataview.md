---
title: DataView
page_title: DataView
description: DataView
slug: raddatagrid-dataview
tags: dataview
published: True
position: 6
---

# DataView

The *IDataView* interface provides access to the view over the already computed data within a RadDataGrid instance.

>This View is different from the original source if there are applied grouping, sorting, filtering and etc.For this reason, it is important to check if all the data operations have executed. Use the *IDataView.IsDataReady* property or use the DataBindingComplete event or command!

>The actual implementation of IDataView is stateless and each **RadDataGrid.GetDataView** method call will return a new object instance.

## Properties

* **IsDataReady**: Determines whether all the internal data operations are completed and the view may be properly accessed.
* **Items**: Gets the top-level items within the view. These might be either IDataGroup instances or data items if no grouping is applied.

The code snippets on this page will use a variable which will hold the current View of the DataGrid:

	IDataView currentView = this.grid.GetDataView();

## Methods

* **GetAggregateValue**(int aggregateIndex, IDataGroup group)  
Gets the computed aggregate value associated with the provided aggregate index.
	* *aggregateIndex*: The zero-based index of the AggregateDescriptorBase within the RadDataGrid.AggregateDescriptors collection.
	* *group*: The IDataGroup instance to get the value for. Pass null to retrieve the computed Grand Total value.
* **GetAggregateValues**(string propertyName, IDataGroup group)  
Gets the computed aggregate values for all the PropertyAggregateDescriptor instances associated with the provided property name.
	* *propertyName*: The name of the property to filter aggregates by.
	* *group*: The IDataGroup instance to get the value for. Pass null to retrieve the computed Grand Total value.
* **GetGroups**(*Predicate<IDataGroup> condition = null*)  
Enumerates all the present **IDataGroup**instances using depth-first approach.

>An optional condition may be used to filter the results.

* **GetIsExpanded**(*IDataGroup* group)  
Determines whether the provided group is considered "Expanded" - that is to have its ChildItems available - within the UI.
* **GetParentGroup**(*object* item)  
Gets the **IDataGroup** instance where the specified item resides.
It Will be null if no grouping is applied or the item does not belong to the ItemsSource of the grid.
* **ExpandGroup**(*IDataGroup* group)  
Attempts to expand the provided IDataGroup instance.

		if (currentView.IsDataReady)
		{
		    currentView.ExpandGroup(this.grid.GetDataView().Items[0] as IDataGroup);
		}

* **CollapseGroup**(*IDataGroup* group)  
Attempts to collapse the provided IDataGroup instance.

		if (currentView.IsDataReady)
		{
		    currentView.CollapseGroup(this.grid.GetDataView().Items[0] as IDataGroup);
		}

* **ExpandAll**()  
Expands all the groups.
	 
		if (currentView.IsDataReady)
		{
			currentView.ExpandAll();
		}

* **CollapseAll**()  
Collapses all the groups.

		if (currentView.IsDataReady)
		{
			currentView.CollapseAll();
		}

* **ExpandItem**(*object* item)  
Expands the chain of groups where the specified item resides.

		if (currentView.IsDataReady)
		{
		    currentView.ExpandItem(sourceCollection[1]);
		}

* **CollapseItem**(*object* item)  
Collapses the immediate groups that contains the specified item.

		if (currentView.IsDataReady)
		{
		    currentView.CollapseItem(sourceCollection[1]);
		}

## Example

In this example where grouping has been applied, we will collapse all the groups except the first one. For this purpose we will use the DataBindingComplete command:

	public class DataBindingComplete : DataGridCommand
	{
	    public override bool CanExecute(object parameter)
	    {
	        if ((parameter as DataBindingCompleteEventArgs).ChangeFlags.HasFlag(DataChangeFlags.Group))
	        {
	            return true;
	        }
	        else
	        {
	            return false;
	        }
	
	    }

	    public override void Execute(object parameter)
	    {
	
	        this.Owner.GetDataView().CollapseAll();
	
	        if (this.Owner.GroupDescriptors.Count > 0)
	        {
	            this.Owner.GetDataView().ExpandGroup((this.Owner.GetDataView().Items[0] as IDataGroup));
	        }
	
	        base.Execute(parameter);
	    }
	}

Then we can add it to the RadDataGrid.Commands collection and set its ID:

	<grid:RadDataGrid.Commands>
	    <local:DataBindingComplete Id="DataBindingComplete"/>
	</grid:RadDataGrid.Commands>