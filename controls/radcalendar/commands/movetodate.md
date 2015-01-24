---
title: MoveToDate
page_title: MoveToDate
description: MoveToDate
slug: radcalendar-commands-movetodate
tags: movetodate
published: True
position: 3
---

# MoveToDate



## Example

Here is an example demonstrating how to define a custom **MoveToDate** command. First you have to create a class that inherits from the **CalendarCommand** class and set it's Id to **CommandId.MoveToDate**.
       
	public class CustomMoveToDateCommand : CalendarCommand
	{
	    public CustomMoveToDateCommand()
	    {
	        this.Id = CommandId.MoveToDate;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as CalendarViewChangeContext;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as CalendarViewChangeContext;
	        // put your custom logic here
	    }
	}

Then you can add an instance of the custom defined command class to the **RadCalendar.Commands** collection:
        
	<telerik:RadCalendar>
	    <telerik:RadCalendar.Commands>
	        <local:CustomMoveToDateCommand/>
	    </telerik:RadCalendar.Commands>
	</telerik:RadCalendar>