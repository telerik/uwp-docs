---
title: Properties and Configurations
page_title: Properties and Configurations
description: Properties and Configurations
slug: datagrid-propertiesandconfigurations
tags: properties,and,configurations
published: True
position: 3
---

# Properties and Configurations

Here are the properties supported by the DataGrid control:

* **[SelectionChanged]({%slug raddatagrid-selection%})**: Occurs when the currently selected items change.
* **ItemsSource**: Gets or sets the data provider.
* **AutoGenerateColumns** (bool): Gets or sets a value that specifies whether the grid will generate automatically columns for every property of the data items in the ItemsSource.
* **AggregateDescriptors**: Gets the collection of AggregateDescriptor objects that defines the current aggregate functions to be applied when the data view is computed.
* **[SortDescriptors]({%slug datagrid-sorting-overview%})**: Gets the collection of *SortDescriptorBase* objects that defines the current sorting within this instance.
Multiple sort descriptors define a sorting operation by multiple keys.
* **[GroupDescriptors]({%slug datagrid-grouping-overview%})**: Gets the collection of *GroupDescriptorBase* objects that defines the current grouping within this instance.
Multiple group descriptors define multiple group levels.
* **[FilterDescriptors]({%slug datagrid-filtering-overview%})**: Gets the collection of *FilterDescriptorBase* objects that defines the current filtering within this instance.
* **[UserEditMode]({%slug datagrid-editing-overview%})** (DataGridUserEditMode): Gets or sets the user edit mode of the DataGrid.
* **UserSortMode** (DataGridUserSortMode): Gets or sets a value that defines how User Input (column header tap) affects the current Sort state of the grid.
* **[UserGroupMode]({%slug datagrid-grouping-overview%})**
(DataGridUserGroupMode): Gets or sets a value that determines whether the User is allowed to change the current Grouping state through the User Interface.
* **[UserColumnReorderMode]({%slug datagrid-columns-overview%})**
(DataGridUserColumnReorderMode): Gets or sets a value that defines how User Input (draging column header over another headers) affects the current column position in the grid.
* **FrozenColumnsCount**: Specifies how many columns will be frozen from the beginning of the grid.
* **UserFilterMode**
(DataGridUserFilterMode): Gets or sets a value that defines whether the Filter Glyph is present in the header of the currently available filterable columns.
* **DragBehavior**: Gets or sets the behavior controling drag operations inside the DataGrid.
* **IndentWidth**: Gets or sets a value that is used to offset different levels of nested groups.
* **[GroupHeaderDisplayMode]({%slug datagrid-grouping-overview%})**: Gets or sets the DataGridGroupHeaderDisplayMode value that determines how group headers are displayed.
	* *Frozen*: The path of group headers to the first visible data item are frozen on top of other content.
	* *Scrollable*: Group headers are scrollable together with the content.
* **[GroupHeaderTemplate]({%slug datagrid-grouping-styling%})**: Gets or sets the DataTemplate instance that defines the appearance of each group header within the grid. The data context of each group header will be a GroupHeaderContext instance.
* **[GroupHeaderTemplateSelector]({%slug datagrid-grouping-styling%})**: Gets or sets the DataTemplateSelector instance that may be used to select a group header template on a per header instance basis.
The "Item" parameter of the DataTemplateSelector.SelectTemplate method will be a GroupHeaderContext instance.
* **[GroupHeaderStyle]({%slug datagrid-grouping-styling%})**: Gets or sets the Style instance that defines the appearance of all the group headers within the grid. The style instance should target the DataGridGroupHeader type.
* **[GroupHeaderStyleSelector]({%slug datagrid-grouping-styling%})**: Gets or sets the StyleSelector instance that may be used to select different styles on a per group header basis.
The style instance returned should target the DataGridGroupHeader type.
* **[Commands]({%slug datagrid-commands-overview%})**: Gets the collection with all the custom commands registered with the CommandService. Custom commands have higher priority than the built-in (default) ones.
* **RowHeight**: Gets or sets the standard height of rows in the control. The default is double.NaN (auto).
* **CommandService**: Gets the CommandService instance that manages the commanding behavior of this instance.
* **HitTestService**: Gets the HitTestService instance that provides methods for retrieving rows and cells from a given physical location.
* **RowBackground**: Gets or sets the *Brush* that defines the fill of each row.
* **AlternateRowBackground**: Gets or sets the *Brush* that defines the fill of the alternate rows, as defined by the **AlternationStep** property.
* **AlternationStep**: Gets or sets the step between each two alternate rows. The Modulus (%) operand is applied over this value.
* **AlternationStartIndex**: Gets or sets the zero-based index of the row which is considered as alternation start.
* **[GridLinesBrush]({%slug raddatagrid-decorations%})**: Gets or sets the *Brush* value that defines the appearance of a grid's horizontal lines.
* **[GridLinesVisibility]({%slug raddatagrid-decorations%})**: Gets or sets the *GridLinesVisibility* value that defines which grid lines are currently visible (displayed).
* **[GridLinesThickness]({%slug raddatagrid-decorations%})**: Gets or sets the width of the vertical grid lines and the height of the horizontal grid lines.
* **[SelectionUnit]({%slug datagrid-propertiesandconfigurations%})**: Gets or sets the selection unit of the DataGrid.
* **[SelectedItem]({%slug datagrid-propertiesandconfigurations%})**: Gets or sets the selected item of the DataGrid.
* **[SelectionMode]({%slug datagrid-propertiesandconfigurations%})**: Gets or sets the selection mode of the DataGrid.
* **[SelectedItems]({%slug datagrid-propertiesandconfigurations%})**: Gets the currently selected items within this instance. The type of items within the collection depends on the current *SelectionUnit* value:
The data item (row) when the selection unit is *DataGridSelectionUnit.Row*. A *DataGridCellInfo* object when the selection unit is *DataGridSelectionUnit.Cell*.

Methods:

* **[GetDataView()]({%slug raddatagrid-dataview%})**: Gets the *IDataView* instance that can be used to traverse and/or manipulate the data after all the Sort, Group and Filter operations are applied.

