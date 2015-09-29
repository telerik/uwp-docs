---
title: Start Using Telerik UI for Windows Universal
page_title: Start Using Telerik UI for Windows Universal
description: Start Using Telerik UI for Windows Universal
slug: radcontrolsforwin8-introduction-createapp
tags: start,using,telerik,ui,for,windows,universal
published: True
position: 2
---

# Start Using Telerik UI for Windows Universal

The following example describes what steps you should perform in order to add **Telerik UI for Windows Universal** in your application.

## Prerequisites

Before walking through this example, you must have installed **Telerik UI for Windows Universal**, **Windows 8.1 / Windows Phone 8.1** and **Visual Studio 2013** on your machine.

## Steps

#### Create Blank Application

1. Launch Visual Studio.
1. Choose `Create new project` > `Store Apps`.
1. Choose Blank App (Universal Apps).
1. Name the project SampleApp and click `OK`.
 
![Getting Started Windows Store App](images/Introduction/GettingStartedWindowsStoreApp.png)

#### Add a Reference to Telerik UI for Windows Universal Extension SDK

1. Right-click on project References and choose Add Reference.
1. In the Reference Manager, select Windows -> Extensions.
1. Select Telerik UI for Windows Universal and click OK.

![Getting Started AddSDK](images/Introduction/GettingStartedAddSDK.png)

#### Add a control to a Page

1. Define telerik namespace:

		xmlns:telerik="using:Telerik.UI.Xaml.Controls.Input"

1. Define control (e.g. RadDatePicker):

		<telerik:RadDatePicker/>