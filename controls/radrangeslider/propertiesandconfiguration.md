---
title: Properties and Configuration
page_title: Properties and Configuration
description: Properties and Configuration
slug: radrangeslider-propertiesandconfiguration
tags: properties,and,configuration
published: True
position: 3
---

# Properties and Configuration

The **RadRangeSlider** is a compound control that consists of two ScalePrimitive
controls and one RangeSliderPrimitive control (see the [visual structure]({%slug radrangeslider-visualstructure%})). Each of these controls have their own properties that can be set through the TopLeftScaleStyle/BottomRightScaleStyle and SliderPrimitiveStyle properties. In the following sections are described all properties, exposed by the RadRangeSlider control and its components.

## RadRangeSlider Control Properties

**RadRangeSlider** exposes the following properties:

* **Orientation**: Gets or sets the orientation of the control. The available values are:
	* **Horizontal** (default)
	* **Vertical**
* **Maximum** (double): Gets or sets the maximum value of the scale.
* **Minimum** (double): Gets or sets the minimum value of the scale.
* **SelectionStart** (double): Gets or sets the position of the start thumb on the scale.
* **SelectionEnd** (double): Gets or sets the position of the end thumb on the scale.
* **TickFrequency** (double): Gets or sets the distance between the ticks on the scale.
* **LargeChange** (double): Gets or sets a value to be added to or subtracted from the **StartPosition**/**EndPosition**. This value is used to update the position of the thumb when the user clicks on the scale outside the selection range.
* **SmallChange** (double): Gets or sets the value to be added to or subtracted from the **StartPosition**/**EndPosition**. This is useful for example when you want to use another value (different from **LargeChange**) for the thumbs to snap to.
* **IsDeferredDraggingEnabled** (bool): Gets or sets a value that indicates whether the **SelectionStart**/**SelectionEnd** values will update their values while dragging.
* **TrackTapMode**: Gets or sets a value that indicates with what step the selection thumb position will be updated when a tap/click event occurs on the track.
The possible modes are:
	* **None**: The thumb will not move when track is tapped.
	* **MoveToTapPosition**: The thumb moves to the current tap position.
	* **IncrementByLargeChange**: The thumb updates its position with the **LargeChange** property value.
	* **IncrementBySmallChange**: The thumb updates its position with the **SmallChange** property value.
* **SnapsTo**: Gets or sets a value that indicates whether the **SelectionStart**/**SelectionEnd** values will be snapped after drag is complete.
Here are the available options:
	* **None**
	* **Ticks**
	* **LargeChange**
	* **SmallChange**
* **SliderPrimitiveStyle** (Style): Gets or sets the **Style** that defines the appearance settings applied to the inner **RangeSliderPrimitive** control part. The style should target the **Telerik.UI.Xaml.Controls.Primitives.RangeSliderPrimitive** type.
* **TopLeftScaleStyle/BottomRightScaleStyle** (Style): Gets or sets the style that defines the appearance settings applied to the **TopLeft**/**BottomRightScale** control. The **Style** should target the **Telerik.UI.Xaml.Controls.Primitives.ScalePrimitive** type.
* **LabelFormat** (string): Gets or sets the format string for the labels. In XAML the format string has this format: "{}{0:0}".
* **Header** (object): Gets or sets the object that represents the header content.
* **HeaderTemplate** (DataTemplate): Gets or sets the **DataTemplate** instance that defines the appearance of the header.
* **HeaderStyle** (Style): Gets or sets the **Style** object that defines the appearance of the Header part of the control. Typically that part will be represented by a **ContentControl** instance.
* **ShowValueToolTip** (bool): Gets or sets a value that indicates whether a tooltip, displaying the current pointer value, will be displayed.
* **ShowRangeToolTip** (bool): Gets or sets a value that indicates whether a tooltip, displaying the current value range, will be displayed. This tooltip is visualized when the user changes tha value range.
* **ToolTipFormat** (string): Gets or sets the string that is used to format the text of all tooltips of the component - this includes the start/end/range values displayed in the default **RangeToolTip**, as well as the value in the **ValueToolTip**.

## ScalePrimitive Control Properties

Here are listed the properties exposed by the **ScalePrimitive** control.


>When the **SliderPrimitive** control is used in a
**RadRangeSlider**, some of its
properties are overriden by the **RadRangeSlider** control and setting them in
the **TopLeftScaleStyle**/**BottomRightScaleStyle** has no effect. These properties
are: **Orientation**, **TickFrequency**,
**LabelFormat**, and they are bound to their
corresponding properties of the **RadRangeSlider** control.


The following properties are used when setting custom **Style** to the **TopLeftScaleStyle**/**BottomRightScaleStyle** property of the **RadRangeSlider**.

* **LabelPlacement** (ScaleElementPlacement): Gets or sets the position of the labels relative to the axis line.
* **LabelStyle** (Style): Gets or sets the style that defines the appearance of all labels of the scale.
* **LabelTemplate** (DataTemplate): Gets or sets custom template for all labels of the scale.
* **LineStyle** (Style): Gets or sets the style that defines the appearance of the axis line of the ScalePrimitive control.
* **TickLength** (double): Gets or sets the length of the scale ticks.
* **TickPlacement** (ScaleElementPlacement): Gets or sets the position of the ticks relative to the axis line. 
* **TickStyle** (Style): Gets or sets the **Style** defining the appearance of the scale ticks. The **Style** should target the **Rectangle**.
* **TickTemplate** (DataTemplate): Gets or sets a custom **DataTemplate** for the ticks.
* **TickThickness** (double): Gets or sets the thickness of the scale ticks.

These properties could be set when the ScalePrimitive is used as a separate control.

* **Orientation**: Gets or sets the orientation of the control. The available values are:
	* **Horizontal** (default)
	* **Vertical**
* **TickFrequency** (double): Gets or sets the logical tick frequency of the scale.
* **LabelFormat** (string): Gets or sets the string that is used to format the labels of the control.

## RangeSliderPrimitive Control Properties

Here are listed the properties exposed by the **RangeSliderPrimitive** control.
These properties are used when setting custom style to the **SliderPrimitiveStyle**
property of the **RadRangeSlider**.

* **SelectionStartThumbStyle/SelectionEndThumbStyle/SelectionMiddleThumbStyle** (Style): Gets or sets the Style that defines the appearance settings applied to the selection start/end/middle thumb.
The style should have **TargetType="Thumb"**. The following properties affect the thumb style:
	* **Margin**
	* **Padding**
	* **BorderThickness**
	* **Height**
	* **Background**
	* **IsTabStop**Or you can retemplate a thumb by setting its **Template** property.

## RangeToolTip Properties

The **RangeToolTip** is a primitive control which style could be
set implicitly by defining a Style that targets the**Telerik.UI.Xaml.Controls.Primitives.RangeSlider.RangeToolTip** type in the **Resources** of the **RadRangeSlider**. These are the properties that affect the **Style** of the **RangeToolTip**:

* **Foreground**
* **Background**
* **BorderBrush**
* **BorderThickness**
* **FontSize**
* **Transitions**

Or you can retemplate the tooltip by setting its **Template** property.

# See Also

 * [Visual Structure]({%slug radrangeslider-visualstructure%})
 * [Styling]({%slug radrangeslider-explicitstyling%})
