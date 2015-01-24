---
title: Customizations
page_title: Customizations
description: Customizations
slug: rating-customizations
tags: customizations
published: True
position: 2
---

# Customizations

This article explains how the shape of the rating items can be customized.

#### Empty State

* **EmptyIconContent**: Gets or sets the content of the RadRatingItem icon when the item is not selected.
* **EmptyIconStyle**: Gets or sets the style of the RadRatingItem icon content when the item is not selected.
* **EmptyIconContentTemplate**: Gets or sets the content template of the RadRatingItem when the item is not selected.
* 
#### Filled State

* **FilledIconContent**: Gets or sets the content of the RadRatingItem icon when the item is selected.
* **FilledIconStyle**: Gets or sets the style of the RadRatingItem icon content when the item is selected.
* **FilledIconContentTemplate**: Gets or sets the content template of the RadRatingItem when the item is selected.

#### Highlighted State

* **HighlightedIconStyle**: Gets or sets the style of the RadRatingItem icon content in highlighted state.

## Example

	<telerikInput:RadRating Value="2">
	    <telerikInput:RadRating.EmptyIconContentTemplate>
	        <DataTemplate>
	            <SymbolIcon Symbol="Dislike" />
	        </DataTemplate>
	    </telerikInput:RadRating.EmptyIconContentTemplate>
	    <telerikInput:RadRating.FilledIconContentTemplate>
	        <DataTemplate>
	            <SymbolIcon Symbol="Like" />
	        </DataTemplate>
	    </telerikInput:RadRating.FilledIconContentTemplate>
	</telerikInput:RadRating>

Here is the result:Highlighted

![Rating-Customizations](images/Rating-Customizations.png)
