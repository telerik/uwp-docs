---
title: App throws exception in Release mode 
page_title: App throws exception in Release mode
description: App throws exception in Release mode
slug: controls-troubleshooting-appthrowsexceptioninreleasemode
tags: exception,release,build
published: True
position: 1
---

# UWP App throws MissingMetadataException or MissingRuntimeArtifactException in Release mode

By default, in Release mode, UWP apps are built using [.NET Native Tool-Chain](http://blogs.msdn.com/b/dotnet/archive/2014/05/09/the-net-native-tool-chain.aspx). One of its functions is to strip all the code, which is not expected to run within the application. While this decreases the app size, it does not take into account the code, which could possibly be invoked with reflection. The platform provides a tool to add the necessary dependencies manually -- the [Runtime Directives Configuration File](https://msdn.microsoft.com/en-us/library/dn600639.aspx)

In UI for Universal Windows Platform, reflection is used in Telerik.Core.BindingExpressionHelper class to call the ToUntypedFunc method. You must add the following entry within the Application element in your Default.rd.xml file:

	<Application>
	  ................. 
	  <Type Name="Telerik.Core.BindingExpressionHelper">
        <MethodInstantiation Name="ToUntypedFunc" Arguments="MyApp.MyDataItem,System.Double" />
	    <MethodInstantiation Name="ToUntypedFunc" Arguments="MyApp.MyDataItem,System.String" />
      </Type>
	</Application>

The above example assumes the following:
 

- The chart is populated by a collection of **MyApp.MyDataItem**


- The series items' values are extracted from a property of MyDataItem class and the type of the property is **double**


- The series items' categories are extracted from a property of MyDataItem class and the type of the property is **string**

You might need to add more directives and/or change the types of the properties. If using DateTimeCategoricalAxis or DateTimeContinuousAxis, it is likely that the categories are of type **DateTime**.  

