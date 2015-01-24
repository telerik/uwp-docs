---
title: Delete Operation
page_title: Delete Operation
description: Delete Operation
slug: datastorage-deleteoperation
tags: delete,operation
published: True
position: 4
---

# Delete Operation

Deleting existing entries from the database is implemented via the following method:
	
	public void Delete<PersistentType>(PersistentType objectToDelete)

- Deletes from the database the persisted object given as parameter.

## Example

Using the example from the [Getting Started]({%slug datastorage-gettingstarted%}) section we can insert an entry into the database and then delete it via the **Delete** method.
	
	var person = new CarOwners() { OwnerID = 1, Name = "Paul Grohe", Age = 33, Alive = true, DateBorn = new DateTime(1980, 7, 23) };
	context.Insert<CarOwners>(person);
	context.SaveChanges();

	context.Delete<CarOwners>(person);
	context.SaveChanges();

# See Also

 * [CRUD Operations Overview]({%slug datastorage-crudoperationsoverview%})
