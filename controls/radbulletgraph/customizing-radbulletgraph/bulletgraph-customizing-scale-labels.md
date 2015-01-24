---
title: Customizing Scale Labels
page_title: Customizing Scale Labels
description: Customizing Scale Labels
slug: bulletgraph-customizing-scale-labels
tags: customizing,scale,labels
published: True
position: 0
---

# Customizing Scale Labels

RadBulletGraph gives you the ability to control any aspect of its scale labels - from their position to their appearance and interval.

## Label Display Interval

You can set the display interval of labels  using **LabelStep**. Setting it will display labels only on specific intervals.

	<telerik:RadBulletGraph LabelStep="25" />

## Label Display Offset

Labels can be positioned in a relative matter below or above the FeaturesMeasure indicator using **LabelOffset**.

	<telerik:RadBulletGraph LabelOffset="20" />

## Styling Labels

Use **LabelTemplate** to make the RadBulletGraph’s  labels fully customizable.

	<telerik:RadBulletGraph>
		<telerik:RadBulletGraph.LabelTemplate>
			<DataTemplate>
				<Rectangle Width="2" Height="6" Fill="#999999" />
			</DataTemplate>
		</telerik:RadBulletGraph.LabelTemplate>
	</telerik:RadBulletGraph>