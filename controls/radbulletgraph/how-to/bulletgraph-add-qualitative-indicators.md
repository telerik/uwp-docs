---
title: How to Define Qualitative Indicators
page_title: How to Define Qualitative Indicators
description: How to Define Qualitative Indicators
slug: bulletgraph-how-to-add-qualitative-indicators
tags: how,to,define,qualitative,indicators
published: True
position: 1
---

# How to Define Qualitative Indicators

RadBulletGraph supports different colored ranges, usually indicating bad, satisfactory and good areas. You can define different ranges using code as in the following example:

	<telerik:RadBulletGraph EndValue="100">
	    <telerik:RadBulletGraph.QualitativeRanges>
	        <telerik:BarIndicatorSegment Stroke="Red" Thickness="20" Length="30" />
	        <telerik:BarIndicatorSegment Stroke="Orange" Thickness="20" Length="40" />
	        <telerik:BarIndicatorSegment Stroke="Yellow" Thickness="20" Length="30" />
	    </telerik:RadBulletGraph.QualitativeRanges>
	</telerik:RadBulletGraph>

In order to display BarIndicatorSegment you need to set the stroke, thickness and length.
        
