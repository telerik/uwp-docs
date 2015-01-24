---
title: Read Operation
page_title: Read Operation
description: Read Operation
slug: datastorage-readoperation
tags: read,operation
published: True
position: 2
---

# Read Operation

Read operations can be implemented with SQL queries or LINQ to SQLite expressions. In case of LINQ to SQLite, two syntactic forms for specifying queries can be used: query syntax and method syntax. Here are described the methods that implement the reading operations from the database.

* Synchronous execution of a SQL query with parameters according to the SQLite SQL syntax.

		public List<PersistentType> Get<PersistentType>(string queryStatement, params object[] queryParameter)
* Asynchronous execution of SQL query.

		public async Task<List<PersistentType>> GetAsync<PersistentType>(string query)
* Synchronous execution of SQL query resulted to scalar value.

		public ScalarType GetScalar<ScalarType>(string query)
* Asynchronous execution of SQL query resulted to scalar value.

		public async Task<ScalarType> GetScalarAsync<ScalarType>(string query)
* Get all the persisted data from the database via LINQ to SQLite provider. This is the base method for switching to LINQ to SQLite use.

		public IQueryable<PersistentType> GetAll<PersistentType>()

## Examples

All examples use the database created in the [Getting Started]({%slug datastorage-gettingstarted%}) section.

### With SQL query
	
		context.Get<Cars>("Select * from Cars");// gets all records from Cars table
		context.Get<Cars>("Select * from Cars where OwnerFK = 1");// gets Carss for owner with ID=1
		context.Get<Cars>("Select * from Cars where OwnerFK = @p1", 1); // gets cars for owner with ID=1 using parameterized query

		context.GetAsync<Cars>("Select * from Cars where OwnerFK = 1"); // gets asynchronously Cars for owner with ID=1

### LINQ to SQLite

The **GetAll** method is essential for usage of LINQ to SQLite provider.

* With query syntax:
	
		var t1 = from item in context.GetAll<Cars>()
		         select item;

		var t2 = from item in context.GetAll<Cars>()
		         where item.OwnerFK == 1
		         select item;
* With method syntax:
	
		var f1 = context.GetAll<Cars>();
		var f2 = context.GetAll<Cars>().Where<Cars>(car => car.OwnerFK == 1);
		var f3 = context.GetAll<Cars>().Where<Cars>(car=>car.OwnerFK==1).OrderBy(car=>car.CarID);

### Join operations with LINQ

>The names of the fields should be identical as the names of the records from the result of the join operations.

* With anonymous type for read only operations using d object:

	
		var d = from car in context.GetAll<Cars>()
		        join owner in context.GetAll<CarOwners>()
		        on car.OwnerFK equals owner.OwnerID
		        select new { owner.Name, owner.Age, car.Model, car.YearOfModel };
* With custom entity class for resulted set of fields using SQL query:

		string query = @"select owner.Name as OwnerName,
		                        car.Model ,
		                        car.YearOfModel ,
		                        car.RegistrationNumber ,
		                        car.CarID
		                 from Cars as car
		                 join CarOwners as owner
		                 on car.OwnerFK = owner.OwnerID";
		
		var queryResult = context.Get<CarCustomInfo>(query);

	Where:

		[SuppressSchemaGeneration]
		public class CarCustomInfo
		{
		    [Key]
		    public long CarID { get; set; }
		    public string Model {get; set;}
		    public DateTime YearOfModel { get; set; }
		    public string RegistrationNumber { get; set; }
		    public string OwnerName { get; set; }
		    public int OwnerAge { get; set; }
		}

# See Also

 * [CRUD Operations Overview]({%slug datastorage-crudoperationsoverview%})
