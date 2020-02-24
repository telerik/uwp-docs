---
title: Overview
page_title: Overview
description: Check our &quot;Overview&quot; documentation article for RadDataBoundListBox for UWP control.
slug: databoundlistbox-animations-overview
tags: overview
published: True
position: 1
---

# Overview

RadDataBoundListBox supports per-item animations for viewport items that
are added or removed from the viewport. This may happen when items are added or removed
from the data source, or when the *ItemsSource* property is
reset.

The following properties are exposed by **RadDataBoundListBox** which
can be used to initialize and adjust the item animation support for a particular scenario:

* **ItemAnimationMode**
* **ItemAddedAnimation**
* **ItemAddedAnimationInterval**
* **ItemRemovedAnimation**
* **ItemRemovedAnimationInterval**

The ItemAnimationMode property defines how the animations set to the **ItemAddedAnimation** and **ItemRemovedAnimation** properties will be played. By using this property you can explicitly instruct **RadDataBoundListBox** to play item animations only when the data source is initially set and items are popuplated into the viewport, when items are added/removed from/to the source collection or when the data source is reset.

The **ItemAddedAnimation** property is used to define the animation which will be used to animate items being added to the viewport.

The **ItemRemovedAnimation** property is used to define the animation which will be used to animate items being removed from the viewport.

The **ItemAddedAnimationInterval** property is used to define time interval between each separate adding animation. This interval serves as a delay between two separate item animations. This property
is not considered when the async balance mode is set to be **Standard**.

The **ItemRemovedAnimationInterval** property is used to define time interval between each separate removing animation. This interval serves as a delay between two separate item animations.

RadDataBoundListBox also exposes the ItemAnimationEnded event which is fired each time a container item animation ends.