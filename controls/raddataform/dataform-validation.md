---
title: Validation
page_title: Validation
description: Validation
slug: dataform-validation
tags: validation, raddataform
published: True
position: 8
---

# Validation

In order DataForm to support validation the developer must implement the **ISupportEntityValidation** interface. This validator should be passed through the (link)EntityProvider **GetItemValidator** method.
The ValidateAsync method of this interface will be called from the RadDataForm depending on the RadDataForm.ValidationMode value.


The **ISupportEntityValidation** interface derrives from the well known **INotifyDataErrorInfo**, so the methodology is the same. The developer should implement **GetErrors** method, **HasErrors** property and should raise the **ErrorsChanged** event when the errors has been changed. Additionally when validation is needed the **ValidatePropertyAsync** method(which recieves the Entity object and the propertyName of the EntityProperty that should be validated) will be called.

- **OnCommit** - Validation will be triggered when an EntityProperty tries to commit a value.
- **Immediate** - Validation will be triggered whenever the user changes the value candidate.
- **OnLostFocus** - Validation will be triggered when the editor loses focus.
