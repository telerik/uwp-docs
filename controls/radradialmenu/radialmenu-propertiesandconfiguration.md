---
title: Properties and Configuration
page_title: Properties and Configuration
description: Properties and Configuration
slug: radialmenu-propertiesandconfiguration
tags: properties,and,configuration
published: True
position: 3
---

# Properties and Configuration

Here are described all properties of the **RadRadialMenu** control and its elements. For more information about the structure of the menu you can take a look at the [Visual Structure]({%slug radialmenu-visualstructure%}) article.

## RadRadialMenu Properties

* **IsOpen** (bool): Gets or sets a value that indicates whether the **RadRadialMenu** is open.
* **StartAngle** (double): Gets or sets the angle in degrees at which the first **RadialMenuItem** will be positioned.
* **[InnerRadiusFactor]({%slug radialmenu-visualstructure%})** ():
Gets or sets the factor that defines the inner radius of the panel holding the **RadialMenuItemControl** items as a fraction of the size of the **RadRadialMenu** control.
The value should be between 0 and 1. If the passed value lies outside this range, it is automatically set to the nearest boundary value.
* **[InnerNavigationRadiusFactor]({%slug radialmenu-visualstructure%})** (double):
Gets or sets the factor that defines the inner radius of the panel holding the **NavigationItemButton** items as a fraction of the size of the **RadRadialMenu** control.
The value should be between 0 and 1. If the passed value lies outside this range, it is automatically set to the nearest boundary value.
* **[OuterRadiusFactor]({%slug radialmenu-visualstructure%})** (double):
Gets or sets the factor that defines the outer radius of the panel holding the **NavigationItemButton** items as a fraction of the size of the **RadRadialMenu** control.
The value should be between 0 and 1. If the passed value lies outside this range, it is automatically set to the nearest boundary value.
* **ContentMenuBackgroundStyle** (Style):
Gets or sets a value that defines the appearance of the panel that holds the **RadialMenuItemControl** items.
The **Style** should target the **Rectangle** type.
* **NavigationMenuBackgroundStyle** (Style):
Gets or sets a value that defines the appearance of the panel that holds the **NavigationItemButton** items.
The **Style** should target the **Rectangle** type.
* **Items** (ObservableCollection<RadialMenuItem>):
Gets the collection of all **RadialMenuItem** items.
* **[ShowToolTip]({%slug radialmenu-tooltip%})** (bool): Gets or sets a value that indicates whether a tooltip, displaying the currently hovered **RadialMenuItem** header text, will be displayed.
* **CommandService** (CommandService): Gets the **CommandService** instance that manages the commanding behavior of the **RadRadialMenu**.
* **Commands** (CommandCollection<RadRadialMenu>): Gets the collection that contains all custom commands registered with the **CommandService**.
Custom commands have higher priority than the built-in (default) ones.
* **TargetElement** (FrameworkElement): Gets the element that **RadRadialMenu** is associated with when used as a context menu.

## RadialMenuItem Properties

* **IsEnabled** (bool):
Gets or sets a value indicating whether the visual representation of the **RadialMenuItem** is enabled.
* **IsSelected** (bool):
Gets or sets a value indicating whether the visual representation of the **RadialMenuItem** is selected.
* **Selectable** (bool):
Gets or sets a value indicating whether the visual representation of the **RadialMenuItem** could be selected.
* **Deselectable** (bool):
Gets or sets a value indicating whether the visual representation of the **RadialMenuItem** could be deselected.
* **GroupName** (string):
Gets or sets a value specifying the name of the group this item belongs to. All items in a group behave like radio buttons when selected. The default value is *null*.
* **Header** (object):
Gets or sets a value specifying the visual representation of the title of the **RadialMenuItem**.
* **IconContent** (object):
Gets or sets a value specifying the visual representation of the icon associated with the **RadialMenuItem**.
* **[ToolTipContent]({%slug radialmenu-tooltip%})** (object): Gets or sets the content that will be visualized in thetooltip for the current **RadialMenuItem**.
* **ContentSectorBackground** (Brush):
Gets or sets the brush that defines the background of the **RadialMenuItem**.
* **ParentItem** (RadialMenuItem):
Gets the parent of the current **RadialMenuItem** item.
* **ChildItems** (ObservableCollection<RadialMenuItem>):
Gets the **RadialMenuItem**'s children collection.
* **Command** (ICommand): Gets or sets the **ICommand** instance associated the current menu item.
* **CommandParameter** (object): Gets or sets command parameter that will be used by the command associated with the **RadialMenuItem**.

## NavigationItemButton Properties

* **ContentGlyph** (string): Gets or sets the text inside the **NavigationItemButton**.

## DecorationItemButton Properties

* **ThicknessFactor** (double): Gets or sets the factor defining the thickness of the **DecorationItemButton** as a fraction of the size of the **NavigationItemButton**.
The value should be between 0 and 1. If the passed value lies outside this range, it is automatically set to the nearest boundary value.
* **ArrowThicknessFactor** (double): Gets or sets the factor defining the thickness of the arrow part of the **DecorationItemButton** as a fraction of the size of the **NavigationItemButton**.
The value should be between 0 and 1. If the passed value lies outside this range, it is automatically set to the nearest boundary value.

## See Also

* [Getting Started]({%slug radialmenu-gettingstarted%})
* [Visual Structure]({%slug radialmenu-visualstructure%})