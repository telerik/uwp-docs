---
title: Item Removed Animation
page_title: Item Removed Animation
description: Item Removed Animation
slug: databoundlistbox-itemremovedanimation
tags: item,removed,animation
published: True
position: 3
---

# Item Removed Animation

The **ItemRemovedAnimation** property can be used to define animations for visual items being removed out of the viewport of **RadDataBoundListBox**. The ItemRemovedAnimation is also used when the control's ItemsSource property
is reset and all items are animated out of the viewport in sequential manner. In this context, the **ItemRemovedAnimationInterval** is used to define the time interval between the start of each separate item animation in the batch operation.

## Defining ItemRemovedAnimation

The following code sample demonstrates how to define an animation for items removed out of the viewport in XAML:

	<telerikDataControls:RadDataBoundListBox.ItemRemovedAnimation>
	    <telerikCore:RadFadeAnimation Duration="0:0:10">
	        <telerikCore:RadFadeAnimation.Easing>
	            <CubicEase EasingMode="EaseIn"/>
	        </telerikCore:RadFadeAnimation.Easing>
	    </telerikCore:RadFadeAnimation>
	</telerikDataControls:RadDataBoundListBox.ItemRemovedAnimation>

After defining an animation for items removed out of the viewport, it will be used each time an item is removed
from the source collection and it has to be removed from the viewport. Also, when the **ItemsSource**
property is reset, all items that are realized in the viewport will be animated in batch using the ItemRemovedAnimation.

## Using the ItemRemovedAnimationInterval property

When items are animated using the ItemRemovedAnimation in batch, the **ItemRemovedAnimationInterval** is
used to define the time interval between two separate animations started for given realized items. This interval creates a delay for each animation so that items are animated sequentally.

By default, the ItemRemovedAnimationInterval property has its default value set to 50 milliseconds.