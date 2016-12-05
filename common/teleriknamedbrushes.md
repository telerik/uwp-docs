---
title: Telerik Named Brushes
page_title: Telerik Named Brushes
description: Telerik Named Brushes
slug: common-teleriknamedbrushes
tags: telerik,named,brushes,userthemeresources,extension
published: True
position: 2
---

# Telerik Named Brushes

**Telerik Named Brushes** is a resource naming convention used throughout Telerik UI components. Each brush used in the default ControlTemplates of the controls is uniquely named. This allows developers to easily change the default look of a control without the need to extract and customize the whole ControlTemplate. The benefit of this convention shines when the colors of the default themes (e.g. axis or label color of a chart, hover background color of a radial menu item ...) should be customized. The combination of such convention and the **ThemeResource** markup extension provides developers access to a flexible customization approach. Following this approach, they can apply the required changes to all controls in an application. The names of the resources used in a UI component are listed in an article named **Telerik Named Brushes** under the **Styling** folder of that specific component (e.g. [RadDataGrid]({%slug datagrid-styling-teleriknamedbrushes%}), [RadNumericBox]({%slug radnumericbox-styling-teleriknamedbrushes%}), [RadRadialMenu]({%slug radialmenu-teleriknamedbrushes%})…)

# UserThemeResources extension

The **UserThemeReources** class is a markup extension provided by Telerik. It is designed to allow developers to easily override the default resources used in the default themes. This class exposes two static properties:

- **DarkResourcePath** (string): Gets or sets the Uri path to the resource dictionary containing theme resource definitions for the Dark theme. If no value is set, the default Dark theme will be used.
- **LightResourcesPath** (string): Gets or sets the Uri path to the resource dictionary containing theme resource definitions for the Light theme. If no value is set, the default Light theme will be used.
	
This markup extension is also used as custom resource loader. Meaning that 

>Telerik Named Brushes will be available in an application **only** after instantiating this extension.

In order developers to use the predefined resources throughout the entire application it is recommended this extension to be used in the **App.xaml** file. Here is an example how this can be done:

	<Application xmlns:telerik="using:Telerik.UI.Xaml.Controls" . . . >
		<Application.Resources>
			<ResourceDictionary>
				<telerik:UserThemeResources x:Key="themeResourceInitializer"/>
				<ResourceDictionary.ThemeDictionaries>
					<ResourceDictionary x:Key="Default">
						<ResourceDictionary.MergedDictionaries>

							<!--Merges all Telrik Named Brushes defined in respective binary-->
							<!--the resources used by every UI component defined in the Input binary will be available-->
							<ResourceDictionary Source="ms-appx:///ControlAssembly/Themes/ThemeResourcesDark.xaml"/>

							<!--Merges the custom resource dictioanly set as DarkResourcesPath of the themeResourceInitializer-->
							<!--In this particular case the default resource dictionaly is merged-->
							<ResourceDictionary Source="{CustomResource DarkResourcesPath}"/>
						</ResourceDictionary.MergedDictionaries>
					</ResourceDictionary>
					<ResourceDictionary x:Key="Light">
						<ResourceDictionary.MergedDictionaries>
							<ResourceDictionary Source="ms-appx:///ControlAssembly/Themes/ThemeResourcesLight.xaml"/>
							<ResourceDictionary Source="{CustomResource LightResourcesPath}"/>
						</ResourceDictionary.MergedDictionaries>
					</ResourceDictionary>
				</ResourceDictionary.ThemeDictionaries>
			</ResourceDictionary>
		</Application.Resources>
	</Application>

Where `ControlAssembly` is the name of the assembly the UI component is defined in. The following table lists all controls and their corresponding  assembly names:

<table>
	<tr>
		<th>UI component</th>
		{% if site.site_name == 'WIN8' %}<th>WinRT assembly name</th>{% endif %}
		{% if site.site_name == 'UWP' %}<th>UWP assembly name</th>{% endif %}
	</tr>
	<tr>
		<td>
			RadChart
		</td>
		{% if site.site_name == 'WIN8' %}
		<td>
			Telerik.UI.Xaml.Chart
		</td>
		{% endif %}
		{% if site.site_name == 'UWP' %}
		<td>
			Telerik.UI.Xaml.Chart.UWP
		</td>
		{% endif %}
	</tr>
	<tr>
		<td>
			RadGrid
		</td>
		{% if site.site_name == 'WIN8' %}
		<td>
			Telerik.UI.Xaml.Grid
		</td>
		{% endif %}
		{% if site.site_name == 'UWP' %}
		<td>
			Telerik.UI.Xaml.Grid.UWP
		</td>
		{% endif %}
	</tr>
	<tr>
		<td>
			RadDatePicker, RadTimePicker, RadAutoCompleteBox, RadNumericBox, RadRangeSlider
		</td>
		{% if site.site_name == 'WIN8' %}
		<td>
			Telerik.UI.Xaml.Input
		</td>
		{% endif %}
		{% if site.site_name == 'UWP' %}
		<td>
			Telerik.UI.Xaml.Input.UWP
		</td>
		{% endif %}
	</tr>
	<tr>
		<td>
			RadHubTile, RadLegendControl, RadRadialMenu
		</td>
		{% if site.site_name == 'WIN8' %}
		<td>
			Telerik.UI.Xaml.Primitives
		</td>
		{% endif %}
		{% if site.site_name == 'UWP' %}
		<td>
			Telerik.UI.Xaml.Primitives.UWP
		</td>
		{% endif %}
	</tr>
	<tr>
		<td>
			RadGauge, RadBulletGraph
		</td>
		{% if site.site_name == 'WIN8' %}
		<td>
			Telerik.UI.Xaml.DataVisualization
		</td>
		{% endif %}
		{% if site.site_name == 'UWP' %}
		<td>
			Telerik.UI.Xaml.DataVisualization.UWP
		</td>
		{% endif %}
	</tr>
</table>