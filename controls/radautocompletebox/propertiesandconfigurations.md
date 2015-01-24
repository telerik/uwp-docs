---
title: Properties and Configurations
page_title: Properties and Configurations
description: Properties and Configurations
slug: radautocompletebox-propertiesandconfigurations
tags: properties,and,configurations
published: True
position: 3
---

# Properties and Configurations

**RadAutoCompleteBox** exposes the following properties:

* **Text**: Gets or sets the text contents of the autocomplete box.
* **[FilterMode]({%slug autocompletebox-filtermode%})**: Gets or sets the mode used to filter the suggestion items based on the user input.
* **FilterComparisonMode**: Gets or sets a value from the StringComparison enumeration that defines the way the candidate suggestion key is compared to the current user input.
* **FilterMemberPath**: Gets or sets a string representing a property path              on a single object within the RadAutoCompleteBox.ItemsSource              that is used to filter the suggestion items.              If no RadAutoCompleteBox.FilterMemberPath value is set, the RadAutoCompleteBox.DisplayMemberPath              value is used to filter the suggestion items as well.
* **DisplayMemberPath**: Gets or sets a string representing a property path on a single object within the RadAutoCompleteBox.ItemsSource that is used to display the suggestion items. If no RadAutoCompleteBox.FilterMemberPath value is set, the RadAutoCompleteBox.DisplayMemberPath value is used to filter the suggestion items as well.
* **[FilterStartThreshold]({%slug autocompletebox-filterstartthreshold%})**: Gets or sets the amount of symbols which need to be typed in RadAutoCompleteBox before the filtering procedure starts.
* **[FilterDelay]({%slug autocompletebox-filterdelay%})**: Gets or sets an instance of the TimeSpan struct that represents the time interval between the last end-user input action and a filter pass operation. The default value of this property is 0 milliseconds.
* **FilterMemberProvider**: Gets or sets a function that acquires the property value of the suggestion item based on which the suggestion is filtered.
* **FilteredItems**: Gets an IEnumerable implementation that contains all currently available suggestion items based on the provided input.
* **Header**: Gets or sets the object that represents the header content.
* **HeaderTemplate**: Gets or sets the DataTemplate instance that defines the appearance of the header.
* **HeaderStyle**: Gets or sets the Style object that defines the appearance of the Header part of the Control. Typically that part will be represented by a ContentControl instance.
* **ItemsSource**: Gets or sets an implementation of the IEnumerable interface that contains the items available for suggestion items in this instance of the RadAutoCompleteBox class.
* **ItemTemplate**: Gets or sets an instance of the DataTemplate class that defines the visual structure of a suggestion item.
* **ItemTemplateSelector**: Gets or sets an instance of the DataTemplateSelector class that defines the visual structure of a suggestion item.
* **AutosuggestFirstItem**: Gets or sets a value indicating whether the first suggestion item should be highlighted by default when the drop-down control is open.
* **DropDownPlacement**: Gets or sets a value indicating the placement of the drop-down that holds the available suggestion items.
* **DropDownMaxHeight**: Gets or sets the maximum height constraint of the drop-down that holds the available suggestion items.
* **IsDropDownOpen**: Gets or sets a value that indicates whether the drop-down for the control is currently open.
* **Watermark**: Gets or sets the content to be displayed when the input field is empty and unfocused.
* **WatermarkTemplate**: Gets or sets the data template applied to the watermark presenter when the TextBox is empty and unfocused.
* **SelectedItem**: Gets currently selected item in the RadAutoCompleteBox.