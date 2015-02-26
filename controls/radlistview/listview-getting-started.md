---
title: Getting Started
page_title: Getting Started
description: RadListView Getting Started
slug: radlistview-getting-started
tags: radlistview,listview
published: True
position: 2
---

# Getting Started

This help article shows how to create a **RadListView** from scratch using the RadListView related classes in the Telerik UI for Windows Universal. First, add a reference to the following assemblies:

- **Telerik.Core.dll**
- **Telerik.Data.dll**
- **Telerik.UI.Xaml.Primitives.dll**
- **Telerik.UI.Xaml.Controls.Data.dll**

Alternatively, you can add a reference to **Telerik UI for Windows Universal SDK**.

Now you can declare the **RadListView** control, which is in the Telerik.UI.Xaml.Controls.Data namespace. Here is the XAML declaration:

	<telerikDataControls:RadListView x:Name="listView"/>

Where:

	xmlns:telerikDataControls="using:Telerik.UI.Xaml.Controls.Data"

Now you can add data to the RadListView using its **ItemsSource** property:

	this.listView.ItemsSource = Enum.GetNames(typeof(DayOfWeek)).ToList();