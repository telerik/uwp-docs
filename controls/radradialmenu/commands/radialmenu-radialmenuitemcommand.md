---
title: RadialMenuItem Command
page_title: RadialMenuItem Command
description: RadialMenuItem Command
slug: radialmenu-commands-radialmenuitemcommand
tags: radialmenuitem,command
published: True
position: 2
---

# RadialMenuItem Command

The **RadialMenuItem** has a **Command** property that can be bound to an **ICommand** implementation. The execution of the command is triggered by click/tap event. The parameter passed to the command is of **RadialMenuItemContext** type and exposes the following properties:

* **TargetElement**: This is the element that uses the **RadRadialMenu** as a context menu.
* **MenuItem**: This is the **RadialMenuItem** that has initiated the command.
* **CommandParameter**: The command parameter passed by the **RadialMenuItem**.

## Example

Here is an example demonstrating how to add a custom command to a **RadialMenuItem**.

1. First, create a class that implements the **ICommand** interface.

		public class CustomItemCommand : ICommand
		{
		    public bool CanExecute(object parameter)
		    {
		        var item = parameter as RadialMenuItemContext;
		
		        // perform custom logic here
		
		        return true;
		    }
		
		    public void Execute(object parameter)
		    {
		        var context = parameter as RadialMenuItemContext;
		        var target = context.TargetElement;
		        var item = context.MenuItem;
		        var commandParameter = context.CommandParameter;
		
		        // perform custom logic here
		    }
		
		    public event EventHandler CanExecuteChanged;
		}

1. Add an instance of the custom command class to the Resources of the Page.

		<Page.Resources>
		    <local:CustomItemCommand x:Key="customCommand"/>
		</Page.Resources>

1. Bind the **Command** property of the **RadialMenuItem** to the instance of the custom command.

		<TextBlock Text="Some Text">
		    <telerikPrimitives:RadRadialContextMenu.Menu>
		        <telerikPrimitives:RadRadialMenu>
		            <telerikPrimitives:RadialMenuItem Header="Item 1" Command="{StaticResource customCommand}"/>
		            <telerikPrimitives:RadialMenuItem Header="Item 2" Command="{StaticResource customCommand}"/>
		        </telerikPrimitives:RadRadialMenu>
		    </telerikPrimitives:RadRadialContextMenu.Menu>
		
		    <telerikPrimitives:RadRadialContextMenu.Behavior>
		        <telerikPrimitives:RadialMenuTriggerBehavior AttachTriggers="Focused" />
		    </telerikPrimitives:RadRadialContextMenu.Behavior>
		</TextBlock>

# See Also

 * [Commands Overview]({%slug radialmenu-commands-overview%})
