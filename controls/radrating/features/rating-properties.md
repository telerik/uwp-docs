---
title: Properties
page_title: Properties
description: Properties
slug: rating-properties
tags: properties
published: True
position: 0
---

# Properties

This article explains the usage of the different properties of RadRating.

## 

* **IsReadOnly**: When RadRating is used for displaying a rating that is already created
(for example by the votes so far) or just a user has already voted and we don't want to allow them change their vote,
the property IsReadOnly can be set to true, which would cause the control to disregard any future gestures.
* **Orientation**: Changing this property will change the position of the rating items
and the way of applying the partial filling of selected items.
* **RatingDisplayPrecision**: Sometimes the rating doesn't need to be exact
and we might not want to see only part of the items marked, then the RatingDisplayPrecision property comes in hand.
There are 3 supported modes:
	* **Exact**: the displayed rating will be the same as the actual rating and no rounding will be applied. This is the default value.
	* **Half**: the displayed rating will be rounded, so that each item is fully marked as selected, only half of it will be selected, or it will not be selected at all.
	* **Item**: the displayed rating will be rounded, so that each item is either selected, or not.
* **RatingSelectionMode**: RadRating provides two types of RatingSelectionMode, which specify the way to display the rating:
	* **Single**: Only one of the rating items, the one representing the current value of the rating, is visualized as selected.
	* **Continuous**: All the items from the first to the one representing the current value of the rating are visualized as selected. This is the default value.
* **IsPanEnabled**: By default the gestures that are recognized as giving rating are "tap" and "pan". However, by setting the property IsPanEnabled to false, the rating will be limited only to the tap gesture.