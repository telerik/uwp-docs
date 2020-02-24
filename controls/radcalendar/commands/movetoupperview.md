---
title: MoveToUpperView
page_title: MoveToUpperView
description: Check our &quot;MoveToUpperView&quot; documentation article for RadCalendar for UWP control.
slug: radcalendar-commands-movetoupperview
tags: movetoupperview
published: True
position: 4
---

# MoveToUpperView

## Example

Here is an example demonstrating how to define custom command **MoveToUpperView** command. First you have to create a class that inherits from the **CalendarCommand** class and set it's Id to **CommandId.MoveToUpperView**.
        
	public class CustomMoveToUpperViewCommand : CalendarCommand
	{
	    public CustomMoveToUpperViewCommand()
	    {
	        this.Id = CommandId.MoveToUpperView;
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
	        <local:CustomMoveToUpperViewCommand/>
	    </telerik:RadCalendar.Commands>
	</telerik:RadCalendar>