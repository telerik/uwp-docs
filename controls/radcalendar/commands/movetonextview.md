---
title: MoveToNextView
page_title: MoveToNextView
description: Check our &quot;MoveToNextView&quot; documentation article for RadCalendar for UWP control.
slug: radcalendar-commands-movetonextview
tags: movetonextview
published: True
position: 6
---

# MoveToNextView



## Example

Here is an example demonstrating how to define custom command **MoveToNextView** command. First you have to create a class that inherits from the **CalendarCommand** class and set it's Id to **CommandId.MoveToNextView**.
        
	public class CustomMoveToNextViewCommand : CalendarCommand
	{
	    public CustomMoveToNextViewCommand()
	    {
	        this.Id = CommandId.MoveToNextView;
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
	        <local:CustomMoveToNextViewCommand/>
	    </telerik:RadCalendar.Commands>
	</telerik:RadCalendar>