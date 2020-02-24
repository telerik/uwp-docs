---
title: Explicit and Implicit Styling
page_title: Explicit and Implicit Styling
description: Check our &quot;Explicit and Implicit Styling&quot; documentation article for RadRadialMenu for UWP control.
slug: radialmenu-styling-explicitandimplicitstyling
tags: explicit,and,implicit,styling
published: True
position: 1
---

# Explicit and Implicit Styling

The following article will demonstrate how to style different parts of the **RadRadialMenu** control.

>You can find more information about the visual parts of the **RadRadialMenu** control in the
[Visual Structure]({%slug radialmenu-visualstructure%}) article.

## Styling the ContentMenu

To style the content menu you can use the **ContentMenuBackgroundStyle** property of the **RadRadialMenu**. You have to set a **Style** that targets the **Rectangle** type.

>When the **ContentSectorBackground** property of the **RadialMenuItem** is set, the menu item will overlay the background of the content menu.

	<telerikPrimitives:RadRadialMenu.ContentMenuBackgroundStyle>
	    <Style TargetType="Rectangle">
	        <Setter Property="Fill" Value="LightGray"/>
	    </Style>
	</telerikPrimitives:RadRadialMenu.ContentMenuBackgroundStyle>

The result is:

![Radial Menu-Content Menu Background Style](images/ExplicitStyling/RadialMenu-ContentMenuBackgroundStyle.png)

## Styling the NavigationMenu

To style the NavigationMenu you can use the **NavigationMenuBackgroundStyle** property of the **RadRadialMenu**. You have to set a **Style** that targets the **Rectangle** type.

>When the menu items have child elements, the **NavigationItemButton** will overlay the background of the navigation menu.

	<telerikPrimitives:RadRadialMenu.NavigationMenuBackgroundStyle>
	    <Style TargetType="Rectangle">
	        <Setter Property="Fill" Value="Chocolate"/>
	    </Style>
	</telerikPrimitives:RadRadialMenu.NavigationMenuBackgroundStyle>

The result is:

![Radial Menu-Navigation Menu Background Style](images/ExplicitStyling/RadialMenu-NavigationMenuBackgroundStyle.png)

## Styling the NavigationItemButton

To change the appearance of the **NavigationItemButton**, you have to define an implicit style in the **Resources** of the **RadRadialMenu** that targets the **NavigationItemButton** type defined in the **Telerik.UI.Xaml.Controls.Primitives.Menu** namespace.

	<telerikPrimitives:RadRadialMenu.Resources>
	    <Style TargetType="telerikPrimitivesMenu:NavigationItemButton">
	        <Setter Property="Foreground" Value="Cyan"/>
	        <Setter Property="Background" Value="DarkGreen"/>
	    </Style>
	</telerikPrimitives:RadRadialMenu.Resources>

Where

	xmlns:telerikPrimitivesMenu="using:Telerik.UI.Xaml.Controls.Primitives.Menu"

![Radial Menu-Navigation Button](images/ExplicitStyling/RadialMenu-NavigationButton.png)

## Syling the RadialMenuItem

The **RadialMenuItem** can be styled via its **ContentSectorBackground** property.

	<telerikPrimitives:RadialMenuItem Header="Item 1" ContentSectorBackground="LightGreen"/>

![Radial Menu-Content Sector Background](images/ExplicitStyling/RadialMenu-ContentSectorBackground.png)

You can use the **InnerRadiusFactor** and the **InnerNavigationRadiusFactor** properties to control the size of the **RadialMenuItem**.

## Styling the DecorationItemButton

To change the appearance of the **DecorationItemButton**, you have to define an implicit style in the **Resources** of the **RadRadialMenu** that targets the **DecorationItemButton** type defined in the **Telerik.UI.Xaml.Controls.Primitives.Menu** namespace.

	<telerikPrimitives:RadRadialMenu.Resources>
	    <Style TargetType="telerikPrimitivesMenu:DecorationItemButton">
	        <Setter Property="ThicknessFactor" Value="0.2"/>
	        <Setter Property="ArrowThicknessFactor" Value="0.3"/>
	        <Setter Property="Background" Value="Red"/>
	    </Style>
	</telerikPrimitives:RadRadialMenu.Resources>

Where:

	xmlns:telerikPrimitivesMenu="using:Telerik.UI.Xaml.Controls.Primitives.Menu"

The result is:

![Radial Menu-Decoration Item Button](images/ExplicitStyling/RadialMenu-DecorationItemButton.png)

## Styling the RadialMenuButton

To change the appearance of the **RadialMenuButton**, you have to define an implicit style in the **Resources** of the **RadRadialMenu** that targets the **RadialMenuButton** type defined in the **Telerik.UI.Xaml.Controls.Primitives.Menu** namespace.

	<telerikPrimitives:RadRadialMenu.Resources>
	    <Style TargetType="telerikPrimitivesMenu:RadialMenuButton">
	        <Setter Property="Content" Value="options"/>
	        <Setter Property="FontSize" Value="15"/>
	        <Setter Property="Width" Value="60"/>
	        <Setter Property="Foreground" Value="DarkGreen"/>
	    </Style>
	</telerikPrimitives:RadRadialMenu.Resources>

Where:

	xmlns:telerikPrimitivesMenu="using:Telerik.UI.Xaml.Controls.Primitives.Menu"

The result is:

![Radial Menu-Radial Menu Button](images/ExplicitStyling/RadialMenu-RadialMenuButton.png)
