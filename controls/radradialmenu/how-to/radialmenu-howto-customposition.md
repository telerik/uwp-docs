---
title: Change the Menu Position
page_title: Change the Menu Position
description: Check our &quot;Change the Menu Position&quot; documentation article for RadRadialMenu for UWP control.
slug: radialmenu-howto-customposition
tags: change,the,menu,position
published: True
position: 5
---

# Change the Menu Position

When used as a context menu, the default position of the **RadRadialMenu** is determined by the **Point** returned by the **GetMenuPosition** method of the **RadialMenuTriggerBehavior** class. To change the menu position you have to create a class that inherits from the **RadialMenuTriggerBehavior** class and override its methods to implement custom logic defining where the context menu will appear.

This example demonstrates how you can position the menu at custom location.

First, create a class that inherits from the **RadialMenuTriggerBehavior** class and override its **GetMenuPosition** method. You also have to set the **AttachTriggers** property to specify what event will attach the menu to the target element.

	public class CustomPositionTriggerBehavior : RadialMenuTriggerBehavior
	{
	    public CustomPositionTriggerBehavior()
	    {
	        this.AttachTriggers = RadialMenuAttachTriggers.PointerPressed;
	    }
	
	    protected override Windows.Foundation.Point GetMenuPosition(RadRadialMenu menu)
	    {
	        //get the left top point of the target element
	        var targetPosition = this.Owner.TransformToVisual(null).TransformPoint(new Point(this.Owner.ActualWidth, 0));
	
	        //calulate the desired menu position
	        var position = new Point(targetPosition.X - 120 + this.Owner.ActualWidth / 2, targetPosition.Y - 120);
	
	        return position;
	    }
	}

Then set the attached **RadRadialContextMenu** properties to the target element.

	<TextBlock Text="Some text">
	    <telerikPrimitives:RadRadialContextMenu.Menu>
	        <telerikPrimitives:RadRadialMenu Width="240"/>
	    </telerikPrimitives:RadRadialContextMenu.Menu>
	    <telerikPrimitives:RadRadialContextMenu.Behavior>
	        <local:CustomPositionTriggerBehavior/>
	    </telerikPrimitives:RadRadialContextMenu.Behavior>
	</TextBlock>

This is the result:

![Radial Menu-Positioning](images/RadialMenu-Positioning.png)

# See Also

 * [RadRadialMenu as a Context Menu]({%slug radialmenu-behavior%})
 * [Define Custom Trigger Behavior]({%slug radialmenu-howto-customtriggerbehavior%})
