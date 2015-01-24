---
title: Change First Day of Week and Calendar Week Rule
page_title: Change First Day of Week and Calendar Week Rule
description: Change First Day of Week and Calendar Week Rule
slug: radcalendar-howtochange-firstdayofweekandcalendarweekrule
tags: change,first,day,of,week,and,calendar,week,rule
published: True
position: 0
---

# Change First Day of Week and Calendar Week Rule

The following article demonstrates how to change the rule that defines the first week of the year, and the first day of the week in order to differ from the default culture settings.
  
First, create a RadCalendar and set its WeekNumbersVisibility to Visible:

	<telerikInput:RadCalendar x:Name="calendar" Height="500" Width="500" WeekNumbersVisibility="Visible" />

Then, create a CultureInfo instance, change its DateTimeFormat.FirstDayOfWeek and DateTimeFormat.CalendarWeekRule to the desired values and set it as a culture of the RadCalendar:

	CultureInfo culture = new CultureInfo("en-US");
	culture.DateTimeFormat.FirstDayOfWeek = DayOfWeek.Wednesday;
	culture.DateTimeFormat.CalendarWeekRule = CalendarWeekRule.FirstFullWeek;
	CultureService.SetCulture(this.calendar, culture);

The result should be:

![Change First Day Of Week And Calendar Week Rule](images/ChangeFirstDayOfWeekAndCalendarWeekRule.png)
