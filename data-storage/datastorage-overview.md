---
title: Overview
page_title: Overview
description: Overview
slug: datastorage-overview
tags: overview
published: True
position: 0
---

# Overview

>importantTelerik Data Storage is available for Windows 8.1.

Teleriks Storage implementation provides users with local database support backed with the fast and server-less engine of SQLite. With Telerik’s storage solution developers can take advantage of relational databases (not BLOB files only) for processing data in their Windows Store apps, which widens the scope of the application types they can develop.

The Storage engine exposes to the C# world LINQ to SQLite extensions that are Telerik’s entry-level LINQ-enabled ORM implementation for SQLite. LINQ to SQLite is a LINQ provider that includes ORM features in its own implementation. Bundled with the vividness of entity classes developers can create relational databases with tables that map plain old CLR object (POCO) entities. It is up to the users to choose the way of usage that is most suitable for the particular scenario and their skills. If the developer likes the expressiveness of LINQ standard or query syntax, he can prefer them instead of raw SQL queries. Still, the engine supports pure SQL syntax-based queries which can be used in case this is the preferred approach.

## Key Features

* [Methods for CRUD operations]({%slug datastorage-crudoperationsoverview%})
* Support for LINQ method and SQL query syntax
* [Indices for fast data retrieval]({%slug datastorage-entities-indices%})

# See Also

 * [Getting Started]({%slug datastorage-gettingstarted%})
 * [Good Practices]({%slug datastorage-goodpractices%})
