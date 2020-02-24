---
title: Watermark Support
page_title: Watermark Support
description: Check our &quot;Watermark Support&quot; documentation article for RadAutoCompleteBox for UWP control.
slug: autocompletebox-watermark
tags: watermark,support
published: True
position: 10
---

# Watermark Support

RadAutoCompleteBox exposes the Watermark property that allows you to specify its contents when the input area is empty and unfocused.

## Setting the Watermark Property

The following code snippet demonstrates how to set simple watermark text in the input area by setting the text of the Watermark property:

	<telerikInput:RadAutoCompleteBox Watermark="Search for movies" />
	
![Rad Auto Complete Box-Watermark Default](images/RadAutoCompleteBox-WatermarkDefault.png)

## Setting the WatermarkTemplate Property

Rather than use the default text of the WatermarkContent property, you might want that text to be a different color, font, or size than the default. To achieve this goal, you’ll set a custom watermark template as demonstrated in this code snippet:

	<telerikInput:RadAutoCompleteBox >
	    <telerikInput:RadAutoCompleteBox.WatermarkTemplate>
	        <DataTemplate>
	            <TextBlock Text="Search for movies" Foreground="#80D6F4" FontSize="18" />
	        </DataTemplate>
	    </telerikInput:RadAutoCompleteBox.WatermarkTemplate>
	</telerikInput:RadAutoCompleteBox>

![Rad Auto Complete Box-Watermark Template](images/RadAutoCompleteBox-WatermarkTemplate.png)

# See Also

 * [Header Support]({%slug autocompletebox-header-support%})
