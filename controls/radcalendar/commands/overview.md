---
title: Overview
page_title: Overview
description: Overview
slug: radcalendar-commands-overview
tags: overview
published: True
position: 0
---

# Overview

## Commands

The **RadCalendar** control exposes a Commands collection that allows you to
register custom commands with each control’s instance through the RadCalendar.Commands property:

* **Commands**: Gets the collection with all the custom commands registered
with the CommandService. Custom commands have higher priority than the built-in (default) ones.

### CalendarUserCommand

This command type provides the abstraction of the UI-related commands (that all the built-in commands are) over a stateless and UI-agnostic generic
command implementation. The command exposes the following properties:

* **Id**: Gets or sets the CommandId member this command is associated with.
* **Command**: Gets or sets the generic ICommand implementation that may come from the ViewModel.
* **EnableDefaultCommand** (bool): Gets or sets a value indicating whether the default (built-in)
UI command associated with the specified Id will be executed. Default value is True.

The following example shows a create CalendarUserCommand which is bound to a property from our ViewModel:

	<telerik:RadCalendar>
		<telerik:RadCalendar.Commands>
			<commands:CalendarUserCommand Id="MoveToNextView" Command="{Binding MyCommand}"/>
		</telerik:RadCalendar.Commands>
	</telerik:RadCalendar>

Where:
	
	xmlns:telerik="using:Telerik.UI.Xaml.Controls.Input"
	xmlns:commands="using:Telerik.UI.Xaml.Controls.Input.Calendar.Commands"

## CommandId Enumeration

All the predefined commands within a RadCalendar instance are identified by a member of the CommandId enumeration.
This is actually the key that relates a command instance to a particular action/routine within the owning calendar.
In order to register a custom command within a RadCalendar instance you may either inherit the CalendarCommand class and override its CanExecute and Execute methods or instantiate a CalendarUserCommand instance and set its Command property. In both cases you need to set the Id property of the new command so that it can be properly associated with the desired action/event. Following are the members of the CommandId enumerations:

* **[MoveToDate]({%slug radcalendar-commands-movetodate%})**
* **[MoveToPreviousView]({%slug radcalendar-commands-movetopreviousview%})**/**[MoveToNextView]({%slug radcalendar-commands-movetonextview%})**
* **[MoveToUpperView]({%slug radcalendar-commands-movetoupperview%})**/**[MoveToLowerView]({%slug radcalendar-commands-movetolowerview%})**
* **[CellPointerOver]({%slug radcalendar-commands-cellpointerover%})**
* **[CellTap]({%slug radcalendar-commands-celltap%})**
* **Unknown** (default): The commandis unknown to the calendar and it will not be executed.