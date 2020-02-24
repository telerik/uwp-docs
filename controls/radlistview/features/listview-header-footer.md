---
title: Header and Footer
page_title: Header and Footer
description: Check our &quot;Header and Footer&quot; documentation article for RadListView for UWP control.
slug: radlistview-header-footer
tags: radlistview,listview,header,footer
published: True
position: 
---

# Header and Footer

RadListView allows for defining Header and Footer. These are specialized visual items that are displayed at the beginning and at the end of the scrollable list and bring additional information to the end-user. You can define header and footer with following properties:

- **ListHeader**
- **ListFooter**

Here is an example:

	<telerikDataControls:RadListView ListFooter="Footer">
	    <telerikDataControls:RadListView.ListHeader>
	            <TextBlock Text="HEADER" FontSize="20"/>
	    </telerikDataControls:RadListView.ListHeader>
	</telerikDataControls:RadListView>

