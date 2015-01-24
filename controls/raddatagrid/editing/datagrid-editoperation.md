---
title: Edit Operation
page_title: Edit Operation
description: Edit Operation
slug: datagrid-editing-editoperation
tags: edit,operation
published: True
position: 1
---

# Edit Operation

RadDataGrid allows editing an already populated items through the UI.

>First, the RadDataGrid.UserEditModeshould be set to DataGridUserEditMode.Inline. 

Then, the following operations can be performed by a user:

1. A user can begin an edit opearation over a row by performing a double tap gesture over a cell or by clicking the F2 button from the keyboard(begins an editing operation over the current row).
1. A user can cancel an edit operation over a row by clicking the Cancel button of the Editing UI or by clicking the Esc button from the keyboard. 
1. A user can commit an edit operation over a row by tap/click over another cell or by clicking the Enter button from the keyboard.

![EditingUI](images/EditingUI.png)

RadDataGrid also allows a programmatic approach for editing through the following methods:

* **BeginEdit**(object item): Begins the edit operation for the specified data item.
* **CancelEdit**(): Cancels the current edit operation.
* **CommitEdit**(): Commits the current edit operation.