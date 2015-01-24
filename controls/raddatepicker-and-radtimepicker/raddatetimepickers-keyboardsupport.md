---
title: Keyboard Support
page_title: Keyboard Support
description: Keyboard Support
slug: raddatetimepickers-keyboardsupport
tags: keyboard,support
published: True
position: 7
---

# Keyboard Support

Telerik’s RadDatePicker and RadTimePicker controls respond to keyboard input similar to the way you’d expect any other Windows control to respond.

## Supported Keys

Here are listed all keyboard keys supported by RadDatePicker and RadTimePicker control and the actions they perform:

* **TAB key** - Focuses the inline part (picker).
* **Enter key** - Opens the Selector Popup part.
* **Tab key** or **Left/Right Arrow key** - Moves through the selector items and expands the corresponding list used for selecting a value.
* **Up/Down Arrow key** - Makes a selection within the currently expanded list.
* **Enter/Escape key** (valid only for Standard Mode) - Commits/Cancels the selection.

## Selector Part - Keyboard Input

RadDatePicker and RadTimePicker supports keyboard input per expanded list in the **Inline Display Mode** and in the Inline Part of the **Standart Display Mode**.

> The input string resets to Empty one second after no character is typed. After each typed character, the expanded list is navigates instantly.


### Example

The following table shows sample string inputs and the result in an expanded Year List in RadDatePicker.
![2 Key Board Inputs Table](images/KeyboardInputaTable.png)