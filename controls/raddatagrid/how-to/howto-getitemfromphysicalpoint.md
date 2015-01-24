---
title: Get Row Item and DataGridCellInfo Item from a Physical Point
page_title: Get Row Item and DataGridCellInfo Item from a Physical Point
description: Get Row Item and DataGridCellInfo Item from a Physical Point
slug: raddatagrid-howto-getitemfromphysicalpoint
tags: get,row,item,and,datagridcellinfo,item,from,a,physical,point
published: True
position: 0
---

# Get Row Item and DataGridCellInfo Item from a Physical Point

The following article shows an example of how to get Row item or DataGridCellInfo item from a physical point.

First, create a RadDataGrid.

	<telerikGrid:RadDataGrid PointerMoved="DataGrid_PointerMoved" />

When the pointer moves, you will get the current Row item and the DataGridCellInfo item through the PointerMoved event.

	private void DataGrid_PointerMoved(object sender, PointerRoutedEventArgs e)
	{
	    var physicalPoint = e.GetCurrentPoint(sender as RadDataGrid);
	    var point = new Point { X = physicalPoint.Position.X, Y = physicalPoint.Position.Y };
	    var row = (sender as RadDataGrid).HitTestService.RowItemFromPoint(point);
	    var cell = (sender as RadDataGrid).HitTestService.CellInfoFromPoint(point);
	}