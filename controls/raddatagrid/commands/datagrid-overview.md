---
title: Overview
page_title: Overview
description: Overview
slug: datagrid-commands-overview
tags: overview
published: True
position: 0
---

# Overview

The Command design-pattern is very important and widely used in the XAML and MVVM world.
RadDataGrid strictly follows these best practices and provides an intuitive and easy-to-use set of APIs that allow different aspects of the RadDataGrid control’s behavior to be handled and/or completely overridden.

RadDataGrid exposes a Commands collection that allows you to register custom commands with each control’s instance through the **RadDataGrid.Commands** property:

* **Commands**: Gets the collection with all the custom commands registered with the CommandService. Custom commands have higher priority than the built-in (default) ones.

## Command Types

There are two types of commands:

* **DataGridCommand**: All the default commands within RadDataGrid derive from the base DataGridCommand. Think of this command as a UI-related command as it operates over the RadDataGrid instance that owns the command.
* **DataGridUserCommand**: This specific command type provides the abstraction of the UI-related commands (that all the built-in commands are) over a stateless and UI-agnostic generic command implementation. The command exposes the following properties:
	* **Id**: Gets or sets the CommandId member this command is associated with.
	* **Command**: Gets or sets the generic ICommand implementation that may come from the ViewModel.
	* **EnableDefaultCommand**: Gets or sets a value indicating whether the default (built-in) UI command associated with the specified Id will be executed. Default value is True.

## Example

The following example shows a create DataGridUserCommand which is bound to a property from our ViewModel

	<grid:RadDataGrid>
	    <grid:RadDataGrid.Commands>
	        <gridCommands:DataGridUserCommand Id="CellTap" Command="{Binding MyCommand}"/>
	    </grid:RadDataGrid.Commands>
	</grid:RadDataGrid>

Where:

	xmlns:grid="using:Telerik.UI.Xaml.Controls.Grid"
	xmlns:gridCommands="using:Telerik.UI.Xaml.Controls.Grid.Commands"

## CommandId Enumeration

All the predefined commands within a RadDataGrid instance are identified by a member of the CommandId enumeration.
This is actually the key that relates a command instance to a particular action/routine within the owning grid.
In order to register a custom command within a RadDataGrid instance you may either inherit the **DataGridCommand** class and override its *CanExecute* and *Execute* methods or instantiate a **DataGridUserCommand** instance and set its **Command** property. In both cases you need to set the **Id** property of the new command so that it can be properly associated with the desired action/event. Following are the members of the CommandId enumerations:


* [BeginEdit]({%slug datagrid-commands-editingcommands-begineditcommand%})
* [CancelEdit]({%slug datagrid-commands-editingcommands-canceleditcommand%})
* [CommitEdit]({%slug datagrid-commands-editingcommands-commiteditcommand%})
* [ColumnHeaderTap]({%slug datagrid-commands-columnheadertapcommand%})
* [GroupHeaderTap ]({%slug datagrid-commands-groupheadertapcommand%})
* [CellTap]({%slug datagrid-commands-celltapcommand%})
* [CellDoubleTap]({%slug datagrid-commands-celldoubletappedcommand%})
* [CellPointerOver ]({%slug datagrid-commands-cellpointerovercommand%})
* [GenerateColumn ]({%slug datagrid-commands-generatecolumncommand%})
* [DataBindingComplete ]({%slug datagrid-commands-databindingcompletecommand%})
* [FlyoutGroupHeader]({%slug datagrid-commands-flyoutgroupheadertapcommand%})
* [FilterButtonTap]({%slug datagrid-commands-filterbuttontapcommand%})