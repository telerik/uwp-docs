---
title: Getting Started
page_title: Getting Started
description: RadLoopingList Getting Started
slug: loopinglist-getting-started
tags: radloopinglist,loopinglist
published: True
position: 1
---

# Getting Started

The **RadLoopingList** control allows you to efficiently display a list of data records and loop to the beginning of the list when the end of the list is reached. For example, this can be used to display the days of the week, allowing them to loop in both directions.

>The RadLoopingList control can also be used without looping. This is achieved by setting the **IsLoopingEnabled** property to false.

In order to use RadLoopingList for Windows Phone, the following references are required:
 
- **Telerik.Core.dll**
- **Telerik.UI.Xaml.Primitives.dll**

Alternatively, you can add a reference to **Telerik UI for Windows Universal SDK**.

After adding references, you can declare a new RadLoopingList instance. To use the RadLoopingList in the XAML you have to add the following namespace declaration:

	xmlns:telerikLoopingList="using:Telerik.UI.Xaml.Controls.Primitives.LoopingList"

Here is the control declaration:

    <telerikLoopingList:RadLoopingList x:Name="loopingList"/>

	loopingList.ItemsSource = Enumerable.Range(0,10).ToList();