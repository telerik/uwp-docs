---
title: Implicit Styling
page_title: Implicit Styling
description: Check our &quot;Implicit Styling&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-styling-implicitstyling
tags: implicit,styling
published: True
position: 0
---

# Implicit Styling

This article demonstrates how to style specific elements of the grid through implicit styles.
The Style that defines the appearance of the element should be defined in the **Resources** of the grid and the **TargetType** property of the style specifies which element will be styled.

Below are listed the parts that could be targeted.

>The following namespace has to be added to the Page: **xmlns:gridPrimitives="using:Telerik.UI.Xaml.Controls.Grid.Primitives"**

## Hover Control

This is how you can change the appearance of a Cell/Row(depends on the current SelectionUnit) when the mouse goes over it.

	<telerikGrid:RadDataGrid.Resources>
	    <Style TargetType="gridPrimitives:DataGridHoverControl">
	        <Setter Property="Background" Value="Red"/>
	        <Setter Property="Opacity" Value="0.5"/>
	    </Style>
	</telerikGrid:RadDataGrid.Resources>

## SelectionRegionBorder Control

This is how you can change the appearance of the Selected Cell/Row(depends on the current SelectionUnit). This control overlays the decorations of the selected Cell/Row.

	<telerikGrid:RadDataGrid.Resources>
	    <Style TargetType="gridPrimitives:SelectionRegionBorderControl">
	        <Setter Property="BorderBrush" Value="Red"/>
	    </Style>
	</telerikGrid:RadDataGrid.Resources>

## SelectionRegionBackground Control

This is how you can change the appearance of the Selected Cell/Row(depends on the current SelectionUnit). 

	<telerikGrid:RadDataGrid.Resources>
	    <Style TargetType="gridPrimitives:SelectionRegionBackgroundControl">
	        <Setter Property="Background" Value="Red"/>
	        <Setter Property="BorderBrush" Value="Green"/>
	        <Setter Property="BorderThickness" Value="2"/>
	    </Style>
	</telerikGrid:RadDataGrid.Resources>
	
> Please keep in mind that SelectionRegionBorder control is rendered over the SelectionRegionBackground control.
	
## Currency Control

This is how you can change the appearance of the Currency Control, i.e. the appearance of the Current Item.

	<telerikGrid:RadDataGrid.Resources>
	    <Style TargetType="gridPrimitives:DataGridCurrencyControl">
	        <Setter Property="Background" Value="Blue"/>
	    </Style>
	</telerikGrid:RadDataGrid.Resources>

## Column Drag Control

This is how you can change the appearance of the Column header while executing a drag operation.

	<telerikGrid:RadDataGrid.Resources>
	    <Style TargetType="gridPrimitives:DataGridColumnDragControl">
	        <Setter Property="Background" Value="Red"/>
	        <Setter Property="Foreground" Value="Green"/>
	    </Style>
	</telerikGrid:RadDataGrid.Resources>

## Groupheader Flyout

This is how you can change the appearance of the Group Header in the Flyout.

	<telerikGrid:RadDataGrid.Resources>
	    <Style TargetType="gridPrimitives:DataGridFlyoutGroupHeader">
	        <Setter Property="Background" Value="Red"/>
	    </Style>
	</telerikGrid:RadDataGrid.Resources>

## Filtering Flyout

These are the properties that affect the appearance of the Filtering Flyout:

* Background
* BorderBrush
* Foreground
* BorderThickness
* Padding
* HorizontalContentAlignment
* VerticalContentAlignment
* MinWidth
* MaxWidth

For example, this changes the background of the control:

	<telerikGrid:RadDataGrid.Resources>
	    <Style TargetType="gridPrimitives:DataGridFilteringFlyout">
	        <Setter Property="Background" Value="Green"/>
	    </Style>
	</telerikGrid:RadDataGrid.Resources>

There are also properties that define the style of **FilterButton**, **ClearFilterButton** and **ExpandCollapseButton**.

> Note that when setting a Style to one of these elements, all properties that affect the appearance of that
element have to be set in the Style.

Below are listed the default styles of these elements. You have to set custom values to the properties you wish to change. Also you will need the following namespaces added to the Page:

	xmlns:primitivesCommon="using:Telerik.UI.Xaml.Controls.Primitives.Common"
	xmlns:gridTheming="using:Telerik.UI.Xaml.Controls.Grid.Theming"

And the following class should be added to the static resources in order to have access to the predefined control brushes:

	<gridTheming:PaletteInitializer x:Key="PaletteInitializer"/>

These are the properties that style the elements of the Filtering Flyout:

