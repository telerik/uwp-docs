---
title: Overview
page_title: Overview
description: Overview
slug: autocompletebox-overview
tags: overview
published: True
position: 0
---

# Overview

**RadAutoCompleteBox for {{ site.framework_name }}** is a textbox control with extended functionality similar to the search box on Google and Bing - offering suggestions as you type. RadAutoCompleteBox exposes a convenient API to control its behavior and uses optimized filtering algorithms to boost up its performance.      

## Key Features

* **StartsWith and Contains filter modes**: RadAutoCompleteBox provides support for two filtering modes out-of-the-box. The StartsWith mode filters the candidate suggestions by comparing the user input with the beginning of the filter key of each candidate suggestion, whereas the Contains filtering mode looks for matches by comparing whether each candidate suggestion contains the user input.
* Web service support for filtering suggestions: RadAutoCompleteBox provides infrastructure for using web services as providers for filtered suggestions.
* **Drop-down / Inline visualization of the filtered items**: RadAutoCompleteBox allows you to control the behavior of the drop-down, which displays the available filtered items (suggestions). Also, the control is able to visualize the filtered items inline in the page content by binding them to a separate list control (thus not using the drop-down at all).
* **Text match highlighting**" RadAutoCompleteBox supports highlighting of the text portion within a filtered item that matches the current input in the control. Thanks to a flexible highlighting mechanism any custom data templates used to present the filtered items can be integrated with the highlighting feature.
* **FilterDelay and FilterStartThreshold**: RadAutoCompleteBox provides a convenient API to improve the perceived user experience while typing. The FilterDelay property specifies the time interval between the last user input action and the filter pass operation, while the FilterStartThreshold property specifies the number of symbols that need to be typed in the textbox before the filtering procedure starts. Both of these properties are especially useful in scenarios with web services and large data where you would like to limit the filtering queries as much as possible.
* **Watermark support**: RadAutoCompleteBox provides built-in support for visualizing content when the textbox is empty and not focused.

# See Also

 * [Getting Started]({%slug autocompletebox-gettingstarted%})
 * [Events]({%slug autocompletebox-events%})
