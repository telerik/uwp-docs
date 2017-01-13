---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: radnumericbox-gettingstarted
tags: getting,started
published: True
position: 1
---

# Getting Started

In order to use **Telerik RadNumericBox** control in your application you have to add reference to the **Telerik UI for {{ site.framework_name }} SDK**:

Right-click on your project > `Add Reference` > {% if site.site_name == 'WIN8' %}`Windows 8.1`{% endif %}{% if site.site_name == 'UWP' %}`Universal Windows`{% endif %} > `Extensions` > select *Telerik UI for {{ site.framework_name }}* > tap/click `OK`.

If adding binaries instead, you will need references to the following files:

* **Telerik.Core.dll**
* **Telerik.UI.Xaml.Input.dll**
* **Telerik.UI.Xaml.Primitives.dll**

To add them:

Right click on your project > `Add Reference` > `Browse` > C:\Program Files (x86)\Telerik\UI for Windows {{ site.framework_name }} Rx 20xx\Binaries > select the relevant files > tap/click `OK`.

>To use RadNumericBox in XAML you have to add the following namespace declaration in the main page:
>**xmlns:telerik="using:Telerik.UI.Xaml.Controls.Input"**

Here is an example showing how to declare a new **RadNumericBox** instance:

	<telerik:RadNumericBox/>
