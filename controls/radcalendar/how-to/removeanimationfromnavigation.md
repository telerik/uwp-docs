---
title: Remove the Animation When Navigate 
page_title: Remove the Animation When Navigate 
description: Check our &quot;Remove the Animation When Navigate&quot; documentation article for RadCalendar for UWP control.
slug: radcalendar-removeanimationfromnavigation
tags: remove,the,animation,when,navigate,
published: True
position: 1
---

# Remove the Animation When Navigate 

The following article will demonstrate how to remove the animation that is executed when navigating to Upper View.

Frist, create a RadCalendar instance and add the custom implementation of the MoveToUpperView command that we will create:

	<telerikInput:RadCalendar>
	    <telerikInput:RadCalendar.Commands>
	        <local:CustomMoveToUpperViewCommand/>
	    </telerikInput:RadCalendar.Commands>
	</telerikInput:RadCalendar>

Implement the command and set the AnimationStoryboard to null:

	public class CustomMoveToUpperViewCommand : CalendarCommand
	{
	    public CustomMoveToUpperViewCommand()
	    {
	        this.Id = CommandId.MoveToUpperView;
	    }
	    public override bool CanExecute(object parameter)
	    {
	        return true;
	    }
	    public override void Execute(object parameter)
	    {
	        (parameter as CalendarViewChangeContext).AnimationStoryboard = null;
	        this.Owner.CommandService.ExecuteDefaultCommand(CommandId.MoveToUpperView, parameter);
	    }
	}