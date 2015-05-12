---
title: Overview
page_title: Overview
description: Overview
slug: busyindicator-overview
tags: overview
published: True
position: 0
---

# Overview

> RadBusyIndicator is available for Windows 8.1 and Windows Phone 8.1.

The RadBusyIndicator control allows you to display an animation which indicates that your application is busy waiting for an asynchronous operation to finish. The control comes with a bunch of predefined animations that can be easily set. You can define your own animations and use them with the RadBusyIndicator control.

You can use the following properties to fine-tune the behavior of RadBusyIndicator:

* **Content**: Defines the content that is displayed next to the animation. This content may give useful information about the process being indicated by the control.
* **ContentTemplate**: Defines the template used to represent the content defined in the Content property.
* **ContentPosition**: Accepts values from the ContentPosition enum which defines the position of the content relative to the indicator animation.
* **IsActive**: Defines whether the RadBusyIndicator control displays an animation or not.
* **AnimationStyle**: Gets or sets a value defined by the AnimationStyle enumeration that determines the type of animation shown in the RadBusyIndicator.
* **IndicatorAnimationStyle**: Accepts a Style instance which defines the actual indicator animation. Can be used to define a custom indicator animation. For more information on this property take a look at the Custom animations topic.

> In order to use RadBusyIndicator for Windows Universal, the following references are required:

* **Telerik.Core.dll**
* **Telerik.UI.Xaml.Primitives.dll**
