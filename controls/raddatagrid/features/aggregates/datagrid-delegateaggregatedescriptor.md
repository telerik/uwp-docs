---
title: DelegateAggregateDescriptor
page_title: DelegateAggregateDescriptor
description: DelegateAggregateDescriptor
slug: datagrid-aggregates-delegateaggregatedescriptor
tags: delegateaggregatedescriptor
published: True
position: 2
---

# DelegateAggregateDescriptor

## Properties

* **ValueLookup**: Gets or sets the IKeyLookup instance used to retrieve the value from the underlying ViewModel, used for aggregated value computation.
* **Function**: Gets or sets the IAggregateFunction instance that performs the aggregation of the values as specified by the ValueLookup property.

Here is an example of how to use a DelegateAggregateDescriptor:

First, create a class that inherits from the **IKeyLookup** interface. It will return the values of a Points property that is of type double.

	public class CustomIKeyLookUp : IKeyLookup
	{
	
	    public object GetKey(object instance)
	    {
	        var data = instance as Data;
	        return data.Points;
	    }
	
	}

Then, implement a class that inherits from the **IAggregateFunction** interface. This function will return the difference between the maximum and minimum values of the Points property.

	public class MyAggregateFunction : IAggregateFunction
	{
	    private double min = double.MaxValue;
	    private double max;
	
	    public object GetValue()
	    {
	        return this.max - this.min;
	    }
	
	    public void Accumulate(object value)
	    {
	        double val = Convert.ToDouble(value, CultureInfo.InvariantCulture);
	        this.min = Math.Min(this.min, val);
	        this.max = Math.Max(this.max, val);
	    }
	
	
	    public void Merge(IAggregateFunction aggregateFunction)
	    {
	        var myFunction = aggregateFunction as MyAggregateFunction;
	        if (myFunction != null)
	        {
	            this.min = Math.Min(this.min, myFunction.min);
	            this.max = Math.Max(this.max, myFunction.max);
	        }
	    }
	
	    public IAggregateFunction Clone()
	    {
	        return new MyAggregateFunction();
	    }
	}

Create a DelegateAggregateDescriptor and add it to the grid's AggregateDescriptors collection:

	grid.AggregateDescriptors.Add(new DelegateAggregateDescriptor() { ValueLookup = new CustomIKeyLookUp(), Function = new MyAggregateFunction() });

>You can get the aggregate value/s through the GetAggregateValue and GetAggregateValues methods of the[IDataView]({%slug raddatagrid-dataview%}) interface.

