---
title: Use One RadRadialMenu for Many Target Elements
page_title: Use One RadRadialMenu for Many Target Elements
description: Check our &quot;Use One RadRadialMenu for Many Target Elements&quot; documentation article for RadRadialMenu for UWP control.
slug: radialmenu-howto-onemenuformultipletargets
tags: use,one,radradialmenu,for,many,target,elements
published: True
position: 3
---

# Use One RadRadialMenu for Many Target Elements

This example demonstrates how to define a single instance of **RadRadialMenu** and use it as a context menu for multiple targets.

First you should read the [Define RadRadialMenu as a Static Resource]({%slug radialmenu-howto-definemenuasstaticresource%}) article to see how to define a **RadRadialMenu** as a static resource.


After that you can bind the **RadRadialContextMenu.Menu** attached property of the target elements to the **Menu** property of the **RadialMenuProvider** instance defined in the Resources of the Page.

	<StackPanel Background="{StaticResource ApplicationPageBackgroundThemeBrush}" >
	    <TextBlock Text="Hover me!" FontSize="20"
	               Margin="10" Width="150" TextAlignment="Center"
	               telerikPrimitives:RadRadialContextMenu.Menu="{Binding Menu, Source={StaticResource menuProvider}}">
	        <telerikPrimitives:RadRadialContextMenu.Behavior>
	            <telerikPrimitives:RadialMenuTriggerBehavior AttachTriggers="PointerOver"/>
	        </telerikPrimitives:RadRadialContextMenu.Behavior>
	    </TextBlock>
	
	    <Grid>
	        <Rectangle Margin="10" Width="150" Height="50" Fill="DodgerBlue"
	                   telerikPrimitives:RadRadialContextMenu.Menu="{Binding Menu, Source={StaticResource menuProvider}}">
	            <telerikPrimitives:RadRadialContextMenu.Behavior>
	                <telerikPrimitives:RadialMenuTriggerBehavior AttachTriggers="PointerPressed"/>
	            </telerikPrimitives:RadRadialContextMenu.Behavior>
	        </Rectangle>
	        <TextBlock Text="Press me!" HorizontalAlignment="Center" VerticalAlignment="Center"
	                   IsHitTestVisible="False" FontSize="20" Foreground="White"/>
	    </Grid>
	
	    <TextBox Text="TextBox" Margin="10" Width="150" TextAlignment="Center"
	             telerikPrimitives:RadRadialContextMenu.Menu="{Binding Menu, Source={StaticResource menuProvider}}">
	        <telerikPrimitives:RadRadialContextMenu.Behavior>
	            <telerikPrimitives:RadialMenuTriggerBehavior AttachTriggers="Focused"/>
	        </telerikPrimitives:RadRadialContextMenu.Behavior>
	    </TextBox>
	</StackPanel>

This is the result:

![Radial Menu-How To-Reusing](images/RadialMenu-HowTo-Reusing.png)

# See Also

 * [RadRadialMenu as a Context Menu]({%slug radialmenu-behavior%})
 * [Define RadRadialMenu as a Static Resource]({%slug radialmenu-howto-definemenuasstaticresource%})
