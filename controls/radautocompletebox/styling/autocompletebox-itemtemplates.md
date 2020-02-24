---
title: Suggestion Items Styling
page_title: Suggestion Items Styling
description: Check our &quot;Suggestion Items Styling&quot; documentation article for RadAutoCompleteBox for UWP control.
slug: autocompletebox-itemtemplates
tags: suggestion,items,styling
published: True
position: 0
---

# Suggestion Items Styling

This article explains how to style the suggestion items in the drop down list of the RadAutoCompleteBox.

## ItemTemplate

You can customize the look of the suggestion items via the **ItemTemplate** property of the **RadAutoCompleteBox**.

	<telerikInput:RadAutoCompleteBox x:Name="autoCompleteBox" Width="300"
	                                 VerticalAlignment="Center" FilterMode="Contains">
	    <telerikInput:RadAutoCompleteBox.ItemTemplate>
	        <DataTemplate>
	            <TextBlock Text="{Binding}" FontSize="20" Foreground="YellowGreen"/>
	        </DataTemplate>
	    </telerikInput:RadAutoCompleteBox.ItemTemplate>
	</telerikInput:RadAutoCompleteBox>

	this.autoCompleteBox.ItemsSource = new List<string> { "orange", "apple", "banana", "ananas", "avocado", "tomato" };

This is the result:

![Item Template](images/ItemTemplate.png)

## ItemTemplateSelector

You can use a more complex styling method with the **ItemTemplateSelector** property of the **RadAutoCompleteBox**.

First you have to create a custom class that inherits from the **DataTemplateSelector** class and override the **SelectTemplateCore** method to implement your custom styling logic.
	
	public class CustomItemTemplateSelector : DataTemplateSelector
	{
	    public DataTemplate Template1 { get; set; }
	    
	    public DataTemplate Template2 { get; set; }
	    
	    protected override DataTemplate SelectTemplateCore(object item, DependencyObject container)
	    {
	        if (item.ToString().StartsWith("a"))
	        {
	            return this.Template1;
	        }
	        
	        return this.Template2;
	    }
	}

Then you can define an instance of the created class as a static resource.

	<local:CustomItemTemplateSelector x:Key="TemplateSelector">
	    <local:CustomItemTemplateSelector.Template1>
	        <DataTemplate>
	            <TextBlock Text="{Binding}" FontSize="20" Foreground="Orange"/>
	        </DataTemplate>
	    </local:CustomItemTemplateSelector.Template1>
	    <local:CustomItemTemplateSelector.Template2>
	        <DataTemplate>
	            <TextBlock Text="{Binding}" FontSize="20" Foreground="Green"/>
	        </DataTemplate>
	    </local:CustomItemTemplateSelector.Template2>
	</local:CustomItemTemplateSelector>

Finally, set the **ItemTemplateSelector** property of the **RadAutoCompleteBox** to the instance of the **CustomItemTemplateSelector** class.

	<telerikInput:RadAutoCompleteBox x:Name="autoCompleteBox" VerticalAlignment="Center" 
	                                 Width="300" FilterMode="Contains"
	                                 ItemTemplateSelector="{StaticResource TemplateSelector}"/>

	this.autoCompleteBox.ItemsSource = new List<string> { "orange", "apple", "banana", "ananas", "avocado", "tomato" };
	
This is the result:

![Item Template Selector](images/ItemTemplateSelector.png)

# See Also

 * [Telerik Named Brushes]({%slug autocompletebox-teleriknamedbrushes%})