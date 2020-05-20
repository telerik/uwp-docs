---
title: Layouts
page_title: Layouts
description: Check our &quot;Layouts&quot; documentation article for RadListView for UWP control.
slug: radlistview-layouts
tags: radlistview,listview,layouts
published: True
position: 
---

# Layouts

The RadListView supports different layouts. The layout could be modified with **Orientation** and **LayoutDefinition** properties.

### Orientation

Each layout supports horizontal and vertical orientation.

### LayoutDefinition

LayoutDefinition property takes values of type *LayoutDefinitionBase*, which is base for the following classes:

- **StackLayoutDefinition**: A layout definition that arranges the items in a stack.

		<telerikDataControls:RadListView>
		 <telerikDataControls:RadListView.LayoutDefinition>
			 <telerikListView:StackLayoutDefinition/>
		 </telerikDataControls:RadListView.LayoutDefinition>
		</telerikDataControls:RadListView>
		
where:

	xmlns:telerikListView="using:Telerik.UI.Xaml.Controls.Data.ListView"
	
![StackLayoutDefinition](images/listview-layouts-stack.png) 
 
- **GridLayoutDefinition**: A layout definition that arranges the items in a grid. Through the **SpanCount** you can specify the span count of the grid.

		<telerikDataControls:RadListView>
			<telerikDataControls:RadListView.LayoutDefinition>
				<telerikListView:GridLayoutDefinition SpanCount="2"/>
			</telerikDataControls:RadListView.LayoutDefinition>
		</telerikDataControls:RadListView>
	
![GridLayoutDefinition](images/listview-layouts-grid.png)   

- **WrapLayoutDefinition**:  A layout definition that wraps the items. Currently  only items with equal width are supported. Through the **ItemWidth** property you can define the width of the items:  
    
		<telerikDataControls:RadListView ItemsSource="{Binding}" Height="350" Width="300" >
			<telerikDataControls:RadListView.LayoutDefinition>
				<telerikListView:WrapLayoutDefinition ItemWidth="100"/>
			</telerikDataControls:RadListView.LayoutDefinition>
		</telerikDataControls:RadListView>
			
![WrapLayoutDefinition](images/listview-layouts-wrap.png)    

- **StaggeredLayoutDefinition**: A layout definition that arranges variable sized items in columns. Through the **SpanCount** property you can set the column count of the layout.

		<telerikDataControls:RadListView ItemsSource="{Binding}" Height="350" Width="300" >
			<telerikDataControls:RadListView.LayoutDefinition>
				<telerikListView:StaggeredLayoutDefinition SpanCount="3" />
			</telerikDataControls:RadListView.LayoutDefinition>
		</telerikDataControls:RadListView>
			
![StaggeredLayout](images/listview-staggered-layout.png)   
