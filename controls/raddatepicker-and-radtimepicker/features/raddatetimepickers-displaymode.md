---
title: Display Mode
page_title: Display Mode
description: Check our &quot;Display Mode&quot; documentation article for RadDatePicker and RadTimePicker for UWP controls.
slug: raddatetimepickers-features-displaymode
tags: display,mode
published: True
position: 0
---

# Display Mode

**DisplayMode** is a property of RadDatePicker and RadTimePicker that defines how to visualize the control. It can takes two values:


* The **Standard** mode is the default representation of **RadDatePicker** and **RadTimePicker**.


* The **Inline** mode is a feature that excludes the TextBlock part with the button and directly initializes the Date/Time **Selector Popup** part:


>In Inline mode, selection is made after every change of the Date/Time value and there are no Submit and Cancel buttons.

![Date Time Picker Inline Mode Example](images/DateTimePickerInlineModeExample.png)

Here in an example that demonstrates how to set the DisplayMode property:

	<telerik:RadDatePicker DisplayMode="Inline" Width="300" Height="250"/>

