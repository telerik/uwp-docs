---
title: Animation Mode
page_title: Animation Mode
description: Animation Mode
slug: databoundlistbox-animations-animation-mode
tags: animation,mode
published: True
position: 0
---

# Animation Mode



RadDataBoundListBox exposes the **ItemAnimationMode** property
which can be used to fine tune the behavior of the animations set to the **ItemAddedAnimation**
and **ItemRemovedAnimation** properties. By using this property, you can define
which animations will be played and when.

## Defining Item Animation Mode

The ItemAnimationMode property accepts values from the **ItemAnimationMode** enumeration.
This enumeration defines the following values:

* **None** - None of the defined animations will be played.
* **PlayOnNewSource** - visual containers will be animated using the **ItemAddedAnimation** only when
the data source has been reset with a new one.
* **PlayOnAdd** - visual containers will be animated using the **ItemAddedAnimation** only when new items
are added to the data source.
* **PlayOnRemove** - visual containers will be animated using the **ItemRemovedAnimation** only
when data items are removed from the data source.
* **PlayOnSourceReset** - visual containers will be animated using the **ItemRemovedAnimation** only when
the **ItemsSource** of the control is set to *null*.
* **PlayAll** - visual containers are animated in all cases: when the source collection is reset, and when data items are added or removed.

>The ItemAnimationMode enumeration has a *flags* attribute and its values
can be combined.