---
title: Overview
page_title: Overview
description: Overview
slug: datastorage-entities-overview
tags: overview
published: True
position: 0
---

# Overview

The Data Storage uses entity classes to create its entries. When you create the entity classes you have to use attributes to specify the constrains of the objects in the database. There is support for [indices]({%slug datastorage-entities-indices%}) for fast retrieval of the data.

## Rules for Creating Entity Classes

The [CRUD operations]({%slug datastorage-crudoperationsoverview%}) require entity classes for persisted types, hence there are some rules you should follow when you create entity classes.

* The primary key for entity class is mandatory. It is defined with [**Key**] annotation from the namespace: **System.ComponentModel.DataAnnotations**.
* Currently Supported .Net types for entity fields are:**int**, **uint**, **long**, **ulong**, **byte**, **sbyte**, **bool**, **string**, **short**, **ushort**, **float**, **double**, **DateTime**, **TimeSpan** and **Guid**.
* Reference types cannot be used as type of domain class field and are escaped during table creation.
* You should specify auto incremental fields with an annotation **[DatabaseGenerated(DatabaseGeneratedOption.Identity)]** from namespace: **System.ComponentModel.DataAnnotations.Schema**.
* The resulting entities from join operations may include fields from the joined tables. In order to get a collection of objects with the retrieved data, you have to declare an entity class that defines properties with names exactly as the names of the combined columns. If the resulted set will be used for read-only operations, you can use anonymous. Currently, Data Storage operations do not support named fields for type creation in LINQ queries.
* You should use the **[SuppressSchemaGeneration]** attribute for all entity classes that you will use only for retrieval of result set of executed query. In this way, this entities will not be mapped to a table in the database.

## Example

Here is an example demonstrating how to create entity classes.

	
	public class CarOwners
	{
		[Key]
		public long OwnerID { get; set; }
		
		public string Name { get; set; }
		
		public int Age { get; set; }
		
		public bool Alive { get; set; }
		
		public DateTime DateBorn { get; set; }
	}
	
	public class Cars
	{
		[Key]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public long CarID { get; set; }
		
		public string Model { get; set; }
		
		public DateTime YearOfModel { get; set; }
		
		public string RegistrationNumber { get; set; }
		
		public long OwnerFK { get; set; }
	}

# See Also

 * [Indices]({%slug datastorage-entities-indices%})
 * [Good Practices]({%slug datastorage-goodpractices%})
