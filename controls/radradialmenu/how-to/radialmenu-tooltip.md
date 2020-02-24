---
title: Customize the ToolTip
page_title: Customize the ToolTip
description: Check our &quot;Customize the ToolTip&quot; documentation article for RadRadialMenu for UWP control.
slug: radialmenu-tooltip
tags: customize,the,tooltip
published: True
position: 0
---

# ToolTip Customization

By default the **RadRadialMenu**'s tooltip displays the header content of the currently hovered menu item. There are two ways to customize the tooltip:

* On a per item basis via the **ToolTipContent** of the **RadialMenuItem**. This will change only the content of the tooltip.
* Globally for all items in the menu using implicit **Style**.

The tooltip visibility is controlled by the **ShowToolTip** property of the **RadRadialMenu** control.

## Example of Using the ToolTipContent Property

This example demonstrates how to customize the content of the tooltip using the **ToolTipContent** property.

	<telerikPrimitives:RadRadialMenu ShowToolTip="True">
	    <telerikPrimitives:RadialMenuItem Header="Item 1">
	        <telerikPrimitives:RadialMenuItem.ToolTipContent>
	            <TextBlock Text="" FontFamily="Segoe UI Symbol" Foreground="Pink"/>
	        </telerikPrimitives:RadialMenuItem.ToolTipContent>
	    </telerikPrimitives:RadialMenuItem>
	    <telerikPrimitives:RadialMenuItem Header="Item 2">
	        <telerikPrimitives:RadialMenuItem.ToolTipContent>
	            <TextBlock Text="" FontFamily="Segoe UI Symbol" Foreground="Pink"/>
	        </telerikPrimitives:RadialMenuItem.ToolTipContent>
	    </telerikPrimitives:RadialMenuItem>
	    <telerikPrimitives:RadialMenuItem Header="Item 2">
	        <telerikPrimitives:RadialMenuItem.ToolTipContent>
	            <TextBlock Text="" FontFamily="Segoe UI Symbol" Foreground="Pink"/>
	        </telerikPrimitives:RadialMenuItem.ToolTipContent>
	    </telerikPrimitives:RadialMenuItem>
	</telerikPrimitives:RadRadialMenu>

Here is the result:

![Radial Menu-Tool Tip Content](images/RadialMenu-ToolTipContent.png)

## Example of Using Implicit Style

This example demonstrates how to customize the whole tooltip. In the in the **Resources** of the **RadRadialMenu** control you have to define an implicit style that targets the **MenuToolTip** type. You can still use the **ToolTipContent** and **Header** properties of the items if you set a **TemplateBinding** to the **Content** property in the tooltip style.

>You will need the following namespace: **xmlns:telerikPrimitivesMenu="using:Telerik.UI.Xaml.Controls.Primitives.Menu"**

	<telerikPrimitives:RadRadialMenu ShowToolTip="True">
	    <telerikPrimitives:RadRadialMenu.Resources>
	        <Style TargetType="telerikPrimitivesMenu:MenuToolTip">
	            <Setter Property="Transitions">
	                <Setter.Value>
	                    <TransitionCollection>
	                        <PopupThemeTransition/>
	                    </TransitionCollection>
	                </Setter.Value>
	            </Setter>
	            <Setter Property="Template">
	                <Setter.Value>
	                    <ControlTemplate TargetType="telerikPrimitivesMenu:MenuToolTip">
	                        <StackPanel Orientation="Horizontal" Margin="3">
	                            <Ellipse Width="2" Height="2" Fill="LightSalmon" Margin="1"/>
	                            <Ellipse Width="3" Height="3" Fill="LightSalmon" Margin="1"/>
	                            <Ellipse Width="4" Height="4" Fill="LightSalmon" Margin="1"/>
	                            <TextBlock Text="{TemplateBinding Content}" 
	                                       VerticalAlignment="Center" HorizontalAlignment="Center" 
	                                       Foreground="LightSalmon" Margin="4,0,4,0"/>
	                            <Ellipse Width="4" Height="4" Fill="LightSalmon" Margin="1"/>
	                            <Ellipse Width="3" Height="3" Fill="LightSalmon" Margin="1"/>
	                            <Ellipse Width="2" Height="2" Fill="LightSalmon" Margin="1"/>
	                        </StackPanel>
	                    </ControlTemplate>
	                </Setter.Value>
	            </Setter>
	        </Style>
	    </telerikPrimitives:RadRadialMenu.Resources>
	    <telerikPrimitives:RadialMenuItem Header="Item 1" ToolTipContent="Main Item"/>
	    <telerikPrimitives:RadialMenuItem Header="Item 2"/>
	    <telerikPrimitives:RadialMenuItem Header="Item 3"/>
	</telerikPrimitives:RadRadialMenu>

Here is the result:

![Radial Menu-Tool Tip Style](images/RadialMenu-ToolTipStyle.png)

# See Also

 * [Properties and Configuration]({%slug radialmenu-propertiesandconfiguration%})
