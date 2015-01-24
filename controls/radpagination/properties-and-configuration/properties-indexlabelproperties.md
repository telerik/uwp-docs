---
title: Index Label
page_title: Index Label
description: Index Label
slug: radpagination-properties-indexlabelproperties
tags: index,label
published: True
position: 1
---

# Index Label

This help article will show how to change properties of an Index Label in the RadPagination control.

>In order to set properties for the Index Label you have to add the following namespace:
>**xmlns:telerikPagination="using:Telerik.UI.Xaml.Controls.Primitives.Pagination"**

You can set implicit Style in your Pagination Control resources with PaginationIndexLabelControl TargetType.
Then you can set a value of the following properties:

* **Separator** (string): Gets or sets the string that separates the Current Index and Item Count values. Default value is "/".

		<telerik:RadPaginationControl.Resources>
		    <Style TargetType="telerikPagination:PaginationIndexLabelControl">
		        <Setter Property="Separator" Value="-of-"/>
		    </Style>   
		</telerik:RadPaginationControl.Resources>

	Result:  
	![Separator](images/Separator.png)
* **ItemCountFormat** (string): Gets or sets the format that defines how the Item Count part of the control is displayed.

		<telerik:RadPaginationControl.Resources>
		    <Style TargetType="telerikPagination:PaginationIndexLabelControl">
		        <Setter Property="Width" Value="350"></Setter>
		        <Setter Property="ItemCountFormat" Value=" {0:0} images"></Setter>
		    </Style>
		</telerik:RadPaginationControl.Resources>

	Result:  
	![ItemCountFormat](images/ItemCountFormat.png)

* **CurrentIndexFormat** (string): Gets or sets the format that defines how the Current Index part of the control is displayed.

		<telerik:RadPaginationControl.Resources>
		    <Style TargetType="telerikPagination:PaginationIndexLabelControl">
		        <Setter Property="Width" Value="350"></Setter>
		        <Setter Property="CurrentIndexFormat" Value=" {0:0} image"></Setter>
		    </Style>
		</telerik:RadPaginationControl.Resources>
	
	Result:  
	![CurrentIndexFormat](images/CurrentIndexFormat.png)

* **CurrentIndexDisplayValue** (string): Gets the string representation of the Current Index.
* **ItemCountDisplayValue** (string): Gets the string representation of the Item Count.