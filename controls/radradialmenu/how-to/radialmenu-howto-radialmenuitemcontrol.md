---
title: Customize the RadialMenuItem Content
page_title: Customize the RadialMenuItem Content
description: Customize the RadialMenuItem Content
slug: radialmenu-howto-radialmenuitemcontrol
tags: customize,the,radialmenuitem,content
published: True
position: 1
---

# Customize the RadialMenuItem Content

This example demonstrates how you can change the appearance of the **RadialMenuItem** content.

Here we will use an implicit **Style** that targets the **RadialMenuItemControl** type defined in the **Telerik.UI.Xaml.Controls.Primitives.Menu** namespace. We will set a **Template** that will have two **ContentPresenter** elements bound to the **IconContent** and **Header** properties of the **RadialMenuItem** element.

	<telerikPrimitives:RadRadialMenu>
	    <telerikPrimitives:RadRadialMenu.Resources>
	        <Style TargetType="telerikPrimitivesMenu:RadialMenuItemControl">
	            <Setter Property="Template">
	                <Setter.Value>
	                    <ControlTemplate TargetType="telerikPrimitivesMenu:RadialMenuItemControl">
	                        <StackPanel>
	                            <ContentPresenter VerticalAlignment="Bottom" HorizontalAlignment="Center"
	                                              FontSize="14" Content="{TemplateBinding Header}" >
	                            </ContentPresenter>
	                            <ContentPresenter VerticalAlignment="Bottom" HorizontalAlignment="Center" 
	                                              Width="30" Height="30" 
	                                              Content="{TemplateBinding IconContent}">
	                            </ContentPresenter>
	                        </StackPanel>
	                    </ControlTemplate>
	                </Setter.Value>
	            </Setter>
	        </Style>
	    </telerikPrimitives:RadRadialMenu.Resources>
	
	    <telerikPrimitives:RadialMenuItem>
	        <telerikPrimitives:RadialMenuItem.Header>
	            <TextBlock Foreground="#3B5998">Facebook</TextBlock>
	        </telerikPrimitives:RadialMenuItem.Header>
	        <telerikPrimitives:RadialMenuItem.IconContent>
	            <Image  Source="ms-appx:///Images/facebook.png"/>
	        </telerikPrimitives:RadialMenuItem.IconContent>
	    </telerikPrimitives:RadialMenuItem>
	    <telerikPrimitives:RadialMenuItem>
	        <telerikPrimitives:RadialMenuItem.Header>
	            <TextBlock Foreground="#4099FF">Twitter</TextBlock>
	        </telerikPrimitives:RadialMenuItem.Header>
	        <telerikPrimitives:RadialMenuItem.IconContent>
	            <Image  Source="ms-appx:///Images/twitter.png"/>
	        </telerikPrimitives:RadialMenuItem.IconContent>
	    </telerikPrimitives:RadialMenuItem>
	    <telerikPrimitives:RadialMenuItem>
	        <telerikPrimitives:RadialMenuItem.Header>
	            <TextBlock Foreground="#C92C19">Mail</TextBlock>
	        </telerikPrimitives:RadialMenuItem.Header>
	        <telerikPrimitives:RadialMenuItem.IconContent>
	            <Image  Source="ms-appx:///Images/mail.png"/>
	        </telerikPrimitives:RadialMenuItem.IconContent>
	    </telerikPrimitives:RadialMenuItem>
	</telerikPrimitives:RadRadialMenu>


This is the result:

![Radial Menu-Radial Menu Item Control Styling](images/RadialMenu-RadialMenuItemControlStyling.png)

# See Also

 * [Properties and Configuration]({%slug radialmenu-propertiesandconfiguration%})
