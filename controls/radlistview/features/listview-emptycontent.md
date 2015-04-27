---
title: Empty Content
page_title: Empty Content
description: RadListView Empty Content
slug: radlistview-empty-content
tags: radlistview,listview,empty,emptycontent
published: True
position: 
---

# Empty Content

The RadListView provides out-of-the-box functionality for handling cases when no data is available for the control.
It is sometimes useful to give a hint to the end-user that RadListView has nothing to display. This may happen when the end-user has made a search inquiry or has filtered out the data in any way. The empty content is displayed each time the data source used to populate the RadListView is empty or there is no data source at all (i.e. the ItemsSource property is set to null).

Here are the properties that affect the empty content:

* **EmptyContent** (object): Gets or sets the content that will be displayed when there are no items in the list view.
* **EmptyContentDisplayMode** (EmptyContentDisplayMode): Gets or sets a value that specifies when the no data content will be displayed. The available modes are:
 * *DataSourceNull*: when the ItemsSource is set to null;
 * *DataSourceEmpty*: when the ItemsSource is not null, but has no items;
 * *Always*: when the ItemsSource is null or empty;
 * *None*: never.