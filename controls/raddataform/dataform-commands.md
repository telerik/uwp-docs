---
title: Commands
page_title: Commands
description: Check our &quot;Commands&quot; documentation article for RadDataForm for UWP control.
slug: dataform-commands
tags: dataform,raddataform,commands
published: True
position: 3
---

# Commands

**RadDataForm** exposes a **Commands** collection that allows you to register **DataFormCommands** objects with each control's instance through the:

* **Commands** property

Currently the RadDataForm supports DataFormCommands with the following Id: 

**Commit** : Executes each time the control needs to commit a property. The passed parameter is of type **EntityProperty**.

**Validate** : Executes when form tries to validate a property. Again, the passed parameter is of type **EntityProperty**.
