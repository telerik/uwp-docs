---
title: Define and Use Custom Chart Palette
page_title: Define and Use Custom Chart Palette
description: Define and Use Custom Chart Palette
slug: radchart-custompalette
tags: define,and,use,custom,chart,palette
published: True
position: 0
---

# Define and Use Custom Chart Palette



When a user needs to define custom sets of colors, they can take advantage of Custom Palettes. This can be done in either code-behind or XAML.Define a Palette in Code-behind

Create a static class to define a custom palette instance.

{{region CustomPalette}}
	    public class CustomPalettes
	    {
	        static CustomPalettes()
	        {
	            CreateCustomDarkPalette();
	        }
	
	        private static void CreateCustomDarkPalette()
	        {
	            ChartPalette palette = new ChartPalette() { Name = "CustomDark" };
	
	            // fill
	            palette.FillEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 40, 152, 228)));
	            palette.FillEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 255, 205, 0)));
	            palette.FillEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 255, 60, 0)));
	            palette.FillEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 210, 202, 202)));
	            palette.FillEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 67, 67, 67)));
	            palette.FillEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 0, 255, 156)));
	            palette.FillEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 109, 49, 255)));
	            palette.FillEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 0, 178, 161)));
	            palette.FillEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 109, 255, 0)));
	            palette.FillEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 255, 128, 0)));
	
	            // stroke
	            palette.StrokeEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 96, 194, 255)));
	            palette.StrokeEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 255, 225, 122)));
	            palette.StrokeEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 255, 108, 79)));
	            palette.StrokeEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 229, 229, 229)));
	            palette.StrokeEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 84, 84, 84)));
	            palette.StrokeEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 0, 255, 156)));
	            palette.StrokeEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 130, 79, 255)));
	            palette.StrokeEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 69, 204, 191)));
	            palette.StrokeEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 185, 255, 133)));
	            palette.StrokeEntries.Brushes.Add(new SolidColorBrush(Color.FromArgb(255, 255, 175, 94)));
	
	            CustomDark = palette;
	        }
	
	        public static ChartPalette CustomDark { get; private set; }
	
	    }
	{{endregion}}



Set the chart palette to your custom defined one.

{{region CustomPalette}}
	            this.chart.Palette = CustomPalettes.CustomDark;
	{{endregion}}

Define a Palette in XAML

Define a custom palette instance in your resources.

{{region CustomPaletteResource}}
	        <telerik:ChartPalette x:Key="CustomPalette">
	            <telerik:ChartPalette.FillEntries>
	                <telerik:PaletteEntryCollection>
	                    <SolidColorBrush Color="Green"></SolidColorBrush>
	                    <SolidColorBrush Color="Gray"></SolidColorBrush>
	                    <SolidColorBrush Color="Blue"></SolidColorBrush>
	                    <SolidColorBrush Color="Red"></SolidColorBrush>
	                </telerik:PaletteEntryCollection>
	            </telerik:ChartPalette.FillEntries>
	            <telerik:ChartPalette.StrokeEntries>
	                <telerik:PaletteEntryCollection>
	                    <SolidColorBrush Color="LightGreen"></SolidColorBrush>
	                    <SolidColorBrush Color="LightGray"></SolidColorBrush>
	                    <SolidColorBrush Color="LightBlue"></SolidColorBrush>
	                    <SolidColorBrush Color="OrangeRed"></SolidColorBrush>
	                </telerik:PaletteEntryCollection>
	            </telerik:ChartPalette.StrokeEntries>
	        </telerik:ChartPalette>
	{{endregion}}



Set the chart palette to your custom defined one.

{{region CustomPaletteReference}}
	        <telerik:RadCartesianChart x:Name="chart" Palette="{StaticResource CustomPalette}"/>
	{{endregion}}


