---
title: How to Reverse RadBulletGraph Scale
page_title: How to Reverse RadBulletGraph Scale
description: Check our &quot;How to Reverse RadBulletGraph Scale&quot; documentation article for RadBulletGraph for UWP control.
slug: bulletgraph-how-to-reverse-scale
tags: how,to,reverse,radbulletgraph,scale
published: True
position: 0
---

# How to Reverse RadBulletGraph Scale

RadBulletGraph allows you to render a reverse scale (right to left). This can be useful when the defined satisfactory area is close to the StartValue. To render a reverse scale, set the **FlowDirection** property to **RightToLeft**.

Another way to display such data is to change the StartValue and the current value of the FeaturedMeasure indicator.

	<telerik:RadBulletGraph Orientation="Horizontal" FeaturedMeasureStartValue="0" EndValue="175" TickStep="25" LabelStep="25" LabelOffset="15" FeaturedMeasure="50" ComparativeMeasure="100"/>


