---
title: Filter Start Threshold
page_title: Filter Start Threshold
description: Filter Start Threshold
slug: autocompletebox-filterstartthreshold
tags: filter,start,threshold
published: True
position: 3
---

# Filter Start Threshold

RadAutoCompleteBox exposes the FilterStartThreshold property that defines minimum number of characters in the input string before a filtering operation is performed. This property is useful in scenarios with web services and large data where you would like to limit the filtering queries as much as possible. For example, require a minimum number of characters typed into a control before filter execution.      

## Using the FilterStartThreshold Property

The FilterStartThreshold property is of type *int* and can be used to define the length of the input string after which the filtering procedure is started.

The following XAML code snippet demonstrates setting the FilterStartThreshold property (filtering will start on typing the 4th symbol):

	<telerikInput:RadAutoCompleteBox FilterStartThreshold="3"/>

# See Also

 * [Filter Modes]({%slug autocompletebox-filtermode%})
 * [Filter Delay]({%slug autocompletebox-filterdelay%})
