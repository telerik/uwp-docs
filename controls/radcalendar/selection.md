---
title: Selection
page_title: Selection
description: Selection
slug: radcalendar-selection
tags: selection
published: True
position: 4
---

# Selection

## SelectionMode

When the DisplayMode of the **RadCalendar** control is set to MonthView,
the user can make selection of cells. To enable selection, the **SelectionMode**
property of the calendar should be set to **Single** or **Multiple**.

* In **Single** selection mode only one cell could be selected at a time.
* In **Multiple** selection mode multiple cells/cell ranges could be selected.
* In **None** selection mode the selection is disabled.

## Making Selection

Single cell is selected by clicking/tapping on it. If the cell is focused, then hitting the `ENTER` button will select it.

In Multiple selection mode you have to click/hold on the cell where the selection starts
and drag to the end cell you want to be selected. This way you may add as many selections
as you want to the current selectoin. When you hold on a cell in touch mode you will see
an indicator, showing when you are ready to drag, see the image below:

![Calendar-Hold Indicator](images/Calendar-HoldIndicator.png)

## Properties

* **SelectedDateRange** (CalendarDateRange?): Gets or sets the first date range in the current selection or returns null if the selection is empty.
Setting this property in a calendar that supports multiple selections clears existing selected ranges and sets the selection to the range specified.


* **SelectedDateRanges** (CalendarDateRangeCollection): Holds a collection of all selection ranges.

## Events

* **SelectionChanged** (event): Raised when the selection of the calendar is changed.

