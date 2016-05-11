---
title: Telerik Named Brushes
page_title: Telerik Named Brushes
description: Telerik Named Brushes
slug: common-teleriknamedbrushes
tags: telerik,named,brushes
published: True
position: 2
---

# Telerik Named Brushes

**Telerik Named Brushes** is a resource naming convention used throughout Telerik UI components. Each **SolidColorBrush** used in the default ControlTemplates of the controls is uniquely named. The benefit of this convention shines when the colors of the default themes (Dark and Light) should be customized. The combination of such convention and the **ThemeResource** markup extension provides developers access to a flexible customization approach. Following this approach, they can apply the required changes either to a specific control or to all controls in an application. The names of the resources used in a UI component are listed in an article named **Telerik Named Brushes** under the **Styling** folder of that specific component (e.g. [RadDataGrid]({%slug datagrid-styling-teleriknamedbrushes%}), [RadNumericBox]({%slug radnumericbox-styling-teleriknamedbrushes%}), [RadRadialMenu]({%slug radialmenu-teleriknamedbrushes%})…)

# UserThemeResources extension

The **UserThemeReources** class is a markup extension provided by Telerik. It is designed to allow developers to easily override the default resources used in the default themes. It exposes two static properties:

- **DarkResourcePath** (string): Gets or sets the Uri path to the resource dictionary containing theme resource definitions for the Dark theme. If no value is set, the default Dark theme will be used.
- **LightResourcesPath** (string): Gets or sets the Uri path to the resource dictionary containing theme resource definitions for the Light theme. If no value is set, the default Light theme will be used.
	
This markup extension is also used as custom resource loader. Meaning that the Telerik Named Brushes will be available in an application **only** after instantiating this extension. In order developers to use the predefined resources throughout the entire application it is recommended this extension to be used in the **App.xaml** file. Here is an example how this can be done:

	<Application xmlns:telerik="using:Telerik.UI.Xaml.Controls" . . . >
		<Application.Resources>
			<ResourceDictionary>
				<telerik:UserThemeResources x:Key="themeResourceInitializer"/>
				<ResourceDictionary.ThemeDictionaries>
					<ResourceDictionary x:Key="Default">
						<ResourceDictionary.MergedDictionaries>

							<!--Merges all Telrik Named Brushes defined in Telrik.UI.Xaml.Input.UWP binary-->
							<!-- Respectively the resources used by every UI component defined in the Input binary will be available-->
							<ResourceDictionary Source="ms-appx:///ControlAssembly/Themes/ThemeResourcesDark.xaml"/>

							<!--Merges the custom resource dictioanly set as DarkResourcesPath of the themeResourceInitializer-->
							<ResourceDictionary Source="{CustomResource DarkResourcesPath}"/>
						</ResourceDictionary.MergedDictionaries>
					</ResourceDictionary>
					<ResourceDictionary x:Key="Light">
						<ResourceDictionary.MergedDictionaries>
							<ResourceDictionary Source="ms-appx:///ControlAssembly /Themes/ThemeResourcesLight.xaml"/>
							<ResourceDictionary Source="{CustomResource LightResourcesPath}"/>
						</ResourceDictionary.MergedDictionaries>
					</ResourceDictionary>
				</ResourceDictionary.ThemeDictionaries>
			</ResourceDictionary>
		</Application.Resources>
	</Application>

Where `ControlAssembly` is the name of the assembly the UI component is defined in. The following table lists all controls and assembly names:

|**UI component**|**WinRT** assembly name|**UWP** assembly name|
|:-|:-|:-|
|RadChart|Telerik.UI.Xaml.Chart|Telerik.UI.Xaml.Chart.UWP|
|RadGrid|Telerik.UI.Xaml.Grid|Telerik.UI.Xaml.Grid.UWP|
|RadDatePicker, RadTimePicker, RadAutoCompleteBox, RadNumericBox, RadRangeSlider|Telerik.UI.Xaml.Input|Telerik.UI.Xaml.Input.UWP|
|RadHubTile, RadLegendControl, RadRadialMenu|Telerik.UI.Xaml.Primitives|Telerik.UI.Xaml.Primitives.UWP|
|RadGauge, RadBulletGraph|Telerik.UI.Xaml.DataVisualization|Telerik.UI.Xaml.DataVisualization.UWP|