### FilterButtonStyle

	<telerikGrid:RadDataGrid.Resources>
	    <Style TargetType="gridPrimitives:DataGridFilteringFlyout">
	        <Setter Property="FilterButtonStyle">
	            <Setter.Value>
	                <Style TargetType="primitivesCommon:InlineButton">
	                    <Setter Property="Background" Value="{StaticResource TelerikGridServiceButtonBackgroundBrush}" />
	                    <Setter Property="Foreground" Value="{StaticResource TelerikGridServiceButtonForegroundBrush}"/>
	                    <Setter Property="PointerOverBackgroundBrush" Value="{StaticResource TelerikGridServiceButtonPointerOverBackgroundBrush}"/>
	                    <Setter Property="PointerOverForegroundBrush" Value="{StaticResource TelerikGridServiceButtonForegroundBrush}"/>
	                    <Setter Property="PressedBackgroundBrush" Value="{StaticResource TelerikGridServiceButtonPressedBackgroundBrush}"/>
	                    <Setter Property="PressedForegroundBrush" Value="{StaticResource TelerikGridServiceButtonPressedForegroundBrush}"/>
	                    <Setter Property="HorizontalAlignment" Value="Left" />
	                    <Setter Property="VerticalAlignment" Value="Center" />
	                    <Setter Property="HorizontalContentAlignment" Value="Center"/>
	                    <Setter Property="VerticalContentAlignment" Value="Center"/>
	                    <Setter Property="Padding" Value="0" />
	                </Style>
	            </Setter.Value>
	        </Setter>
	    </Style>
	</telerikGrid:RadDataGrid.Resources>

### ClearFilterButtonStyle

	<telerikGrid:RadDataGrid.Resources>
	    <Style TargetType="gridPrimitives:DataGridFilteringFlyout">
	        <Setter Property="ClearFilterButtonStyle">
	            <Setter.Value>
	                <Style TargetType="primitivesCommon:InlineButton">
	                    <Setter Property="BorderThickness" Value="2 2 0 0"/>
	                    <Setter Property="Background" Value="{StaticResource TelerikGridFilterFlyoutClearButtonBackgroundBrush}"/>
	                    <Setter Property="Foreground" Value="{StaticResource TelerikGridFilterFlyoutClearButtonForegroundBrush}"/>
	                    <Setter Property="BorderBrush" Value="{StaticResource TelerikGridFilterFlyoutClearButtonBorderBrush}"/>
	                    <Setter Property="PointerOverBackgroundBrush" Value="{StaticResource TelerikGridFilterFlyoutClearButtonPointerOverBackgroundBrush}"/>
	                    <Setter Property="PointerOverForegroundBrush" Value="{StaticResource TelerikGridFilterFlyoutClearButtonForegroundBrush}"/>
	                    <Setter Property="PointerOverBorderBrush" Value="{StaticResource TelerikGridFilterFlyoutClearButtonBorderBrush}"/>
	                    <Setter Property="PressedBackgroundBrush" Value="{StaticResource TelerikGridFilterFlyoutClearButtonPressedBackgroundBrush}"/>
	                    <Setter Property="PressedForegroundBrush" Value="{StaticResource TelerikGridFilterFlyoutClearButtonPressedForegroundBrush}"/>
	                    <Setter Property="PressedBorderBrush" Value="{StaticResource TelerikGridFilterFlyoutClearButtonPressedBorderBrush}"/>
	                </Style>
	            </Setter.Value>
	        </Setter>
	    </Style>
	</telerikGrid:RadDataGrid.Resources>

### ExpandCollapseButtonStyle

	<telerikGrid:RadDataGrid.Resources>
	    <Style TargetType="gridPrimitives:DataGridFilteringFlyout">
	        <Setter Property="ExpandCollapseButtonStyle">
	            <Setter.Value>
	                <Style TargetType="primitivesCommon:InlineButton">
	                    <Setter Property="BorderThickness" Value="0 2 0 0"/>
	                    <Setter Property="Background" Value="Transparent"/>
	                    <Setter Property="Foreground" Value="{StaticResource TelerikGridFilterFlyoutExpandButtonForegroundBrush}"/>
	                    <Setter Property="PointerOverBackgroundBrush" Value="{StaticResource TelerikGridFilterFlyoutExpandButtonPointerOverBackgroundBrush}"/>
	                    <Setter Property="PointerOverForegroundBrush" Value="{StaticResource TelerikGridFilterFlyoutExpandButtonForegroundBrush}"/>
	                    <Setter Property="PointerOverBorderBrush" Value="{StaticResource TelerikGridFilterFlyoutExpandButtonPointerOverBorderBrush}"/>
	                    <Setter Property="PressedBackgroundBrush" Value="{StaticResource TelerikGridFilterFlyoutClearButtonPressedBackgroundBrush}"/>
	                    <Setter Property="PressedForegroundBrush" Value="{StaticResource TelerikGridFilterFlyoutClearButtonPressedForegroundBrush}"/>
	                    <Setter Property="PressedBorderBrush" Value="{StaticResource TelerikGridFilterFlyoutClearButtonPressedBorderBrush}"/>
	                </Style>
	            </Setter.Value>
	        </Setter>
	    </Style>
	</telerikGrid:RadDataGrid.Resources>