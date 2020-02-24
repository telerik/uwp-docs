---
title: CellPointerOver
page_title: CellPointerOver
description: Check our &quot;CellPointerOver&quot; documentation article for RadCalendar for UWP control.
slug: radcalendar-commands-cellpointerover
tags: cellpointerover
published: True
position: 1
---

# CellPointerOver


## Example

Here is an example demonstrating how to define custom **CellPointerOver** command. First you have to create a class that inherits from the **CalendarCommand** class and set it's Id to **CommandId.CellPointerOver**.
        

	public class CustomCellPointerOverCommand : CalendarCommand
	{
	    public CustomCellPointerOverCommand()
	    {
	        this.Id = CommandId.CellPointerOver;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as CalendarCellModel;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as CalendarCellModel;
	        // put your custom logic here
	    }
	}


Then you can add an instance of the custom defined command class to the **RadCalendar.Commands** collection:
        
	<telerik:RadCalendar>
	    <telerik:RadCalendar.Commands>
	        <local:CustomCellPointerOverCommand/>
	    </telerik:RadCalendar.Commands>
	</telerik:RadCalendar>