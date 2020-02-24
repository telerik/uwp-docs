---
title: Getting Started
page_title: Getting Started
description: Check our &quot;Getting Started&quot; documentation article for RadDatePicker and RadTimePicker for UWP controls.
slug: raddatetimepickers-gettingstarted
tags: getting,started
published: True
position: 1
---

# Getting Started

## Add References

In order to use Telerik RadDatePicker and RadTimePicker controls in your application you have to add reference to the **Telerik UI for {{ site.framework_name }} SDK**:

Right-click on your project > `Add Reference` > {% if site.site_name == 'WIN8' %}`Windows 8.1`{% endif %}{% if site.site_name == 'UWP' %}`Universal Windows`{% endif %} > `Extensions` > `Telerik UI for {{ site.framework_name }}` > `OK`.

You can alternatively use binaries. You will need to add reference to the the following assemblies:

* **Telerik.Core.dll**
* **Telerik.UI.Xaml.Input.dll**
* **Telerik.UI.Xaml.Primitives.dll**

To add them:

* Right click on your project > `Add Reference` > `Browse` > C:\Program Files (x86)\Telerik\UI for Windows Universal Qx 20xx\Binaries > select the relevant assemblies > `OK`

## Declare Instances

The following example shows how to declare a new RadDatePicker or RadTimePicker instance:


* **RadDatePicker**

		<telerik:RadDatePicker/>

	or
	
		RadDatePicker myDatepicker = new RadDatePicker();
	
* **RadTimePicker**

		<telerik:RadTimePicker/>

	or

		RadTimePicker myTimePicker = new RadTimePicker();
