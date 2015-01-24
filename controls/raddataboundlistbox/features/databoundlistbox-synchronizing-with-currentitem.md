---
title: Synchronizing with Current Item
page_title: Synchronizing with Current Item
description: Synchronizing with Current Item
slug: databoundlistbox-synchronizing-with-currentitem
tags: synchronizing,with,current,item
published: True
position: 5
---

# Synchronizing with Current Item

The **IsSynchronizedWithCurrentItem** property defines how the selection in RadDataBoundListBox is synchronized with the current item within the data source if possible and vice-verca.

Setting IsSynchronizedWithCurrentItem to true ensures that the selected item always corresponds to the ItemCollection's CurrentItem property.

IsSynchronizedWithCurrentItem is nullable boolean property. It takes one of these three values:

* **true**: the SelectedItem is always synchronized with the current item.
* **false**: the SelectedItem is never synchronized with the current item.
* **null**: the SelectedItem is synchronized with the current item only if the **Selector** uses a **CollectionView**. This is the default value.