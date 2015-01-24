---
title: CellTap
page_title: CellTap
description: CellTap
slug: radcalendar-commands-celltap
tags: celltap
published: True
position: 2
---

# CellTap



## Example

Here is an example demonstrating how to define custom **CellTap** command. First you have to create a class that inherits from the **CalendarCommand** class and set it's Id to **CommandId.CellTap**.
        

	public class CustomCellTapCommand : CalendarCommand
	{
	    public CustomCellTapCommand()
	    {
	        this.Id = CommandId.CellTap;
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
	        <local:CustomCellTapCommand/>
	    </telerik:RadCalendar.Commands>
	</telerik:RadCalendar>