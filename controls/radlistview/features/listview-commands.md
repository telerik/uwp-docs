---
title: Commands
page_title: Commands
description: RadListView Commands
slug: radlistview-commands
tags: radlistview,listview,commands
published: True
position: 
---

# Commands

The command design-pattern is very important and widely used in the XAML and MVVM world. **RadListView** strictly follows these best practices and provides an intuitive and easy-to-use set of APIs that allow different aspects of the **RadListView** control’s behavior to be handled and/or completely overridden.

**RadListView** exposes a **Commands** collection that allows you to register custom commands with each control’s instance through the **RadListView.Commands** property:

- **Commands**: Gets the collection with all the custom commands registered with the CommandService. Custom commands have higher priority than the built-in (default) ones.

## Command Types

There are two types of commands:

- **ListViewCommand**: All the default commands within RadListView derive from the base ListViewCommand. Think of this command as a UI-related command as it operates over the RadListView instance that owns the command.
- **ListViewUserCommand**: This specific command type provides the abstraction of the UI-related commands (that all the built-in commands are) over a stateless and UI-agnostic generic command implementation. The command exposes the following properties:
  - **Id**: Gets or sets the CommandId member this command is associated with.
  - **Command**: Gets or sets the generic ICommand implementation that may come from the ViewModel.
  - **EnableDefaultCommand**: Gets or sets a value indicating whether the default (built-in) UI command associated with the specified Id will be executed. The default value is True.

### CommandId Enumeration

All the predefined commands within a RadListView instance are identified by a member of the **CommandId** enumeration. This is actually the key that relates a command instance to a particular action/routine within the owning list view. In order to register a custom command within a RadListView instance you may either inherit the **ListViewCommand** class and override its CanExecute and Execute methods or instantiate a **ListViewUserCommand** instance and set its Command property. In both cases you need to set the Id property of the new command so that it can be properly associated with the desired action/event. Following are the members of the CommandId enumerations:
 
- **LoadMoreData**: A command associated with requesting and loading more data when available. 
- **ItemTap**: A command associated with the Tap event that occurs over an item. 
- **ItemDragStarting**: A command associated with the starting a drag action on an item. 
- **ItemReorderComplete**: A command associated with the completion of a item reorder action on an item. 
- **ItemSwiping**: A command associated with the swiping action on an item.
- **ItemSwipeActionComplete**: A command associated with the completion of a item swipe action on an item. 
- **ItemActionTap**: A command associated with the Tap event that occurs on an action item. 
- **RefreshRequested**: A command associated with requesting an update with the pull to refresh control.

## Examples

### Using the ListViewCommand class

This example demonstrates how to use the ListViewCommand class to create a command that overrides the default one.

	<telerikDataControls:RadListView>
	    <telerikDataControls:RadListView.Commands>
	        <local:CustomItemTapCommand/>
	    </telerikDataControls:RadListView.Commands>
	</telerikDataControls:RadListView>

	public class CustomItemTapCommand : ListViewCommand
	{
	    public CustomItemTapCommand()
	    {
	        this.Id = CommandId.ItemTap;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var tapContext = parameter as ItemTapContext;
	        var item = tapContext.Item;
	        // add your logic here
	
	        // execute the default command:
	        this.Owner.CommandService.ExecuteDefaultCommand(this.Id, parameter);
	    }
	}

### Using the ListViewUserCommand class

The following example demonstrates how to create ListViewUserCommand which is bound to a command from a view model. We will use the item tap command and execute our custom action instead of the default one.

First, we have to define a view model as a static resource:

 	<Page.Resources>
        <local:ViewModel x:Key="viewModel"/>
    </Page.Resources>

Here is the definition of the RadListView in XAML:

	<telerikDataControls:RadListView IncrementalLoadingMode="Explicit" DataContext="{StaticResource viewModel}" ItemsSource="{Binding Items}">
	    <telerikDataControls:RadListView.Commands>
	        <telerikListViewCommands:ListViewUserCommand Id="ItemTap" EnableDefaultCommand="False" Command="{Binding ItemTapCommand, Source={StaticResource viewModel}}"/>
	    </telerikDataControls:RadListView.Commands>
	    <telerikDataControls:RadListView.ItemTemplate>
	        <DataTemplate>
	            <TextBlock Text="{Binding Text}"/>
	        </DataTemplate>
	    </telerikDataControls:RadListView.ItemTemplate>
	</telerikDataControls:RadListView>
	
Where:

	xmlns:telerikDataControls="using:Telerik.UI.Xaml.Controls.Data"
	xmlns:telerikListViewCommands="using:Telerik.UI.Xaml.Controls.Data.ListView.Commands"


And here are the view model, data item and custom command classes:

	public class ViewModel
	{
	    public ViewModel()
	    {
	        this.Items = this.GetItems();
	        this.ItemTapCommand = new ItemTapCommand();
	    }
	
	    public ItemTapCommand ItemTapCommand { get; set; }
	
	    public ObservableCollection<Item> Items { get; set; }
	
	    private ObservableCollection<Item> GetItems()
	    {
	        var items = new ObservableCollection<Item>();
	        for (var i = 0; i < 3; i++)
	        {
	            items.Add(new Item { Text = "item " + i });
	        }
	
	        return items;
	    }
	}
	
	public class Item
	{
	    public string Text { get; set; }
	}

	public class ItemTapCommand : ICommand
	{
	    public bool CanExecute(object parameter)
	    {
	        return true;
	    }
	
	    public event EventHandler CanExecuteChanged;
	
	    public void Execute(object parameter)
	    {
	        var itemInfo = parameter as ItemTapContext;
	        var item = itemInfo.Item as Item;
			// add your logic here
	    }
	}