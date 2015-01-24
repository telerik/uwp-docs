---
title: Telerik Controls Examples
page_title: Telerik Controls Examples
description: Telerik Controls Examples
slug: samples-demos
tags: telerik,controls,examples
published: True
position: 0
---

# Telerik Controls Examples

The **Telerik Controls Examples** (Demos - Telerik UI for Windows Universal) are a free demo application that will guide you through the rich
behavior and features of Telerik UI for Windows Universal.


## Goals

The Telerik Controls Examples application demonstrates some interesting use cases of each control in the suite and shows you how to achieve them.
Each example allows flipping the screen to see the source code used to implement the scenario. This way you can look at the (main) implementation logic
without even opening the solution in Visual Studio.

Each demo page consists of:

* Title and navigation. **(1)**
* Demo content: the actual demo implementation. **(2)**
* Demo description: each demo has a description of the scenario that is demonstrated. **(3)**
* Demo source code: it is initially not visible. Upon rotating the screen (on a touch device) the content is reordered and the demo description is
replaced by the demo source code.

![demos 1](images/QSF1.png)

![demos 2](images/QSF2.png)

Since the source shown in the application is mostly for preview purposes, we also distribute the solution used to build these examples.

## Where to Find this Example

You can find the Telerik Controls Examples source code in your UI for Windows Universal installation folder. When you use the automatic installer, apart from the actual controls installation, you also get the examples solution. You will find a shortcut to the solution on your Desktop and the actual project in *~\Telerik\UI for Windows Universal QX 201X\Demos*.

If you only want to browse the samples, you can install them on your machine from the Windows Store. A link to the app page in the store is available [here](http://apps.microsoft.com/windows/en-US/app/telerik-controls-examples-xaml/7cdb9bc0-e3a7-47b5-b6d6-658d88d4125d).

## How to Navigate to the Source Code of a Certain Sample

Due to the great number of example pages in the solution, at first it may seem hard to navigate to a specific example that you saw in the running application. However, once you understand the logic behind the folder structure, you should not have a problem locating a sample's source code. Here are some Telerik Controls Examples navigation tips:

1. All examples are contained inside the **examples** folder, which you can see in the root directory of the solution.
1. Navigate to the folder that has the name of the control. The name is the same as the main title of the example you looked at.
1. Look at the sub-title of the example. You should be able to locate (part of) it as a name of a folder in the current control directory in the solution. Additionally, the first example of a given control is placed inside a FirstLook folder. Open the folder of the desired example and you will find its source files.
