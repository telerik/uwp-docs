---
title: MoveToLowerView
page_title: MoveToLowerView
description: Check our &quot;MoveToLowerView&quot; documentation article for RadCalendar for UWP control.
slug: radcalendar-commands-movetolowerview
tags: movetolowerview
published: True
position: 5
---

# MoveToLowerView



## Example

Here is an example demonstrating how to define custom command **MoveToLowerView** command. First you have to create a class that inherits from the **CalendarCommand** class and set it's Id to **CommandId.MoveToLowerView**.

	public class CustomMoveToLowerViewCommand : CalendarCommand
	{
	    public CustomMoveToLowerViewCommand()
	    {
	        this.Id = CommandId.MoveToLowerView;
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
	        <local:CustomMoveToLowerViewCommand/>
	    </telerik:RadCalendar.Commands>
	</telerik:RadCalendar>