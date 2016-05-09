---
title: Overview
page_title: Overview
description: Overview
slug: databoundlistbox-overview
tags: overview
published: True
position: 0
---

# Overview

> RadDataBoundListBox is available for **Widndows 8.1**, **Widndows Phone 8.1** and **UWP**.

**RadDataBoundListBox** allows you to visualize large amount of data in a ListBox-like control with greatly optimized performance and user interaction
responsiveness.

> RadDataBoundListBox is a lightweight component mainly used for easy migration from windows 8.0 to windows 8.1. In order to take advantage of features like [selection]({%slug radlistview-selection%}), [filtering]({%slug radlistview-filtering%}), [grouping]({% slug radlistview-grouping%}) and [sorting]({%slug radlistview-sorting%}) customers should use [RadListView]({%slug radlistview-overview%}) 

## Key Features

* **Synchronizing with CurrentItem** - RadDataBoundList support syncronizing with ICollectionView.Current item.
* **Asynchronous Balance** - Realizing all the items in RadDataBoundListBox within the buffer can be a lengthy operation. To optimize the performance in such cases, RadDataBoundListBox exposes an API which can be used to instruct the control to realized items asynchronously.
* **Header and Footer** - RadDataBoundListBox allows for defining a Header and a Footer. These are specialized visual items that are displayed at the beginning and at the end of the scrollable list and bring additional information to the end-user.
* **EmptyContent and EmptyContentDisplayMode** - RadDataBoundListBox provides out-of-the-box functionality for handling cases when no data is available for the control.
* **Virtualization Strategies** - RadDataBoundListBox allows for using different Virtualization Strategies for its visual items, such as Stack and Wrap.
* **Pull to refresh** - RadDataBoundListBox provides infrastructure that allows the end-user to request a data refresh by pulling the top edge of the scrollable content down and releasing it.
* **Item Reorder** - The Item Reorder functionality in DataBoundListBox allows the end-user to reorder visual items in the list box' viewport also changing the position of the items in the provided data source.
* **Data Virtualization** -RadDataBoundListBox supports several modes of data virtualization enabling useful technique for handling large amounts of data in connected scenarios.
* **Item animations** -RadDataBoundListBox supports per-item animations for viewport items that are added or removed from the viewport. This may happen when items are added or removed from the data source, or when the ItemsSource property is reset.
