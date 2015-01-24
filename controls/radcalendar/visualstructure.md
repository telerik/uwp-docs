---
title: Visual Structure
page_title: Visual Structure
description: Visual Structure
slug: radcalendar-visualstructure
tags: visual,structure
published: True
position: 2
---

# Visual Structure

The following topic describes all the visual elements and terms used in a standard **RadCalendar** control.

## Visual Structure

![Calendar-Visual Structure](images/Calendar-VisualStructure.png)

## Legend

* **SelectedCell**: This is the currently focused cell.
* **CurrentCell**: This is the currently focused cell.
* **BlackoutCells**: These are cells that can not be selected.

### Views ###

The **RadCalendar** control has four view modes:

* **MonthView**: the user can select a day from the currently displayed month.
* **YearView**: the user can navigate to a month from the currently displayed year. 
* **DecadeView**: the user can navigate to a year from the currently displayed decade.
* **CenturyView**: the user can navigate to a decade from the currently displayed century.

Switching to upper view is done through the **Navigation control**, and to lower view - by selecting item in the current view.

### NavigationControl ###

Through the Navigation control the user can easily switch between the different views(or swipe gesture as well): It contains the following controls:
        

* **Header**: Clicking on the Header navigates to upper view: MonthView -> YearView -> DecadeView -> CenturyView.
* **Previous/NextButton**: change the currently displayed:
	* Month: in MonthView
	* Year: in YearView
	* Decade: in DecadeView
	* Century: in CenturyView