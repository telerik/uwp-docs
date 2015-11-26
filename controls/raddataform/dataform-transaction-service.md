---
title: Transaction Service
page_title: Transaction Service
description: Transaction Service
slug: dataform-transactionservice
tags: transactionservice, raddataform
published: True
position: 9
---

#Overview#

Transaction Service can be used to make operations over RadDataForm like Validation and Commit. It can be accessed thorugh the **RadDataForm.TransactionService** property.


#API#

- public bool **CommitProperty**(string propertyName) - Tries to commit the candidate value of the specified property.
- public bool **CommitAll**() - Tries to commit all candidate values.
- public async Task<bool> **ValidatePropertyAsync**(string propertyName) - Validates the specified property.
- public async Task<bool> **ValidateAllAsync**() - Validates all properties.




