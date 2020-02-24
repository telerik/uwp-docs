---
title: Events
page_title: Events
description: Check our &quot;Events&quot; documentation article for RadDataBoundListBox for UWP control.
slug: databoundlistbox-events
tags: events
published: True
position: 2
---

# Events

This topic covers the specific events exposed by the RadDataBoundListBox control. 

The **RadDataBoundListBox** control raises the following specific events:

* **SelectionChanging** - occurs before the SelectedItem gets changed. The event handler receives two arguments:
* **SelectionChanged** - occurs after the SelectedItem has been changed. The event handler receives two arguments:
* **ItemTap** - occurs each time a visual item is tapped on the screen. The event handler receives two arguments:
* **ItemStateChanged** - occurs each time the virtualization state of a RadDataBoundListBoxItem changes.
* **ItemReorderUpButtonTap** - occurs each time the virtualization state of a RadDataBoundListBoxItem changes.
* **ItemReorderUpButtonTap** - fired when the user taps the reorder button which shifts up the index of the item within the source collection. Fired at the end of the reordering within the source.
* **ItemReorderDownButtonTap** - fired when the user taps the reorder button which shifts down the index of the item within the source collection. Fired at the end of the reordering within the source.
* **ItemReorderStateChanged** - fired when the reorder controls are activated or deactivated. Can be used to track when the user has started or stopped the reordering mode. Information about the state of the reordering mode is contained within the event arguments, as well as a reference to the visual container being reordered.