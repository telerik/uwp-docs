---
title: GettingStarted
page_title: GettingStarted
description: Check our &quot;GettingStarted&quot; documentation article for RadHubTile for UWP control.
slug: radhubtile-gettingstarted
tags: gettingstarted
published: True
position: 1
---

# GettingStarted

In this help article you'll learn how to create all variations of RadHubTile controls using the Telerik UI for {{ site.framework_name }}. 

## Add References

In order to use a **Telerik RadHubTile** control in your application, you have to add a reference to the **Telerik UI for {{ site.framework_name }} SDK**:

* Right-click on your project and from the menu, choose > `Add Reference` > {% if site.site_name == 'WIN8' %}`Windows 8.1`{% endif %}{% if site.site_name == 'UWP' %}`Universal Windows`{% endif %} > `Extensions` > *Telerik UI for {{ site.framework_name }}* > tap/click `OK`.

If you choose to add binaries, you will need references to the following files:

* **Telerik.Core.dll**
* **Telerik.UI.Xaml.Primitives.dll**

## Declare Instances

Here is how to declare a new instance of each one of the RadHubTile variations:

	<telerik:RadHubTile/>

	<telerik:RadSlideHubTile/>

	<telerik:RadPictureRotatorHubTile/>

	<telerik:RadMosaicHubTile/>

	<telerik:RadCustomHubTile/>
