---
title: Drop-down Styling
page_title: Drop-down Styling
description: Check our &quot;Drop-down Styling&quot; documentation article for RadAutoCompleteBox for UWP control.
slug: autocompletebox-styling-suggestions-dropdown
tags: drop-down,styling
published: True
position: 6
---

# Drop-down Styling

RadAutoCompleteBox does not expose a specific style property for modifying the look and feel of the drop-down control, but you can achieve this by setting implicit styles for the custom controls that represent the filtered items list (SuggestionItemsControl) and its items (SuggestionItem).
        
To set a SuggestionItemsControl or SuggestionItem style, first you will have to add a namespace definition to the Telerik.Windows.Controls.AutoCompleteTextBox namespace.
        
	xmlns:autoComplete="using:Telerik.UI.Xaml.Controls.Input.AutoCompleteBox"



The code below demonstrates how to change the drop-down width with implicit style for the SuggestionItemsControl control:


	<telerikInput:RadAutoCompleteBox >
	    <telerikInput:RadAutoCompleteBox.Resources>
	        <Style TargetType="autoComplete:SuggestionItemsControl" >
	            <Setter Property="Width" Value="350" />
	        </Style>
	    </telerikInput:RadAutoCompleteBox.Resources>
	</telerikInput:RadAutoCompleteBox>

![Rad Auto Complete Box-Suggestions Control Style](images/RadAutoCompleteBox-SuggestionsControlStyle.png)

To change the font size and foreground of every suggestion item, for example, you can apply a custom SuggestionItem style like this:
	
	
	<telerikInput:RadAutoCompleteBox >
	    <telerikInput:RadAutoCompleteBox.Resources>
	        <Style TargetType="autoComplete:SuggestionItem" >
	            <Setter Property="FontSize" Value="23" />
	            <Setter Property="Foreground" Value="#B45121" />
	        </Style>
	    </telerikInput:RadAutoCompleteBox.Resources>
	</telerikInput:RadAutoCompleteBox>

![Rad Auto Complete Box-Suggestion Item](images/RadAutoCompleteBox-SuggestionItem.png)

# See Also

 * [Drop-down Behavior]({%slug autocompletebox-dropdown-customization%})
 * [Text Match Highlighting]({%slug autocompletebox-text-match-highlighting%})
