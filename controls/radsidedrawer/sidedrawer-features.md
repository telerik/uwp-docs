---
title: Features
page_title: Features
description: Check our &quot;Features&quot; documentation article for RadSideDrawer for UWP control.
slug: sidedrawer-features
tags: sidedrawer,radsidedrawer,features
published: True
position: 1
---

# Features

RadSideDrawer consists of two important parts. The **Main Content** which is visualized by default and the **Drawer** which can be opened/closed from any of the four directions using a predefined transition. 

## Main Content

* **MainContent** : Gets or sets the Main Content.
* **MainContentTemplate** : Gets or sets the template of the Main Content.

## Drawer

* **DrawerContent** : Gets or sets the content of the Drawer.
* **DrawerContentTemplate** : Gets or sets the template of the Drawer.

## Location

To choose from which side of the MainContent to pop the Drawer you can use the 

* **DrawerLocation** property: *{Left, Top, Right, Bottom}*

## Transitions

SideDrawer supports several predefined transitions used to open/close the drawer. The transition can be changed through the

* **DrawerTransition** property *{ SlideInOnTop, Push, Reveal, ReverseSlideOut, ScaleDownPusher, ScaleUp, SlideAlong }*

Also, you can control the duration of the transition through the 

* **AnimationDuration** property

## Drawer State

You can track the current state of the drawer through the 

* **DrawerState** property. *{Opened, Closed, Moving}*

Also, you can show/hide the Drawer programmatically through the following methods:

* **ShowDrawer()**
* **HideDrawer()**


## Manipulations

The Drawer can be open/closed using a handle or through gestures. This can be controlled through the 

* **DrawerManipulationMode** property. You can choose between *{Button, Gestures, Both}*

* **TapOutsideToClose** property -  Gets or sets a value indicating whether the Drawer should be closed when a user taps outside the Drawer's content.

Also, you can define the touch area in pixels that will trigger the Gestures manipulations over the SideDrawer through the

* **TouchTargetThreshold** property
 


## Drawer Button

If you choose to open/close the drawer with button you can choose its position through the

* **DrawerButtonHorizontalAlignment** property
* **DrawerButtonVerticalAlignment** property

Also, you can change its style through the 

* **DrawerButtonStyle** property