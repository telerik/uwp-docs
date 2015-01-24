---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: radmap-gettingstarted
tags: getting,started
published: True
position: 1
---

# Getting Started

## Map Essentials

* RadMap's Shape rendering is based on a native **C++** library, using **Direct2D** for superior performance. It depends on the **Microsoft Visual C++ Runtime Package**, which is different for Windows 8.0 and 8.1.
* The RadMap control depends on a native C++ rendering layer and it requires concrete processor architecture to be built against. The supported architectures are: **x86**, **x64**, **ARM**.
* For your application deployment for the Windows Store you will need to prepare three separate packages built for the three supported processor architectures: **x86**, **x64**, **ARM**.
* **RadMap for Windows Universal SDK** automatically adds a reference to the **UI for Windows Universal SDK** because it depends on the **Telerik.Core.dll** and **Telerik.UI.Xaml.Primitives.dll** assemblies, available in the **Telerik UI for Windows Universal SDK**.
* RadMap is built in **Release** only; the SDK does not provide a Debug build. Hence, when you deploy to a remote machine that does not have Visual Studio installed you will need to build you application in Release.

>If you have Visual Studio installed (e.g. on your Desktop Machine), this issue will not be present.

## Adding a RadMap Control to Your Application

In order to use the **RadMap** control in your application you have to add reference to the **RadMap for Windows Universal SDK**:

* Right-click on your project > Add Reference > Windows > Extensions > Select the SDKs > tap/click OK.

This will automatically add a reference to the **Telerik UI for Windows Universal SDK**.

Alternatively, you can use binaries. You will need a reference to the following files:

* **Telerik.Core.dll**
* **Telerik.Geospatial.dll**
* **Telerik.UI.Drawing.winmd**
* **Telerik.UI.Xaml.Map.dll**
* **Telerik.UI.Xaml.Primitives.dll**

To add them: 

* Right click on your project > Add reference > Browse > C:\Program Files (x86)\Telerik\UI for Windows Universal Qx 20xx\Binaries > Select the specific files > tap/click OK

> **Telerik.UI.Drawing.winmd** and **Telerik.UI.Xaml.Map.dll** are CPU dependent.
For each supported architecture there is different version of the assemblies.
The version you refer should match the CPU architecture of your application.

You also have to add reference to:

* **Microsoft Visual C++ 2013 Runtime Package for Windows**

> The **RadMap** control is defined in the following namespace: **Telerik.UI.Xaml.Controls.Map**

The **RadMap** uses *.shp files that contain the coordinates of the shapes that will be drawn by the map and an optional *.dbf file for each *.shp file with additional attributes of the shapes.

> When you add these files to your project, in the properties of the files you have to set the **Build Action** to **Content** and **Copy to Output Directory** to **Copy if newer** or **Copy Always**. To access the properties right click on the files in you project and choose **Properties** from the menu.

The following code snippet demonstrates how to define a map with one layer that uses two files as a data source - *global.shp* and *global.dbf* located in a Data folder in the project. The files in this example contain data about the administrative districts of the world. The layer also uses a **ShapeColorizer** that defines how the shapes will be colored (depending on the area of the districts in this case).

	<telerikMap:RadMap Background="#2EC4FF">
	    <telerikMap:RadMap.Layers>
	        <telerikMap:MapShapeLayer ShapeLabelAttributeName="ADMIN_NAME">
	            <telerikMap:MapShapeLayer.Source>
	                <telerikMap:ShapefileDataSource SourceUriString="ms-appx:///Data/global.shp" DataSourceUriString="ms-appx:///Data/global.dbf"/>
	            </telerikMap:MapShapeLayer.Source>
	            <telerikMap:MapShapeLayer.ShapeColorizer>
	                <telerikMap:DesaturationColorizer BaseColor="#FFBD2E" AttributeName="SQKM_ADMIN" From="1" To="0" RangeCount="10">
	                    <telerikMap:DesaturationColorizer.RangeDistribution>
	                        <telerikMap:LogarithmicRangeDistribution/>
	                    </telerikMap:DesaturationColorizer.RangeDistribution>
	                </telerikMap:DesaturationColorizer>
	            </telerikMap:MapShapeLayer.ShapeColorizer>
	        </telerikMap:MapShapeLayer>
	    </telerikMap:RadMap.Layers>
	    <telerikMap:RadMap.Behaviors>
	        <telerikMap:MapPanAndZoomBehavior/>
	    </telerikMap:RadMap.Behaviors>
	</telerikMap:RadMap>

This is the result:

![Rad Map-Getting Started](images/RadMap-GettingStarted.png)

# See Also

* [Properties And Configuration]({%slug radmap-propertiesandconfiguration%})
