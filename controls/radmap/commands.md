---
title: Commands
page_title: Commands
description: Commands
slug: radmap-commands
tags: commands
published: True
position: 7
---

# Commands


The **RadMap** control exposes a **Commands** property that allows you to register custom commands that are triggered through the map [behaviors]({%slug radmap-behaviors%}). The commands have an **Id** property that defines which behavior will trigger the execution, and the default action of the command. The type of the parameter passed to the command also depends on the **Id**. Here are the available values:

* **Unknown**: The command is not familiar to the **RadMap** and it will not execute. This is the default value.
* **ViewChanged**: The command is associated with a change either in the **Center** or **ZoomLevel** (or both) properties of the **RadMap**. It is triggered by a user input through the **MapPanAndZoomBehavior**. The parameter passed to the command is of type **ViewChangedContext** and exposes the following properties:
 * **NewCenter** (Location): Gets or sets a value that will be set as the new **Center** of the **RadMap**.
 * **NewZoomLevel** (double): Gets or sets a value that will be set as the new **ZoomLevel** of the **RadMap**.
 * **PreviousCenter** (Location): Gets the previous **Center** value of the **RadMap**.
 * **PreviousZoomLevel** (double): Gets the previous **ZoomLevel** value of the **RadMap**.
 * **ShapeSelectionChanged**: The command is associated with a change in the **SelectedShapes** property of a **MapShapeSelectionBehavior** instance. The parameter passed to the command is of type **SelectionChangedEventArgs** and exposes the following properties:
 * **AddedItems**
 * **RemovedItems**
* **ShapeLayerSourceChanged**: The command is that is triggered when an **IShapeDataSource** instance is specified as a source to a **[MapShapeLayer]({%slug radmap-mapshapelayer%})** and the **IShapeDataSource.Shapes** are prepared. The parameter passed to the command is the **MapShapeLayer** instance.

>If no custom commands are defined, then the default ones will be used. The custom behaviors have higher priority than the default ones.

>When you add a custom command to the **RadMap**, make sure that you have added the behavior that triggers the execution of this type of command in the **Behaviors** collection of the map.

## Example

Here is an example that demonstrates how to create a custom command that limits the **ZoomFactor** of the **RadMap** to 2. There are two ways to do that:

* You can override the **CanExecute** method of the command to allow execution only if the **ZoomFactor** is bigger than 2.
* You can override the **Execute** method of the command to rollback the **ZoomFactor** and **Center** properties if the **ZoomFactor** is bigger than 2.

To demonstrate the two cases, we will create a custom command class for each one. The command classes should inherit from the **MapCommand** class.

	public class LimitZoomCommand1 : MapCommand
	{
	    public LimitZoomCommand1()
	    {
	        this.Id = CommandId.ViewChanged;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as ViewChangedContext;
	        if (context.NewZoomLevel < 2)
	        {
	            return true;
	        }
	
	        return false;
	    }
	}

	public class LimitZoomCommand2 : MapCommand
	{
	    public LimitZoomCommand2()
	    {
	        this.Id = CommandId.ViewChanged;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        base.Execute(parameter);
	        var context = parameter as ViewChangedContext;
	        if (context.NewZoomLevel > 2)
	        {
	            context.NewZoomLevel = context.PreviousZoomLevel;
	            context.NewCenter = context.PreviousCenter;
	        }
	
	        this.Owner.CommandService.ExecuteDefaultCommand(CommandId.ViewChanged, context);
	    }
	}

Then we have to add an instance of our custom command in the **Commands** collection of the **RadMap**

	<telerikMap:RadMap>
	    <telerikMap:RadMap.Behaviors>
	        <telerikMap:MapPanAndZoomBehavior/>
	    </telerikMap:RadMap.Behaviors>
	
	    <telerikMap:RadMap.Commands>
	        <local:LimitZoomCommand1/>
	    </telerikMap:RadMap.Commands>
	
	    <telerikMap:RadMap.Layers>
	        <!-- add layers to the map -->
	    </telerikMap:RadMap.Layers>
	</telerikMap:RadMap>

Alternatively you can use **LimitZoomCommand2** command instead of **LimitZoomCommand1**.

# See Also

 * [Behaviors Overview]({%slug radmap-behaviors%})
