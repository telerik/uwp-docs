---
title: FlyoutGroupHeader Command
page_title: FlyoutGroupHeader Command
description: FlyoutGroupHeader Command
slug: datagrid-commands-flyoutgroupheadertapcommand
tags: flyoutgroupheader,command
published: True
position: 9
---

# FlyoutGroupHeader Command

>This command is associated with the **Tap** event that occurs over a group header in the flyout.

Here's an example where we first create a class that inherits from the *DataGridCommand* one and then add it to the RadDataGrid.Commands collection

	public class CustomFlyoutGroupHeaderTap : DataGridCommand
	{
	    public CustomFlyoutGroupHeaderTap()
	    {
	        this.Id = CommandId.FlyoutGroupHeaderTap;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        //put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as FlyoutGroupHeaderTapContext;
	        //put your custom logic here
	    }
	}

And the XAML declaration:

	<telerikGrid:RadDataGrid>
	    <telerikGrid:RadDataGrid.Commands>
	        <local:CustomFlyoutGroupHeaderTap/>
	    </telerikGrid:RadDataGrid.Commands>
	</telerikGrid:RadDataGrid>
