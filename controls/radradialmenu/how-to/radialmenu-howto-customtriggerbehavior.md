---
title: Define Custom Trigger Behavior
page_title: Define Custom Trigger Behavior
description: Check our &quot;Define Custom Trigger Behavior&quot; documentation article for RadRadialMenu for UWP control.
slug: radialmenu-howto-customtriggerbehavior
tags: define,custom,trigger,behavior
published: True
position: 4
---

# Define Custom Trigger Behavior

You can use a custom behavior that will perform additional logic when attaching the **RadRadialMenu** to the target element. You have to create a class that inherits from the **RadialMenuTriggerBehavior** class and override its methods to implement custom logic defining where and when the context menu will appear/diappear. The **RadRadialMenu** is attached/detached to the target element by calling the **AttachToTargetElement**/**DetachToTargetElement** method.

This example demonstrates how you can display the context menu when the text in a **TextBox** is changed and hide it when the `Esc` button is pressed.

First, create a class that inherits from the **RadialMenuTriggerBehavior** class. You can override its **SubscribeToTargetEvents** and **UnsubscribeFromTargetEvents** methods to implement your custom logic for triggering the appearance of the menu.

	public class CustomTriggerBehavior : RadialMenuTriggerBehavior
	{
	    public CustomTriggerBehavior()
	    {
	        this.AttachTriggers = RadialMenuAttachTriggers.None;
	    }
	
	    protected override void SubscribeToTargetEvents(FrameworkElement element)
	    {
	        base.SubscribeToTargetEvents(element);
	
	        var textBox = element as TextBox;
	        textBox.TextChanged += TextBoxTextChanged;
	        textBox.KeyDown += TextBoxKeyDown;
	    }
	
	    void TextBoxKeyDown(object sender, KeyRoutedEventArgs e)
	    {
	        if (e.Key == VirtualKey.Escape)
	        {
	            this.DetachFromTargetElement();
	        }
	    }
	
	    void TextBoxTextChanged(object sender, TextChangedEventArgs e)
	    {
	        this.AttachToTargetElement();
	    }
	
	    protected override void UnsubscribeFromTargetEvents(FrameworkElement element)
	    {
	        var textBox = element as TextBox;
	        textBox.TextChanged -= TextBoxTextChanged;
	        textBox.KeyDown -= TextBoxKeyDown;
	
	        base.UnsubscribeFromTargetEvents(element);
	    }
	}

Then set the attached **RadRadialContextMenu** properties to the target element.

	<TextBox Width="200">
	    <telerikPrimitives:RadRadialContextMenu.Behavior>
	        <local:CustomTriggerBehavior/>
	    </telerikPrimitives:RadRadialContextMenu.Behavior>
	    <telerikPrimitives:RadRadialContextMenu.Menu>
	        <telerikPrimitives:RadRadialMenu/>
	    </telerikPrimitives:RadRadialContextMenu.Menu>
	</TextBox>

# See Also

 * [RadRadialMenu as a Context Menu]({%slug radialmenu-behavior%})
