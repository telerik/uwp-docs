---
title: Text Match Highlighting
page_title: Text Match Highlighting
description: Check our &quot;Text Match Highlighting&quot; documentation article for RadAutoCompleteBox for UWP control.
slug: autocompletebox-text-match-highlighting
tags: text,match,highlighting
published: True
position: 8
---

# Text Match Highlighting

RadAutoCompleteBox supports highlighting of the text portion within a filtered item that matches the current input in the control. Thanks to a flexible highlighting mechanism any custom data templates used to present the filtered suggestions can be integrated with the highlighting feature.

## Activating Item Highlighting in RadAutoCompleteBox

Text match highlighting is disabled by default. To activate this feature in RadAutoCompleteBox you should first define a custom Data Template for the filtered items by using the ItemTemplate property. After that, you should set the RadAutoCompleteBox.IsTextMatchHighlightEnabled attached property on one or multiple TextBlock elements (depending on the visual structure of your data template) that need to be highlighted:

	<telerikInput:RadAutoCompleteBox x:Name="radAutoCompleteBox" FilterMemberPath="Title">
		<telerikInput:RadAutoCompleteBox.ItemTemplate>
			<DataTemplate>
				<TextBlock Text="{Binding Text}" telerikInput:RadAutoCompleteBox.IsTextMatchHighlightEnabled="True"/>
			</DataTemplate>
		</telerikInput:RadAutoCompleteBox.ItemTemplate>
	</telerikInput:RadAutoCompleteBox>

![Rad Auto Complete Box-Text Match Default](images/RadAutoCompleteBox-TextMatchDefault.png)

You can define the style applied to the highlighted text matches through the RadAutoCompleteBox.TextMatchHighlightStyle attached property. You can set different styles on different TextBlock instances as well:

	<telerikInput:RadAutoCompleteBox >
		<telerikInput:RadAutoCompleteBox.ItemTemplate>
			<DataTemplate>
				<TextBlock Text="{Binding Title}" telerikInput:RadAutoCompleteBox.IsTextMatchHighlightEnabled="True">
					<telerikInput:RadAutoCompleteBox.TextMatchHighlightStyle>
						<telerikInput:HighlightStyle Foreground="#B45121" FontSize="21"/>
					</telerikInput:RadAutoCompleteBox.TextMatchHighlightStyle>
				</TextBlock>
			</DataTemplate>
		</telerikInput:RadAutoCompleteBox.ItemTemplate>
	</telerikInput:RadAutoCompleteBox>

![Rad Auto Complete Box-Text Match Template](images/RadAutoCompleteBox-TextMatchTemplate.png)

# See Also

 * [Drop-down Styling]({%slug autocompletebox-styling-suggestions-dropdown%})
