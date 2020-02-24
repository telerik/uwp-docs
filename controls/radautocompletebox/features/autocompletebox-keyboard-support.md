---
title: Keyboard Support
page_title: Keyboard Support
description: Check our &quot;Keyboard Support&quot; documentation article for RadAutoCompleteBox for UWP control.
slug: autocompletebox-keyboard-support
tags: keyboard,support
published: True
position: 11
---

# Keyboard Support

**RadAutoCompleteBox** provides support for keyboard navigation for the items in the drop-down control.

* When a drop-down control is open, the user can navigate over the filtered items with the `Up` and `Down` keys , then select the current item by pressing the `Enter` key;
* If a drop-down control is open and the user presses `Esc`, the drop-down control closes and it preserves the input area unchanged.

The RadAutoCompleteBox control also exposes the **AutosuggestFirstItem** property that affects the behavior of the keyboard selection (through the Enter key). The **AutosuggestFirstItem** property indicates whether the first suggestion item should be highlighted by default when the drop-down is open.

* When this property is set to *true* and keyboard selection is performed, immediately on drop-down opening, the highlighted item is selected in the input area;
* If the property is set to *false*, the input area text will be preserved unchanged.

This code snippet demonstrates how to set the **AutosuggestFirstItem** property:

	<telerikInput:RadAutoCompleteBox x:Name="radAutoCompleteBox" AutosuggestFirstItem="True"/>

![Autosuggest First Item](images/RadAutoCompleteBox-AutosuggestFirstItem.png)

# See Also

 * [Drop-down Behavior]({%slug autocompletebox-dropdown-customization%})
