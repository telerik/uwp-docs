---
title: Culture Service
page_title: Culture Service
description: Culture Service
slug: common-cultureservice
tags: culture,service
published: True
position: 2
---

# Culture Service

The CultureService class allows to localize the culture-aware settings of the RadNumericBox and the RadCalendar on a per control basis. It is placed in the *Telerik.UI.Xaml.Controls.Primitives* namespace.
      

## Properties

The following attached properties are exposed:

* Culture
* CultureName

Here are the available methods:

* GetCultureName(DependencyObject instance): Gets the CultureName value for the specified dependency object instance.
* SetCultureName(DependencyObject instance, string cultureName): Sets the specified CultureName value to the provided dependency object instance.
* GetCulture(DependencyObject instance): Gets the CultureInfo value for the specified dependency object instance.
* SetCulture(DependencyObject instance, CultureInfo value): Sets the specified CultureInfo value to the provided dependency object instance.

The following example shows how to change the Culture of a single RadNumericBox to "de":

	<telerikInput:RadNumericBox telerikPrimitives:CultureService.CultureName="de"/>

	RadNumericBox currentNumBox = new RadNumericBox();
	currentNumBox.SetValue(CultureService.CultureProperty, new CultureInfo("de"));