---
title: Properties
page_title: ImageEditor Properties
description: ImageEditor Properties
slug: imageeditor-properties
tags: imageeditor
published: True
position: 4
---

# Properties

The RadImageEditor exposes the following properties:

- **[Commands]({%slug imageeditor-commands-and-events#commands%})** (CommandCollection<RadImageEditor>): Collection that contains user defined commands associated with the RqadImageEditor.
- **CommandService** (CommandService): Used to execute commands from the **Commands** collection with specific id.  
Example:

        imageEditor.CommandService.ExecuteCommand(CommandId.Saving, parameter);
- **CurrentTool** (ImageEditorTool): Gets or sets the currently selected tool.
- **DisplayOriginalImage** (bool): Specifies whether the compare button will be added to the tools view.
- **FileNamePrefix** (string): Gets or sets the prefix that will be added to the saved image file name.
- **HandleBackButton** (bool): For Windows Phone - specifies whether back button press will navigate from the tools view to the groups view.
- **IndicatorStyle** (Style): Gets or sets the style of the busy indicator that is displayed while an image effect is being applied. The target type of the style should be [RadBusyIndicator]({%slug busyindicator-overview%}).
- **LayerSelector** (ImageEditorLayerSelector): Provides instance of [ImageEditorLayer]({%slug imageeditor-tools#custom-tool-layer%}) for each tool.
- **ManipulationInputProcessor** (ManipulationInputProcessor): Manipulation processor that contains information about any transformation that has been applied to the image through user gestures.
- **ModifiedImage** (ImageSource): Gets or sets the source of the modified image.
- **SelectedGroup** (object): Gets or sets the currently selected group.
- **Source** (StorageFile): Gets or sets the source file of the image.
- **StatusMessage** (string): 
- **ToolFactory** (ImageEditorToolFactory): Provides a [template]({%slug imageeditor-tools#custom-ui%}) for the UI of each tool.
- **ToolGroups** (ObservableCollection<ImageEditorToolGroup>): Gets a collection of all tool groups added to the image editor. 
- **ToolsPosition** (ImageEditorToolsPosition): Specifies the position of the tools. { *Bottom*, *Top* }