---
title: Inline Editor Icons
page_title: Inline Editor Icons
description: Check our &quot;Inline Editor Icons&quot; documentation article for RadDataForm for UWP control.
slug: dataform-inlineeditoricons
tags: inlineeditoricons, raddataform
published: True
position: 10
---

# Inline Editor Icons

Some of the predefined editors in RadDataForm support inline icons which can be used instead of labels or to show that the property has an error.

To enable LabelIcon or/and ErrorIcon you can use the  **IconDisplayMode**(None, Label, Error, All) of the editor.  Then you can modify the default Icon's through the **LabelIconStyle** and **ErrorIconStyle** properties.
Note, that the following editors support this feature:

- **StringEditor**
- **NumericalEditor**
- **DateEditor**
- **TimeEditor**


#Example# 

	<Style TargetType="data:StringEditor">
		<Setter Property="IconDisplayMode" Value="Label" />
		<Setter Property="LabelIconStyle">
		<Setter.Value>
			<Style TargetType="SymbolIcon">
				<Setter Property="Symbol" Value="AddFriend" />
			</Style>
		</Setter.Value>
		</Setter>
	</Style>



