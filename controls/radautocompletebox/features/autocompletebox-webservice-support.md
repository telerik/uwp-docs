---
title: Filtering Items with Web Service 
page_title: Filtering Items with Web Service 
description: Filtering Items with Web Service 
slug: autocompletebox-webservice-support
tags: filtering,items,with,web,service,
published: True
position: 4
---

# Filtering Items with Web Service 



## 

**RadAutoCompleteBox** provides WebServiceTextSearchProvider class. a specialized filtering provider, for using web services as providers for filtered items. This class allows the application to receive a notification when the input in the control is changed. Then data request to any type of service can be made and when the data is available, a special method exposed by RadAutoCompleteBox can be used to load the information and display it as filtered items.

## Initializing and Using the WebServiceTextSearchProvider

> When using the WebServiceTextSearchProvider, the **ItemsSource** property of the RadAutoCompleteBox becomes irrelevant.

To activate the web service support in RadAutoCompleteBox you should first create an instance of the **WebServiceTextSearchProvider** class and pass it to RadAutoCompleteBox to use it for providing filtered suggestions.

After the provider has been initialized, we need to handle its InputChanged event and perform the request to the web service that will later provide the filtered items. The following code snippet demonstrates how this is done:

	<telerikInput:RadAutoCompleteBox x:Name="autoCompleteBox" Width="200" VerticalAlignment="Top" />

	private WebServiceTextSearchProvider webServiceProvider;
	
	public WebServiceFilterSupport()
	{
	    this.InitializeComponent();
	    
	    this.webServiceProvider = new WebServiceTextSearchProvider();
	    this.autoCompleteBox.InitializeSuggestionsProvider(this.webServiceProvider);
	    
	    this.webServiceProvider.InputChanged += this.OnWebServiceProvider_InputChanged;
	}
	
	private void OnWebServiceProvider_InputChanged(object sender, EventArgs e)
	{
	    // Perform the data request to the remote auto-complete service
	}

After the remote data is delivered the LoadItems() method exposed by the WebServiceTextSearchProvider should be called in order to load the available items:

	private void OnDataDelivered(IEnumerable items)
	{
	    this.webServiceProvider.LoadItems(items);
	}

Calling the LoadItems method will trigger the internal control logic that opens the suggestions drop-down and displays the available items.