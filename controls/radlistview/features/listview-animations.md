---
title: Item Animations
page_title: Item Animations
description: RadListView Item Animations
slug: radlistview-item-animations
tags: radlistview,listview,animations,itemanimations
published: True
position: 
---

# Item Animations

RadListView supports item animations that are added or removed from its viewport. These RadAnimations can be set through the following properties:

* **ItemAddedAnimation**
* **ItemRemovedAnimation**

These animations may happen when items are added or removed from the data source, or when the ItemsSource property is reset. This can be controlled through the following property:

* **ItemAnimationMode** - One can choose or combine values between *{None, PlayOnNewSource, PlayOnAdd, PlayOnRemove, PlayOnSourceReset, PlayAll}*.

## Example

    RadMoveAndFadeAnimation animation = new RadMoveAndFadeAnimation();
    animation.FadeAnimation.Duration = new Duration(TimeSpan.FromSeconds(3));
    animation.FadeAnimation.StartOpacity = 0.5;
    animation.FadeAnimation.EndOpacity = 1;
    animation.MoveAnimation.StartPoint = new Point(40,0);
    animation.MoveAnimation.EndPoint = new Point(0, 0);
    animation.MoveAnimation.Duration = new Duration(TimeSpan.FromSeconds(3));
    this.listview.ItemAddedAnimation = animation;
    this.listview.ItemAnimationMode = ItemAnimationMode.PlayOnNewSource | ItemAnimationMode.PlayOnSourceReset;