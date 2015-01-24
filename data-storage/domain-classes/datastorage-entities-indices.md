---
title: Indices
page_title: Indices
description: Indices
slug: datastorage-entities-indices
tags: indices
published: True
position: 1
---

# Indices

Data Storage component supports indices in order to speed up retrieval of data. Every table can have a couple of indices that are suitable for the query scenarios in your application. In practice, you should keep in mind that indices speed up finding data, but slow down insert, update anddelete operations. Since the Data Storage component relies on SQLite engine, all restrictions and specifics of SQLite indices apply to index definitions in Data Storage. Some fields are automatically indexed such as integer primary key field in a table. As a rule, any field that you will use to limit the number of results you are trying to find should be indexed.

## DatabaseIndex Parameters

The **[DatabaseIndex]** attribute has four parameters:

* Name of the index: Indices must have different names.
* Sort order: **SortOrder** enumeration should be used to specify the sort order for indexed column that maps to annotated field.
* Position of the field in index: The position of columns in complex indices should be carefully determined since it is important for performance of the queries that use them.
* Uniqueness of values of index: If the value specified for this property is true the index cannot have the same combination of values for the columns.

## Example

Here is an example of domain class that defines two indices:
	
	class Person
	{
		[Key]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public long ID { get; set; }
		
		[DatabaseIndex("IndexForSelectByName", SortOrder.Asc, 0, false)]
		public string Name { get; set; }
		
		[DatabaseIndex("IndexForSelectByName ", SortOrder.Asc, 1, false)]
		[DatabaseIndex("IndexForSelectByHeight", SortOrder.Asc, 2, false)]
		public int Age { get; set; }
		
		public DateTime BornDate { get; set; }
		
		[DatabaseIndex("IndexForSelectByName", SortOrder.Asc, 2, false)]
		[DatabaseIndex("IndexForSelectByHeight", SortOrder.Asc, 0, false)]
		public int PersonHeight { get; set; }
	}

# See Also

 * [Entities Overview]({%slug datastorage-entities-overview%})
