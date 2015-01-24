---
title: Create Operation
page_title: Create Operation
description: Create Operation
slug: datastorage-createoperation
tags: create,operation
published: True
position: 1
---

# Create Operation

Inserting entries in the database is implemented via the following method:
	
	public void Insert<PersistentType>(PersistentType objectToInsert)

- Inserts a new object of persisted type to database. The very first use of new entity object (aka persisted type) will enforce the context to create a corresponding table.

## Example

Using the example from the [Getting Started]({%slug datastorage-gettingstarted%}) section we can call the **Insert** method to add the following entries to the database:
	
	context.Insert<CarOwners>(new CarOwners() { OwnerID = 1, Name="Paul Grohe", Age=33, Alive = true, DateBorn=new DateTime(1980,7,23) });
	context.Insert<Cars>(new Cars() { Model = "BMW", RegistrationNumber = "ZD123DF", YearOfModel = new DateTime(2010, 1, 1), OwnerFK = 1 });

# See Also

 * [CRUD Operations Overview]({%slug datastorage-crudoperationsoverview%})
