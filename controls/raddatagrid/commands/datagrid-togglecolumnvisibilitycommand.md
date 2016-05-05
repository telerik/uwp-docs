---
title: ToggleColumnVisibility Command
page_title: ToggleColumnVisibility Command
description: ToggleColumnVisibility Command
slug: datagrid-commands-togglecolumnvisibilitycommand
tags: column,visibility,command
published: True
position: 12
---

## ToggleColumnVisibility Command

Handles the process of switching the **IsVisible** property of a column. Default implementation will simply toggle the vidibility. This command is usefull when customers need notification when the end user excludes or includes a column.

Here is how a custom ToggleColumnVisibility command can be created.

    public class CustomToggleColumnVisibilityCommand : DataGridCommand
    {
        public CustomToggleColumnVisibilityCommand()
        {
            this.Id = CommandId.ToggleColumnVisibility;
        }

        public override bool CanExecute(object parameter)
        {
            var context = parameter as ToggleColumnVisibilityContext;

            return true;
        }

        public override void Execute(object parameter)
        {
            var context = parameter as ToggleColumnVisibilityContext;
        }
    }
	
	
Here is the XAML definition:

	<grid:RadDataGrid>
		<grid:RadDataGrid.Commands>
			<local:CustomToggleColumnVisibilityCommand />
		</grid:RadDataGrid.Commands>
	</grid:RadDataGrid>