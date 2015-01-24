---
title: Good Practices
page_title: Good Practices
description: Good Practices
slug: datastorage-goodpractices
tags: good,practices
published: True
position: 4
---

# Good Practices

* Since database operations use heavy COM operations to transfer data through the ABI, you should carefully avoid the *"N+1 select problem"*. In other words, the data fetch strategy of the application should be optimized.
* Once data is read from the database, prefer in-memory transformations via LINQ to Objects operations.
* Prefer asynchronous methods for better user experience.
* Carefully take decisions if the database should be fully normalized. Sometimes it is better to keep some tables denormalized in order to avoid expensive join operations. Especially in case of small amount of records in table.
* For better understanding of SQLite's query specifics read the SQLite documentation. The following articles are very helpful:
	* [http://www.sqlite.org/optoverview.html](http://www.sqlite.org/optoverview.html)
	* [http://www.sqlite.org/queryplanner.html](http://www.sqlite.org/queryplanner.html)
