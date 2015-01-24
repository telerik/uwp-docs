---
title: Bind a DateTime Instance to Calendar SelectedDateRange Property
page_title: Bind a DateTime Instance to Calendar SelectedDateRange Property
description: Bind a DateTime Instance to Calendar SelectedDateRange Property
slug: radcalendar-calendardatetosingledaterangeconverter
tags: bind,a,datetime,instance,to,calendar,selecteddaterange,property
published: True
position: 3
---

# Bind a DateTime Instance to Calendar SelectedDateRange Property

This article demonstrates how to bind a DateTime instance to calendar property of type
CalendarDateRange using the **CalendarDateToSingleDateRangeConverter**.
The converter creates a DateTime object as it takes the SartDate of a CalendarDateRange object,
or creates a CalendarDateRange with StartDate and EndDate set to the DateTime object.

The calendar will be used in Single SelectionMode and its SelectedDateRange property
will be bound to a DateTime property of the view model.


1. First, let's create a sample ViewModel class that has a property of type DateTime:

		public class ViewModel : ViewModelBase
		{
		    private DateTime date;
		
		    public ViewModel()
		    {
		        this.Date = DateTime.Today;
		    }
		
		    public DateTime Date
		    {
		        get
		        {
		            return this.date;
		        }
		
		        set
		        {
		            if (this.date != value)
		            {
		                this.date = value;
		                this.OnPropertyChanged();
		            }
		        }
		    }
		}

	Set the DataContext of the Page ot an instance of the ViewModel class:
		
		<Page.DataContext>
		    <local:ViewModel/>
		</Page.DataContext>

1. Then create an instance of the CalendarDateToSingleDateRangeConverter.

		<Page.Resources>
		    <telerikCalendar:CalendarDateToSingleDateRangeConverter x:Key="converter"/>
		</Page.Resources>

	Where

		xmlns:telerikCalendar="using:Telerik.UI.Xaml.Controls.Input.Calendar"


1. Finally, bind the SelectedDateRange to the Date property of the ViewModel using the converter:

		<telerikInput:RadCalendar SelectedDateRange="{Binding Date, Converter={StaticResource converter}, Mode=TwoWay}" SelectionMode="Single"/>