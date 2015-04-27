---
title: Currency
page_title: Currency
description: RadListView Currency
slug: radlistview-currency
tags: radlistview,listview,currency
published: True
position: 
---

# Currency

RadListView supports a notation for a Current Item. Here's the exposed API: 

* **CurrentItem**: Gets the current item.
* **IsSynchronizedWithCurrentItem**: Gets or sets a value indicating whether the selected item is synchronized with the current item.
* **EnsureCurrentItemIntoView**: Gets or sets a value indicating whether the listview should ensure the current item is into View. 


To change the current item programmatically, you can take advantage of the following methods:

* **MoveCurrentTo(object item)**

To track when the Current Item has changed, please use the following events:

* **CurrentItemChanging**: fires before the current item has changed.
* **CurrentItemChanged**: fires after the current item has changed.
