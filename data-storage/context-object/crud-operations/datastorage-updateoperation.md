---
title: Update Operation
page_title: Update Operation
description: Update Operation
slug: datastorage-updateoperation
tags: update,operation
published: True
position: 3
---

# Update Operation

Updating existing entries in the database is implemented via the following method:

	public void Update<PersistentType>(PersistentType objectToUpdate)

- Updates already existing persisted object.

## Example

Using the example from the [Getting Started]({%slug datastorage-gettingstarted%}) section we can insert an entry into the database and then update it via the **Update** method.
	
	var person = new CarOwners() { OwnerID = 1, Name = "Paul Grohe", Age = 33, Alive = true, DateBorn = new DateTime(1980, 7, 23) };

	context.Insert<CarOwners>(person);
	context.SaveChanges();

	person.Name = "John Belley";
	context.Update<CarOwners>(person);
	context.SaveChanges();

Alternatively, we can use a SQL update query.
	
	string query = "UPDATE CarOwners SET Name = 'Mike Dohl' WHERE Name = 'Stephen Dred'";
	context.GetScalar<int>(query);

# See Also

 * [CRUD Operations Overview]({%slug datastorage-crudoperationsoverview%})
