---
title: Empty Content
page_title: Empty Content
description: Check our &quot;Empty Content&quot; documentation article for RadDataBoundListBox for UWP control.
slug: databoundlistbox-emptycontent
tags: empty,content
published: True
position: 1
---

# Empty Content

RadDataBoundListBox provides out-of-the-box functionality for handling cases when no data is available for the control. The following properties can be used to utilize these features:

* EmptyContent
* EmptyContentTemplate

## EmptyContent and EmptyContentTemplate

It is sometimes useful to give a hint to the end-user that RadDataBoundListBox has nothing to display. This may happen when the end-user has made a search inquiry or has
filtered out the data in any way. The **EmptyContent** and **EmptyContentTemplate** properties exposed by RadDataBoundListBox can be used in such
scenarios.

The content and its template defined by these properties are displayed each time the data source used to populate the RadDataBoundListBox is empty or there is no data source at
all (i.e. the **ItemsSource** property is set to **null**).

## EmptyContentDisplayMode

The **EmptyContentDisplayMode** property can be used to define when the empty content defined by the **EmptyContent** and
**EmptyContentTemplate** properties will be displayed. This property accepts values from the *EmptyContentDisplayMode* enumeration. Following values are
possible:

* **Always**: the empty content is displayed when there is no items source or when there is an empty items source.
* **DataSourceEmpty**: the empty content is displayed only when there is an empty data source attached to the control.
* **DataSourceNull**: the empty content is displayed only when there is no data source attached to the control.