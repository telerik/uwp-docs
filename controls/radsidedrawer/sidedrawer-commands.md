---
title: Commands
page_title: Commands
description: Check our &quot;Commands&quot; documentation article for RadSideDrawer for UWP control.
slug: sidedrawer-commands
tags: sidedrawer,radsidedrawer,commands
published: True
position: 2
---

# Commands

**RadSideDrawer** exposes a **Commands** collection that allows you to register **SideDrawerCommand** objects with each control's instance through the:

* **Commands** property

Currently the RadSideDrawer supports SideDrawerCommands with the following Id: 

**GenerateAnimations** : Executes each time the control needs to update its animations so you can get and modify them. The passed parameter is of type **AnimationContext** and it contains the following properties:

- *MainContentStoryBoard* : This is the storyboard that holds the animations for the MainContent when it opens.
- *MainContentStoryBoardReverse* : This is the storyboard that holds the animations for the MainContent when it closes.
- *DrawerStoryBoard* : This is the storyboard that holds the animations for the Drawer when it opens.
- *DrawerStoryBoardReverse* : This is the storyboard that holds the animations for the Drawer when it closes.

**DrawerStateChanged** : Executes when drawer changes its state.

## Example

    public class CustomCommand : SideDrawerCommand
    {
        public CustomCommand()
        {
            this.Id = CommandId.GenerateAnimations;
        }
        public override bool CanExecute(object parameter)
        {
            return true;
        }

        public override void Execute(object parameter)
        {
            var context = parameter as AnimationContext;
            foreach (var item in context.MainContentStoryBoard.Children)
            {
                if(Storyboard.GetTargetProperty(item).Equals("Opacity"))
                {
                    (item as DoubleAnimation).To = 0;
                }
            }
            this.Owner.CommandService.ExecuteDefaultCommand(CommandId.GenerateAnimations, context);
        }
    }
 
    <telerikPrimitives:RadSideDrawer>
        <telerikPrimitives:RadSideDrawer.Commands>
            <local:CustomCommand />
        </telerikPrimitives:RadSideDrawer.Commands>
    </telerikPrimitives:RadSideDrawer>