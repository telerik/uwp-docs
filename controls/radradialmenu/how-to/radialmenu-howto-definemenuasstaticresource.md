---
title: Define RadRadialMenu as a Static Resource
page_title: Define RadRadialMenu as a Static Resource
description: Check our &quot;Define RadRadialMenu as a Static Resource&quot; documentation article for RadRadialMenu for UWP control.
slug: radialmenu-howto-definemenuasstaticresource
tags: define,radradialmenu,as,a,static,resource
published: True
position: 2
---

# Define RadRadialMenu as a Static Resource

If you wish to reuse the same **RadRadialMenu** for different targets, then you could define it as a static resource. The problem is that the **RadRadialMenu** is a **FrameworkElement** and if you define it directly in the Resources of the Page, it will be attached to the visual tree as a child of the Page. This leads to a problem - when the menu is used as a contex menu, it is visualized in a popup; if the menu is already in the children collection of the page, it can not be added as a child of the popup.

As a workaround you can create a class that has a **RadRadialMenu** property that will hold the instance of the radial menu we will reuse. This class is not a **FrameworkElement**, hence it will not be added to the visual tree and we will avoid the problem.

	public class RadialMenuProvider
	{
	    public RadRadialMenu Menu { get; set; }
	}

Now we can define an instance of this class in the Resources of the Page.

	<Page.Resources>
	    <local:RadialMenuProvider x:Key="menuProvider">
	        <local:RadialMenuProvider.Menu>
	            <telerikPrimitives:RadRadialMenu>
	                <telerikPrimitives:RadialMenuItem Header="Item 1"/>
	                <telerikPrimitives:RadialMenuItem Header="Item 2"/>
	                <telerikPrimitives:RadialMenuItem Header="Item 3"/>
	            </telerikPrimitives:RadRadialMenu>
	        </local:RadialMenuProvider.Menu>
	    </local:RadialMenuProvider>
	</Page.Resources>

# See Also

 * [Use One RadRadialMenu for Many Target Elements]({%slug radialmenu-howto-onemenuformultipletargets%})
