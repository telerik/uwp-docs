---
title: Explicit Styling
page_title: Explicit Styling
description: Explicit Styling
slug: radnumericbox-styling-explicitstyling
tags: explicit,styling
published: True
position: 1
---

# Explicit Styling

Here it will be shown how to style the **RadNumericBox** control conponents explicitly. Setting the [TelerikNamedBrushes]({%slug radnumericbox-styling-teleriknamedbrushes%}) will affect the whole application while using explicit styles will affect only the current control.

## Styling the Increase/DecreaseButton

In order to style the Increase/Decrease button explicitly, you have to edit the style of its control. To do that you have to add custom style in the Page resources. Here are shown all the properties that affect the style of the button with their default values.

	<Style TargetType="primitivesCommon:InlineButton" x:Key="CustomButtonStyle">
	    <Setter Property="Padding" Value="9,2,9,4"/>
	    <Setter Property="BorderThickness" Value="2"/>
	    <Setter Property="FontSize" Value="16"/>
	    <Setter Property="IsTabStop" Value="False"/>
	    <Setter Property="FontFamily" Value="{StaticResource SymbolThemeFontFamily}"/>
	    <Setter Property="Background" Value="{StaticResource TelerikNumericBoxSpinButtonBackgroundBrush}"/>
	    <Setter Property="Foreground" Value="{StaticResource TelerikNumericBoxSpinButtonForegroundBrush}"/>
	    <Setter Property="BorderBrush" Value="{StaticResource TelerikNumericBoxSpinButtonBackgroundBrush}"/>
	    <Setter Property="PointerOverBackgroundBrush" Value="{StaticResource TelerikNumericBoxSpinButtonPointerOverBackgroundBrush}"/>
	    <Setter Property="PointerOverForegroundBrush" Value="{StaticResource TelerikNumericBoxSpinButtonForegroundBrush}"/>
	    <Setter Property="PointerOverBorderBrush" Value="{StaticResource TelerikNumericBoxSpinButtonPointerOverBackgroundBrush}"/>
	    <Setter Property="PressedBackgroundBrush" Value="{StaticResource TelerikNumericBoxSpinButtonPressedBackgroundBrush}"/>
	    <Setter Property="PressedForegroundBrush" Value="{StaticResource TelerikNumericBoxSpinButtonPressedForegroundBrush}"/>
	    <Setter Property="PressedBorderBrush" Value="{StaticResource TelerikNumericBoxSpinButtonPressedBackgroundBrush}"/>
	    <Setter Property="DisabledBackgroundBrush" Value="{StaticResource TelerikNumericBoxSpinButtonDisabledBackgroundBrush}"/>
	    <Setter Property="DisabledForegroundBrush" Value="{StaticResource TelerikNumericBoxSpinButtonDisabledForegroundBrush}"/>
	    <Setter Property="DisabledBorderBrush" Value="{StaticResource TelerikNumericBoxSpinButtonDisabledBorderBrush}"/>
	</Style>

You can change every property you wish to custom value but remember that all of them should be present in the style. Then you have to set the Increase/DecreaseButtonStyle property of the RadNumericBox to the custom style as shown in the example below.


{{region NumericButtonSetStyle}}
	<telerik:RadNumericBox DecreaseButtonStyle="{StaticResource CustomButtonStyle}" />
	{{endregion}}



## Styling the Header

To style the header of RadNumericBox you have to define custom style in the Page resources.

	<telerik:RadNumericBox DecreaseButtonStyle="{StaticResource CustomButtonStyle}" />

Then set the HeaderStyle property of the RadNumericBox to the custom style.

	<Style TargetType="ContentControl" x:Key="CustomHeaderStyle">
	    <Setter Property="Foreground" Value="Green"/>
	    <Setter Property="FontSize" Value="20"/>
	    <Setter Property="FontWeight" Value="Bold"/>
	</Style>

The result is shown on the picture below.

![Explicit Styling-Header Style](images/ExplicitStyling-HeaderStyle.png)
