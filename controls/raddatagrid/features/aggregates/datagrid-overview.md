---
title: Overview
page_title: Overview
description: Check our &quot;Overview&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-aggregates-overview
tags: overview
published: True
position: 0
---

# Overview

RadDataGrid exposes an Aggregates API through the RadDataGrid.AggregateDescriptors property where you can add [PropertyAggregateDescriptors]({%slug datagrid-aggregates-propertyaggregatedescriptor%}) or [DelegateAggregateDescriptors]({%slug datagrid-aggregates-delegateaggregatedescriptor%}).

The developer can choose PropertyAggregateDescriptor and use one of the KnownFunctions that are listed below
or to choose DelegateAggregateDescriptor and implement a custom function through the IAggregateFunction interface.

The available Functions are:

* **Sum** - The SUM function.
* **Min** - The MINIMUM function.
* **Max** - The MAXIMUM function.
* **Average** - The AVERAGE function.
* **Count** - The COUNT function.
* **Product** - The PRODUCT function.
* **StdDev** - The STANDARD DEVIATION, based on a sample function.
* **StdDevP** - The STANDARD DEVIATION, based on the entire population function.
* **Var** - The VARIANCE, based on a sample function.
* **VarP** - The VARIANCE, based on the entire population function.