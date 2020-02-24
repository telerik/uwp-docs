---
title: Getting Started
page_title: Getting Started
description: Check our &quot;Getting Started&quot; documentation article for RadListView for UWP control.
slug: radlistview-getting-started
tags: radlistview,listview
published: True
position: 1
---

# Getting Started

This help article shows how to create a **RadListView** from scratch using the RadListView related classes in the Telerik UI for {{ site.framework_name }}. First, add a reference to the following assemblies:

- **Telerik.Core.dll**
- **Telerik.Data.dll**
- **Telerik.UI.Xaml.Primitives.dll**
- **Telerik.UI.Xaml.Controls.Data.dll**

Alternatively, you can add a reference to **Telerik UI for {{ site.framework_name }} SDK**.

Now you can declare the **RadListView** control, which is in the Telerik.UI.Xaml.Controls.Data namespace. Here is the XAML declaration:

	<telerikDataControls:RadListView x:Name="listView"/>

Where:

	xmlns:telerikDataControls="using:Telerik.UI.Xaml.Controls.Data"

Now you can add data to the RadListView using its **ItemsSource** property:

	this.listView.ItemsSource = Enum.GetNames(typeof(DayOfWeek)).ToList();