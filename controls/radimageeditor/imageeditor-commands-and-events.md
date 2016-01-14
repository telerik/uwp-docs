---
title: Commands and Events
page_title: ImageEditor Commands and Events
description: ImageEditor Commands and Events
slug: imageeditor-commands-and-events
tags: imageeditor,commands, events
published: True
position: 6
---

## Events

The RadImageEditor exposes the following events:

- **ImageSaving**: Occurs when the [save image button]({%slug imageeditor-visual-structure%}) is pressed.
- **ImageReverted**: Occurs when the [revert to original]({%slug imageeditor-visual-structure%}) is pressed.

## Commands

There is a more MVVM friendly way to perform custom actions when an event occurs. The **RadImageEditor** control exposes a commands collection that allows you to register custom commands with each control’s instance through the **RadImageEditor.Commands** property. Each command is associated with an id from the **Telerik.UI.Xaml.Controls.Input.ImageEditor.Commands.CommandId** enumeration. Here are the default commands:

- **ImageEditorSavingCommand**: Executed when the [save image button]({%slug imageeditor-visual-structure%}) is pressed. **Id** = CommandId.**Saving**
- **ImageEditorRevertImageCommand**: Executed when [revert to original]({%slug imageeditor-visual-structure%}) is pressed. **Id** = CommandId.**RevertImage**

You can also add custom commands that inherit from the **ImageEditorCommand** class. Here is an example of a custom command that will save the image to a specific folder:

	public class CustomSavingCommand : ImageEditorCommand
	{
        public CustomSavingCommand()
        {
            this.Id = CommandId.Saving;
        }

	    public override bool CanExecute(object parameter)
	    {
	        return true;
	    }
	
	    public async override void Execute(object parameter)
	    {
	        var stream = (parameter as ImageSavingEventArgs).Stream;
			byte[] arr = new byte[stream.Size];
	        await stream.AsStream().ReadAsync(arr, 0, arr.Length);
	
	        var file = await ApplicationData.Current.LocalFolder.CreateFileAsync("NewImage.jpg", CreationCollisionOption.ReplaceExisting);
	        using (var fileSTream = await file.OpenStreamForWriteAsync())
	        {
	            await fileSTream.WriteAsync(arr, 0, arr.Length);
	        }
	    }
	}

We have to add an instance of the custom command in the Commands collection. 

	<input:RadImageEditor>
		<input:RadImageEditor.Commands>
		    <local:CustomSavingCommand/>
		</input:RadImageEditor.Commands>
	</input:RadImageEditor>

> The ImageEditorCommand has an **Owner** property that holds the instance of the RadImageEditor. If you wish to execute the default command associated with a CommandId, you can use the RadImageEditor.CommandService. You can add the following line to the **Execute** method of the custom command: 
 
	this.Owner.CommandService.ExecuteDefaultCommand(this.Id, parameter);