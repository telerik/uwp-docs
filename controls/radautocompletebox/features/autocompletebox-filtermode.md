---
title: Filter Modes
page_title: Filter Modes
description: Check our &quot;Filter Modes&quot; documentation article for RadAutoCompleteBox for UWP control.
slug: autocompletebox-filtermode
tags: filter,modes
published: True
position: 1
---

# Filter Modes

RadAutoCompleteBox supports two different filter modes out-of-the-box:
        

* **StartsWith filter mode** - This mode filters the candidate suggestions by comparing the user input with the beginning of the filter key of each candidate suggestion.
* **Contains filter mode** - This mode filters the candidate suggestions by comparing whether each candidate suggestion contains the user input.

## Using the StartsWith Filter Mode

The following XAML code snippet demonstrates how to set the StartsWith filter mode (this is also the default filter mode):

	<telerikInput:RadAutoCompleteBox FilterMode="StartsWith" Width="200" VerticalAlignment="Top" />

## Using the Contains Filter Mode

The following XAML code snippet demonstrates how to set the Contains filter mode:

	<telerikInput:RadAutoCompleteBox FilterMode="Contains" Width="200" VerticalAlignment="Top" />

# See Also

 * [Binding to Complex Business Objects]({%slug autocompletebox-complex-business-objects%})
 * [Filtering Items with Web Service ]({%slug autocompletebox-webservice-support%})
 * [Inline Filtered Items Display]({%slug autocompletebox-inline-filtered-items%})
 * [Filter Start Threshold]({%slug autocompletebox-filterstartthreshold%})
 * [Filter Delay]({%slug autocompletebox-filterdelay%})
