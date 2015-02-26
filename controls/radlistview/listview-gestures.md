---
title: Gestures
page_title: Gestures
description: RadListView Gestures
slug: radlistview-gestures
tags: radlistview,listview,gestures,swipe,reorder,drag
published: True
position: 
---

# Gestures

The RadListView control provides support for item drag gestures. Depending on how the user interacts with the control, two different behaviors are available:

- **Reordering**: Enabled by first holding on an item until the reorder mode is triggered and then you are allowed to drag and drop the item at the desired position.
- **Item Action Buttons**: Swiping left or right over the **swipe area** (see the image below) displays the **item action buttons**.

![](images/listview-action-buttons.png)

The RadListView provides the following properties that enable the reorder/item actions functionality:

- **IsActionOnSwipeEnabled**
- **IsItemReorderEnabled**

When user starts dragging an item, the following commands is executed:

- **ItemDragStartingCommand**: The default command that is executed when dragging is initiated. The command parameter is of type **ItemDragStartingContext** and provides the following properties:
 - **Item**: The interaction item.
 - **Action**: Member of the **DragAction** enumeration, that specifies whether the action is related to reordering or action buttons. The available values are **Reorder** or **ItemAction**.

When the item is released, the following command is executed:

- **ItemDragCompleteCommand**: The default command that is executed when the item is dropped. The command parameter is of type **ItemDragCompleteContext** and provides the following properties:
 - **Item**: The interaction item.
 - **Action**: Member of the **DragAction** enumeration, that specifies whether the action is related to reordering or action buttons. The available values are **Reorder** or **ItemAction**.
 - **DragDelta**: The distance that the item has traveled. 
 - **DestinationItem**: when reordering, this is the item that is shifted by the dragged item.

When an action button is tapped, the following command is executed:

- **ItemActionTapCommand**: The command parameter is of type **ItemDragCompleteContext** and provides the following properties:
 - **Item** 
 - **SourceType**: Specifies whether the first or the second action button is tapped.

>You can find more information about the RadListView commands [here]({% slug listview-commands %}).

## How to implement reorder functionality

The RadListView does not automatically reorder the items in its ItemsSource, but you can use the ItemDragCompleteCommand to do this.

Here is the XAML definition of the RadListView. The view model class should be defined as a static resource.
 
	<Page.Resources>
	    <local:ViewModel x:Key="viewModel"/>
	</Page.Resources>

	<telerikDataControls:RadListView DataContext="{StaticResource viewModel}" ItemsSource="{Binding Items}" IsItemReorderEnabled="True">
	     <telerikDataControls:RadListView.ItemTemplate>
	        <DataTemplate>
	            <TextBlock Text="{Binding Text}"/>
	        </DataTemplate>
	    </telerikDataControls:RadListView.ItemTemplate>
	    <telerikDataControls:RadListView.Commands>
	        <telerikListViewCommands:ListViewUserCommand Id="ItemDragComplete" Command="{Binding ReorderItemsCommand, Source={StaticResource viewModel}}"/>
	    </telerikDataControls:RadListView.Commands>
	</telerikDataControls:RadListView>
		
Where:

    xmlns:telerikDataControls="using:Telerik.UI.Xaml.Controls.Data"
    xmlns:telerikListViewCommands="using:Telerik.UI.Xaml.Controls.Data.ListView.Commands"

Here are the view model and data classes:

	public class ViewModel
	{
	    public ViewModel()
	    {
	        this.Items = GetItems();
	        this.ReorderItemsCommand = new DelegateCommand(ReorderItems);
	    }
	
	    public ICommand ReorderItemsCommand { get; set; }
	
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
	
	    private void ReorderItems(object parameter)
	    {
	        var context = parameter as ItemDragCompleteContext;
	
	        if (context.Action == DragAction.Reorder)
	        {
	            var item = context.Item as Item;
	            var destItem = context.DestinationItem as Item;
	
	            int sourceIndex = this.Items.IndexOf(item);
	            int targetIndex = this.Items.IndexOf(destItem);
	
	            this.Items.Move(sourceIndex, targetIndex);
	        }
	    }
	}

	public class Item
	{
	    public string Text { get; set; }
	}
