---
title: Display Custom Event Information in Calendar Cells
page_title: Display Custom Event Information in Calendar Cells
description: Display Custom Event Information in Calendar Cells
slug: radcalendar-customeventinformation
tags: display,custom,event,information,in,calendar,cells
published: True
position: 2
---

# Display Custom Event Information in Calendar Cells

This article demonstrates how to style specific calendar cells with events, so that additional information about events
is displayed.

First we will create two classes for the events information:

* **EventInfo** class that holds information about the events:

		public class EventInfo
		{
		    public DateTime Date { get; set; }
		
		    public string Title { get; set; }
		
		    public string Details { get; set; }
		}

* **ViewModel** class that creates list of events for the data context of the calendar:

		public class ViewModel
		{
		    public ViewModel()
		    {
		        this.CreateEvents();
		    }
		
		    private void CreateEvents()
		    {
		        List<EventInfo> data = new List<EventInfo>();
		        data.Add(new EventInfo() { Date = DateTime.Today.AddDays(2), Title = "Some Event", Details = "Some Details..." });
		        data.Add(new EventInfo() { Date = DateTime.Today.AddDays(3), Title = "Other Event", Details = "Other Details..." });
		        this.Events = data;
		    }
		
		    public List<EventInfo> Events { get; set; }
		}

And we have to set the page data context to the ViewModel class:

	<Page.DataContext>
	    <local:ViewModel />
	</Page.DataContext>

Now the key part is to retrieve the events information from the calendar DataContext (set to ViewModel).
For the purpose we create custom class that inherits from the IValueConverter class and in the Convert method we return the information
about the event we want to be displayed in the TextBlock binding in calendar cells with events:

	public class CellModelToEventConverter : IValueConverter
	{
	    public object Convert(object value, Type targetType, object parameter, string language)
	    {
	        var cellModel = value as CalendarCellModel;
	
	        // Get a reference to the calendar container
	        var calendar = cellModel.Presenter as RadCalendar;
	
	        // Then you can get a reference to its DataContext (i.e. the page view model that holds the event information)
	        var events = (calendar.DataContext as ViewModel).Events;
	
	        // return custom label for event cells
	        var eventInfo = events.Where(e => e.Date == cellModel.Date).FirstOrDefault();
	        if (eventInfo != null)
	        {
	            return eventInfo.Title;
	        }
	
	        // return default label for regular cells
	        return cellModel.Label;
	    }
	
	    public object ConvertBack(object value, Type targetType, object parameter, string language)
	    {
	        throw new NotImplementedException();
	    }
	}

We also have to create a CustomStyleSelector class to set the CellTemplate of the cells holding the events:

	public class CustomStyleSelector : CalendarCellStyleSelector
	{
	    public DataTemplate EventTemplate { get; set; }
	
	    protected override void SelectStyleCore(CalendarCellStyleContext context, Telerik.UI.Xaml.Controls.Input.RadCalendar container)
	    {
	        var events = (container.DataContext as ViewModel).Events;
	
	        if (events.Where(e => e.Date == context.Date).Count() > 0)
	        {
	            context.CellTemplate = this.EventTemplate;
	        }
	    }
	}

After we have created all the classes we need, we are ready to piece them together in XAML.
In the grid resources we define:

* **CellModelToEventConverter** - retrieves the event infotmation to be displayed in the calendar cells;
* **DataTemplate** - defines the template that will be used by the **CustomStyleSelector** to display the information from the **CellModelToEventConverter**;
* **CustomStyleSelector** - defines a style selector that will be bound to the calendar CellStyleSelector property.

		<Grid.Resources>
		    <local:CellModelToEventConverter x:Key="eventConverter" />
		
		    <DataTemplate x:Key="template">
		        <Grid>
		            <TextBlock Text="⏰" Foreground="#FF3399FF" FontSize="15" HorizontalAlignment="Right" FontFamily="Segoe UI Symbol" Margin="0,1,2,0" />
		            <TextBlock Text="{Binding Converter={StaticResource eventConverter}}" Foreground="#FF767676" FontSize="13.333" VerticalAlignment="Bottom" Margin="6,0,0,4" />
		        </Grid>
		    </DataTemplate>
		
		    <local:CustomStyleSelector x:Key="selector" EventTemplate="{StaticResource template}" />
		</Grid.Resources>

Finally we define our calendar:

	<telerik:RadCalendar CellStyleSelector="{StaticResource selector}" Width="700" Height="400" />

And this is the result:

![Display Custom Event Info In Cells](images/DisplayCustomEventInfoInCells.png)
