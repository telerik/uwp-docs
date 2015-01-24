---
title: Asynchronous Balance
page_title: Asynchronous Balance
description: Asynchronous Balance
slug: databoundlistbox-asynchronous-balance
tags: asynchronous,balance
published: True
position: 0
---

# Asynchronous Balance

Realizing all the items in **RadDataBoundListBox** within the buffer can be a lengthy operation. To optimize the performance in such cases, RadDataBoundListBox exposes an API which can be used to instruct the control to realized items asynchronously. The following properties and methods are part of this API:

* **IsAsyncBalanceEnabled** - determines whether asynchronous balance is allowed at all. If set to true, each visual container will be realized asynchronously upon inital binding
* **AsyncBalanceMode** - allows for changing the way an asynchronous balance operation is performed. By default, this property is set to Standard asynchronous balance mode. When this property is set to FillViewportFirst mode, RadDataBoundListBox will synchronously realize visual containers until the viewport is filled and after that will perform asynchronous balance for the rest of the containers untill the virtualization buffers are filled
* **BeginAsyncBalance** - this method instructs RadDataBoundListBox that the next balance operation should be asynchronous. This method can be used to trigger asynchronous balance even after the initial binding has completed. This method is functional only in the case the IsAsyncBalanceEnabled property is set to true.