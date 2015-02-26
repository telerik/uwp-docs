---
title: Item Added Animation
page_title: Item Added Animation
description: Item Added Animation
slug: databoundlistbox-itemaddedanimation
tags: item,added,animation
published: True
position: 2
---

# Item Added Animation

The **ItemAddedAnimation** property can be used to define animations for visual items being inserted into the viewport of **RadDataBoundListBox**. The ItemAddedAnimation is also used when the control is initially bound to a data source to animate all items realized in the viewport in a sequentiall manner. In this context, the **ItemAddedAnimationInterval** is used to define the time interval between the start of each separate item animation in the batch operation.

## Defining ItemAddedAnimation

The following code sample demonstrates how to define an animation for items added to the viewport in XAML:

	<telerikDataControls:RadDataBoundListBox.ItemAddedAnimation>
	    <telerikCore:RadFadeAnimation EndOpacity="0" Duration="0:0:1">
	        <telerikCore:RadFadeAnimation.Easing>
	            <CubicEase EasingMode="EaseOut"/>
	        </telerikCore:RadFadeAnimation.Easing>
	    </telerikCore:RadFadeAnimation>
	</telerikDataControls:RadDataBoundListBox.ItemAddedAnimation>

After defining an animation for items added to the viewport, it will be used each time an item is added
to the source collection and it has to be realized in the viewport. Also, when the **ItemsSource**
property is initially set to a data source, all items that are realized in the viewport will be animated in batch
using the ItemAddedAnimation.

## Using the ItemAddedAnimationInterval property

When items are animated using the ItemAddedAnimation in batch, the **ItemAddedAnimationInterval** is used to define the time interval after which each separate animation is started for a given realized item. This interval creates a delay for each animation so that items are animated sequentally.

By default, the ItemAddedAnimationInterval property has its default value set to 50 milliseconds.
