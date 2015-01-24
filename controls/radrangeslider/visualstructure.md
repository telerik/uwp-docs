---
title: Visual Structure
page_title: Visual Structure
description: Visual Structure
slug: radrangeslider-visualstructure
tags: visual,structure
published: True
position: 2
---

# Visual Structure

The following topic describes all visual elements and terms used in a standard **RadRangeSlider** control.

## Components

The **RadRangeSlider** control consists of one **RangeSliderPrimitive** control and two **ScalePrimitive** controls. Each of these controls could be used as a seperate control.

![Rad Range Slider-Components](images/RadRangeSlider-Components.png)

## Elements

These are all visual elements in a standard **RadRangeSlider** control:

![Rad Range Slider-Visual Structire](images/RadRangeSlider-VisualStructire.png)

* **ScaleBottomRight**: This scale is visualized at the bottom when the orientation of the slider is horizontal,
and at right when the orientation is verical. It can be styled through the BottomRightScaleStyle property of the RadRangeSlider.
* **ScaleTopLeft**: This scale is visualized at the top when the orientation of the slider is horizontal,
and at left when the orientation is verical. It can be styled through the TopLeftScaleStyle property of the RadRangeSlider.
* **SelectionStartThumb**: This thumb indicates the start of the selected range - associated with the SelectionStart property.
* **SelectionEndThumb**: This thumb indicates the end of the selected range - associated with the SelectionEnd property.
* **SelectionMiddleThumb**: This thumb marks the area between the SelectionStartThumb and SelectionEndThumb.
* **Track**: It represents the track element along which the thumbs are sliding.
* **Tick**: Marks specific values on the scale.
* **Line**: The axis line of the slider scale.
* **Label**: This is the visual representation of the Minimum and Maximum values on the scale.
* **Header**: The header of the RadRangeSlider control.

## Tooltips

The RadRangeSlider control also visualizes several tooltips:

### Value Tooltip

Displayed when the pointer enters the scale - shows the value corresponding the current position of the pointer.

![Value Tool Tip](images/RadRangeSlider-ValueToolTip.png)

### Range Tooltip

Displayed when the user changes the selection range. The visual structure of the tooltip depends on whether the user drags the middle thumb or one one of the side thumbs.

* Displays the SelectionStart and SelectionEnd values when the user drags the middle thumb.  
![Range Tool Tip-Drag Middle](images/RadRangeSlider-RangeToolTip-DragMiddle.png)
* Displays the SelectionStart, SelectionEnd values, and their difference when the user drags the left or the right thumb.  
![Range Tool Tip-Drag Right](images/RadRangeSlider-RangeToolTip-DragRight.png)

# See Also

 * [Properties and Configuration]({%slug radrangeslider-propertiesandconfiguration%})
