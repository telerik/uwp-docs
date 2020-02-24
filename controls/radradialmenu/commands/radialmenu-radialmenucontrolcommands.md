---
title: RadialMenu Control Commands
page_title: RadialMenu Control Commands
description: Check our &quot;RadialMenu Control Commands&quot; documentation article for RadRadialMenu for UWP control.
slug: radialmenu-commands-radialmenucontrolcommands
tags: radialmenu,control,commands
published: True
position: 1
---

# RadialMenu Control Commands

The **RadRadialMenu** control supports the following commands:

* **Open Command**: Executes before the RadRadialMenu opens.
* **Close Command**: Executes before the RadRadialMenu closes.
* **NavigateToView Command**: Executes before the user navigate to another view (child items). This command receives a context of type **NavigateContext**, which exposes the following properties:
	* **MenuItemTarget**: Gets the current **RadialMenuItem** that has beend clicked/tapped.
	* **MenuItemSource**: Gets the previous (if any) **RadialMenuItem** that has been used to navigate navigated through.

**RadRadialMenu** exposes a commands collection that allows you to register custom commands
with each control's instance through the **RadRadialMenu.Commands** property.

>To implement a command you need to create a class that derives from the **RadialMenuCommand** class
and override the **CanExecute** and **Execute** methods.

The **RadialMenuCommand** class exposes the following properties:

* **Id**: This value is used to associate a command with a known event within a RadRadialMenu instance.
* **Owner**: Gets the **RadRadialMenu** instance that has executed this command.

>Custom commands have higher priority than the default commands.

## Example

Here is an example of how to implement custom command that will be executed when the user navigates to the children of a menu item:

1. First, create a custom class that inherits from the **RadialMenuCommand** class. You need to set the **Id** of the command to specify when it will be executed. If you wish to execute the default behavior, then you have to call thecan override the **Owner.CommandService.ExecuteDefaultCommand** method in the **Execute** method of the command.

		public class CustomMenuCommand : RadialMenuCommand
		{
		    public CustomMenuCommand()
		    {
		        this.Id = CommandId.NavigateToView;
		    }
		
		    public override void Execute(object parameter)
		    {
		        base.Execute(parameter);
		
		        var context = parameter as NavigateContext;
		        var source = context.MenuItemSource; // parent menu item
		        var target = context.MenuItemTarget; // current menu item
		
		        // put your custom command logic here
		
		        this.Owner.CommandService.ExecuteDefaultCommand(CommandId.NavigateToView, context);
		    }
		
		    public override bool CanExecute(object parameter)
		    {
		        return true;
		    }
		}

1. Then you have to define an instance of the custom command class in the **Commands** collection of the **RadRadialMenu**.

		<telerikPrimitives:RadRadialMenu>
		    <telerikPrimitives:RadRadialMenu.Commands>
		        <local:CustomMenuCommand/>
		    </telerikPrimitives:RadRadialMenu.Commands>
		
		    <telerikPrimitives:RadialMenuItem Header="Item 1" >
		        <telerikPrimitives:RadialMenuItem.ChildItems>
		            <telerikPrimitives:RadialMenuItem Header="Item 1.1">
		                <telerikPrimitives:RadialMenuItem.ChildItems>
		                    <telerikPrimitives:RadialMenuItem Header="Item 1.1.1" />
		                </telerikPrimitives:RadialMenuItem.ChildItems>
		            </telerikPrimitives:RadialMenuItem>
		            <telerikPrimitives:RadialMenuItem Header="Item 1.2" >
		                <telerikPrimitives:RadialMenuItem.ChildItems>
		                    <telerikPrimitives:RadialMenuItem Header="Item 1.2.1" />
		                </telerikPrimitives:RadialMenuItem.ChildItems>
		            </telerikPrimitives:RadialMenuItem>
		        </telerikPrimitives:RadialMenuItem.ChildItems>
		    </telerikPrimitives:RadialMenuItem>
		</telerikPrimitives:RadRadialMenu>

# See Also

 * [Commands Overview]({%slug radialmenu-commands-overview%})
