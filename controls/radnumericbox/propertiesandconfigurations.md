---
title: Properties and Configuration
page_title: Properties and Configuration
description: Check our &quot;Properties and Configuration&quot; documentation article for RadNumericBox for UWP control.
slug: radnumericbox-propertiesandconfigurations
tags: properties,and,configuration
published: True
position: 3
---

# Properties and Configuration

Here are the properties supported by the RadNumericBox control:

* **AllowNullValue**: Gets or sets a value indicating whether the Value property may be set to null.
* **ButtonsVisibility**: Gets or sets the Visibility value for the Increase and Descrease buttons.
* **DecreaseButtonStyle**:Gets or sets the Style object that defines the appearance of the DecreaseButton control part. The TargetType of the Style object should point to the *Telerik.UI.Xaml.Controls.Primitives.Common.InlineButton* type.
* **IncreaseButtonStyle**:Gets or sets the Style object that defines the appearance of the IncreaseButton control part. The TargetType of the Style object should point to the *Telerik.UI.Xaml.Controls.Primitives.Common.InlineButton* type.
* **IsEditable**: Gets or sets the value indicating whether the TextBox part of the component may be directly edited through the keyboard.
* **LargeChange**: Gets or sets a value to be added to or subtracted from the Value property. Defaults to 10.
* **Maximum**: Gets or sets the highest possible Value of the range element. Defaults to 100.
* **Minimum**: Gets or sets the lowest possible Value of the range element. Defaults to 0.
* **SmallChange**: Gets or sets the value to be added to or subtracted from the Value. Defaults to 1.
* **Value**: Gets or sets the current Value. This value may be coerced to fit the current range restrictions. Defaults to 0.
* **ValueFormat**:Gets or sets the string that is used to format the current Value of the component.
The String.Format routine is used and the value specified should be in the form required by this method: **{ index[,alignment][ :formatString] }**.
* **ValueString**:Gets the current string representation of the Value property, as displayed in the TextBox part.
* **Watermark**: Gets or sets the object that represents the Watermark displayed by the control. The Watermark is visible when the current Value is not set (null).
* **WatermarkTemplate**:Gets or sets the DataTemplate instance that defines the appearance of the Watermark value.