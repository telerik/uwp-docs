---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: radpagination-gettingstarted
tags: getting,started
published: True
position: 1
---

# Getting Started

In this help article, we are going to create a Pagination control using the Telerik UI for {{ site.framework_name }}.

## Add References

In order to use TelerikRadPagination control in your application, you have to add reference to the Telerik UI for {{ site.framework_name }} SDK:

* Right-click on your project and from the menu, choose `Add Reference` > `Windows` > `Extensions` > select *Telerik UI for {{ site.framework_name }}* > `OK`.

If you choose to add binaries instead, you will need to add references to the following assemblies:

* Telerik.Core.dll
* Telerik.UI.Xaml.Primitives.dll

To add them:

* Right-click on your project and from the menu, choose `Add Reference` > `Browse` > navigate to *C:\Program Files (x86)\Telerik\UI for {{ site.framework_name }} Rx 20xx\Binaries* > select the relevant files > `OK`.


## Declare Instance

Now you are ready to declare a new RadPagination instance:

<telerikPrimitives:RadPaginationControl/>

A Pagination control can be used with any ItemsControl. This example will show how to use it with a FlipView.

1. Create a FlipView.
1. Create aPagination control instance.
1. Use the PageProvider property of the Pagination to bind to the FlipView:

		<telerikPrimitives:RadPaginationControl PageProvider="{Binding ElementName=flipview}"/>

## Example

Here's sample code and the expected output.

	<FlipView x:Name="flipview1" Height="200" Width="200">
	    <Image Source="MyPicture1.png"></Image>
	    <Image Source="MyPicture2.png"></Image>
	    <Image Source="MyPicture3.png"></Image>
	</FlipView>
	<telerikPrimitives:RadPaginationControl PageProvider="{Binding ElementName=flipview1}" Height="30" Margin="450"/>

Result:

![Pagination Getting Started](images/PaginationGettingStarted.png)