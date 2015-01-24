---
title: Context Class
page_title: Context Class
description: Context Class
slug: datastorage-contextobject
tags: context,class
published: True
position: 0
---

# Context Class

The **Context** class represents a session with the SQLite database and allows you to perform CRUD operations on the data. It is an implementation of the well-known *Unit of Work* pattern and is a central place in all interactions with the database. The main responsibilities of the **Context** class at run time are:


* to materialize the raw data returned from the database as entity objects
* to track changes that were made to entity objects
* to transfer changes of the entity objects to the database
* to track objects that are bound to controls
* to handle concurrent requests to the database

## Context Class

The **Context** class constructor requires two parameters:

* *databaseName* (string): The name of database file.
* *location* (DatabaseLocation): The location of database file, this parameter is optional. The available values are:
	* **Local** (default): The database file is stored in isolated Local storage.
	* **Roaming**: The database file is stored in isolated Roaming folder.
	* **Temporary**: The database file is stored in isolated Temp folder.
	* **Fullpath**: The database file is specified by full path to location in any available isolated storage.  

>If you specify full path in the *databaseName*, the *location* parameter should be **FullPath**.

	var context = new Context("CarsDB", DatabaseLocation.Roaming);

The **Context** class has methods for CRUD operatoins - See [this article]({%slug datastorage-crudoperationsoverview%}) for full description of these methods.

Here are the methods that keep the persistency in the database:

* **SaveChanges**(): Saves all changes made since the last call of this method. This methods should be called in order to persist current state of the tracked objects in the database.
* **SaveChangesAsync**(): Saves asynchronously changes made in the context. The return value is **void**.
* **CloseDatabase**(): Closes the database and releases all allocated resources.

You can use the **Context** class directly with composition in a custom class that provides some meaningful methods for CRUD operations or, of course, you can derive from it extending its functionality.

## Good to Know

The most important thing to keep in mind is that during its lifetime, the context object is associated with a concrete database, specified at the creation of the object and disposed by calling the **CloseDatabase**() context method. You should use only one global instance of **Context** class bound to a concrete database in order to work with actual data.

Never forget that all changes to the entity objects will be preserved in the context's cache until the **SaveChanges**() method is called. That means the developer should consider carefully when to call this method in order to persist changes to the real database.

It is important to take into account the context’s cache since it is the first place that is checked for requested data during CRUD operations and a central repository for all changes done between two calls of the **SaveChanges**() method. Good practice is to keep the time between two calls of this method short because, as more objects are loaded into memory, the memory consumption of the context may increase and this may cause performance issues.

If entity classes implement **INotifyPropertyChanged** interface, they are exclusively tracked in context cache and can be used for binding operations. The entity objects will live until the **CloseDatabase**() method of the context is called and their actual state will be retrieved from the context cache. The most important issue with these objects that developers should consider is tracking of their previous state in case of changes via binding to user controls. In this case, the entity objects in the context cache are changed automatically by the framework. According to the application workflow, the new state may not be accepted and the previous object's state will be required for explicit update operation in order to revert the changes. This is a typical scenario of "Cancel" operation after filling a form bound to entity object.

# See Also

 * [Overview]({%slug datastorage-entities-overview%})
 * [CRUD Operations Overview]({%slug datastorage-crudoperationsoverview%})
 * [Good Practices]({%slug datastorage-goodpractices%})