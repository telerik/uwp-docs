---
title: RadRadialMenu as a Context Menu
page_title: RadRadialMenu as a Context Menu
description: Check our &quot;RadRadialMenu as a Context Menu&quot; documentation article for RadRadialMenu for UWP control.
slug: radialmenu-behavior
tags: radradialmenu,as,a,context,menu
published: True
position: 4
---

# RadRadialMenu as a Context Menu

The **RadRadialMenu** can be used as a context menu for another **FrameworkElement**. This can be done by using attached properties defined in the **RadRadialContextMenu** class.

* **Menu** (RadRadialMenu): Specifies the **RadRadialMenu** instance that will be attached to the target element.
* **Behavior** (RadialMenuTriggerBehavior): Specifies the behavior class that will take care of the attachment/detachment of the menu to the target element and the positioning of the menu.

## Default Behavior

You can use the default **RadialMenuTriggerBehavior** class and with the **AttachTriggers** property you have to specify the event that will trigger attachment of **RadRadialMenu** to the target element. Here are listed all available values:

* **None**: The menu cannot be opened with an automatic trigger.
* **PointerPressed**: The menu is opened when pointer press event occurs on the target element.
* **PointerOver**: The menu is opened when pointer over event occurs on the target element.
* **Focused**: The menu is opened when the target element gets focus.
* **PressedOrFocused**: The menu is opened when the target element gets focus or press action.

Here is an example demonstrating how to define a behavior that will attach the menu when the target element is focused.

	<TextBox Width="200">
	    <telerikPrimitives:RadRadialContextMenu.Behavior>
	        <telerikPrimitives:RadialMenuTriggerBehavior AttachTriggers="Focused" />
	    </telerikPrimitives:RadRadialContextMenu.Behavior>
	    <telerikPrimitives:RadRadialContextMenu.Menu>
	        <telerikPrimitives:RadRadialMenu/>
	    </telerikPrimitives:RadRadialContextMenu.Menu>
	</TextBox>

> With the default **RadialMenuTriggerBehavior** you can not control the positioning and the detaching of the menu from the target element.

Here are examples that demonstrate how to extend the **RadialMenuTriggerBehavior** functionality:

* [Define Custom Trigger Behavior]({%slug radialmenu-howto-customtriggerbehavior%})
* [Change the Menu Position]({%slug radialmenu-howto-customposition%})
