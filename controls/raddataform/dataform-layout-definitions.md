---
title: Layout Definitions
page_title: Layout Definitions
description: Layout Definitions
slug: dataform-layout-definitions
tags: layoutdefinitions, raddataform
published: True
position: 4
---


##Overview##

RadDataForm exposes the LayoutDefinition property of type DataFormLayoutDefinition which can be an entry point for developers to arrange the layout of the DataForm as per his needs.

    public abstract class DataFormLayoutDefinition : AttachableObject<RadDataForm>
    {
        protected internal abstract Panel CreateDataFormPanel();

        protected internal abstract Panel CreateGroupLayoutPanel(string groupKey);

        protected internal virtual void SetEditorArrangeMetadata(EntityPropertyControl editorElement, EntityProperty entityProperty, Panel parentPanel)
        {
        }

        protected internal virtual void SetGroupArrangeMetadata(UIElement groupVisual, string groupName)
        {
        }

        protected internal abstract void SetEditorElementsArrangeMetadata(EntityPropertyControl editorElement, EntityProperty entityProperty);
    }


The default implementation is a StackDataFormLayoutDefinition which arranges the editors in a horizontal StackPanel.


###Example###

