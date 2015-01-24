---
title: Filter Delay
page_title: Filter Delay
description: Filter Delay
slug: autocompletebox-filterdelay
tags: filter,delay
published: True
position: 2
---

# Filter Delay

RadAutoCompleteBox exposes the FilterDelay property that specifies the time interval between the last user input action and the filter pass operation. This property is useful in scenarios with web services and large data where you would like to limit the filtering queries as much as possible and not execute them on every keystroke.

## Using the FilterDelay Property

The FilterDelay property accepts values of TimeSpan type. The default value of this property is zero milliseconds. When a value, different from TiemSpan.Zero is set, RadAutoCompleteBox will wait for the given time period after the last user input operation before applying the filter.

The following XAML code snippet demonstrates how to set the FilterDelay property to a time interval of 500 milliseconds (half a second):

	<telerikInput:RadAutoCompleteBox FilterDelay="0:0:0.5"/>

# See Also

 * [Filter Modes]({%slug autocompletebox-filtermode%})
 * [Filter Start Threshold]({%slug autocompletebox-filterstartthreshold%})
