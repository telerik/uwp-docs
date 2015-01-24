---
title: Custom Animations
page_title: Custom Animations
description: Custom Animations
slug: busyindicator-customanimations
tags: custom,animations
published: True
position: 2
---

# Custom Animations

Besides the out-of-the-box animations, you can create your own animations and integrate them with RadBusyIndicator. To do so, you need to create a style that targets the BusyIndicatorAnimation type and define a ControlTemplate that contains the animation. You can then set the already defined style to the IndicatorAnimationStyle property exposed by RadBusyIndicator.

Technically, RadBusyIndicator hosts its animation in a control which is part of its ControlTemplate. In order to apply a custom animation, you will need to define a style for this control and set a new ControlTemplate containing the custom visuals that will be animated. This ControlTemplate should meet two requirements:

* Give the **"PART_LayoutRoot"** name of the root element of the template's visual tree.

* Define the storyboard that will animate the visuals in the Resources dictionary of the root element and give the resource a key named **"PART_Animation"**

The following XAML code gives an example of how an animation providing style could be defined:

	<Style x:Key="DefaultIndicatorAnimation" TargetType="telerikPrimitivesBusyIndicator:BusyIndicatorAnimation">
		<Setter Property="Template">
			<Setter.Value>
				<ControlTemplate>
					<Grid VerticalAlignment="Center" x:Name="PART_LayoutRoot">
						<Grid.Resources>
							<Storyboard x:Name="PART_Animation">
								<DoubleAnimation From="0" To="359" Duration="0:0:1" RepeatBehavior="Forever" Storyboard.TargetName="LoadingVisualAngleTransform" Storyboard.TargetProperty="Angle" />
							</Storyboard>
						</Grid.Resources>
						<Grid.RowDefinitions>
							<RowDefinition />
						</Grid.RowDefinitions>
						<Grid Width="45" Height="45" Grid.Row="0" x:Name="LoadingVisual" RenderTransformOrigin="0.5,0.5" HorizontalAlignment="Center">
							<Grid.RenderTransform>
								<TransformGroup>
									<RotateTransform x:Name="LoadingVisualAngleTransform" Angle="0" CenterX="0.5" CenterY="0.5" />
								</TransformGroup>
							</Grid.RenderTransform>
							<Path Stretch="Fill" Stroke="#00BDD2" StrokeThickness="5" StrokeStartLineCap="Round" Data="M1,0 A1,1,90,1,1,0,-1" />
							<Path Margin="0,-5,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" Width="10" Height="15" Stretch="Fill" Fill="#00BDD2" Data="M0,-1.1 L0.1,-1 L0,-0.9" StrokeThickness="1" />
						</Grid>
					</Grid>
				</ControlTemplate>
			</Setter.Value>
		</Setter>
	</Style>