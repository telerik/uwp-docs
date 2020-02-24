---
title: MapUserLayer
page_title: MapUserLayer
description: Check our &quot;MapUserLayer&quot; documentation article for RadMap for UWP control.
slug: radmap-mapuserlayer
tags: mapuserlayer
published: True
position: 2
---

# MapUserLayer

## MapUserLayer Properties

>The **MapShapeLayer** class inherits from the **MapLayer** class - [See the inherited properties]({%slug radmap-layers-overview%}).

The **MapUserLayer** exposes the following properties:

* **ItemsSource** (IEnumerable): Gets or sets the collection of data items to be visualized by the layer.
	> This property has to be bound to a property fromthe view model. The items in the **ItemsSource** could be of any type that has a property of type **Location** that specifies the geographic position where the item will be rendered. If the items are of **MapDataItem** type, the **MapUserLayer** can use them without specifying the **LocationPropertyName** and the **LocationOriginPropertyName**.
* **ItemTemplate** (DataTemplate): Gets or sets the **DataTemplate** that defines the visual representation of each data item present within the **ItemsSource**.
* **ItemTemplateSelector** (DataTemplateSelector): Gets or sets the **DataTemplateSelector** that may be used to provide context-based appearance for each data item within the **ItemsSource**.
* **LocationPropertyName** (string):Gets or sets the name of the property that contains the **GeoSpatial.Location** value for each item in the ItemsSource. The expected return value of the property is of type **Telerik.Geospatial.Location**.
* **LocationOriginPropertyName** (string): Gets or sets the name of the property that defines the origin of the item relative to the Geo Location of the item. A value of (0.5, 0.5) will center the visual representation of each item over its geographical location. The expected return value of the property is of type **Windows.Foundation.Point**.
* **MinZoomPropertyName** (string):Gets or sets the name of the property that contains the minimum zoom level needed for the item to be displayed.
The expected return value of the property is of type **double**.
* **MaxZoomPropertyName** (string): Gets or sets the name of the property that contains the maximum zoom level needed for the item to be displayed.
The expected return value of the property is of type **double**.

## MapDataItem Class

Here are listed the properties exposed by the **MapDataItem** class.

* **MinZoom** (double): Gets or sets the minimum of the zoom range in which the item is visible.
* **MaxZoom** (double): Gets or sets the maximum of the zoom range in which the item is visible.
* **Location** (Location): Gets or sets the geographic location where the item needs to be displayed.
* **LocationOrigin** (Point): Gets or sets a value that defines how the visual representation of the data item is aligned with the physical coordinates of the **Location** property.
The default value of (0.5, 0.5) will center the visual representation over the geographic location.

## Example

Here is an example of how to add a **MapUserLayer** to the **RadMap**. The layer will contain several items and it will visualize their coordinates (longitude, latitude) in a **TextBlock**. Usually the **MapUserLayer** will be used to show additional information to a **MapShapeLayer**, that is why we have added additional **MapShapeLayer** to the map.


1. First, create a view model class that contains a collection of **MapDataItem** objects. The view model will be used as a **DataSource** for the **RadMap** control.

		public class ViewModel
		{
		    public ViewModel()
		    {
		        this.UserShapes = GetData();
		    }
		
		    public ICollection<IMapDataItem> GetData()
		    {
		        var data = new List<IMapDataItem>();
		        for (var i = -180; i <= 180; i += 5)
		        {
		            data.Add(new MapDataItem { Location = new Location(0, i) });
		        }
		
		        return data;
		    }
		
		    public ICollection<IMapDataItem> UserShapes { get; set; }
		}

1. Then add a **MapUserLayer** to the **Layers** collection of the map and bind its **ItemsSource** property to a property of the view model. You also have to define an **ItemTemplate** that will specify how the items will be visualized.

		<telerikMap:RadMap Background="#2EC4FF">
		    <telerikMap:RadMap.DataContext>
		        <local:ViewModel/>
		    </telerikMap:RadMap.DataContext>
		    <telerikMap:RadMap.Layers>
		
		        <telerikMap:MapUserLayer ItemsSource="{Binding UserShapes}">
		            <telerikMap:MapUserLayer.ItemTemplate>
		                <DataTemplate>
		                    <Border BorderThickness="1" Background="#70FFFFFF">
		                        <TextBlock Margin="5">
		                            <Run Text="{Binding Location.Longitude}"/><Run Text="° "/>
		                            <Run Text="{Binding Location.Latitude}"/><Run Text="°"/>
		                        </TextBlock>
		                    </Border>
		                </DataTemplate>
		            </telerikMap:MapUserLayer.ItemTemplate>
		        </telerikMap:MapUserLayer>
		
		        <telerikMap:MapShapeLayer ShapeLabelAttributeName="ADMIN_NAME">
		            <telerikMap:MapShapeLayer.Source>
		                <telerikMap:ShapefileDataSource SourceUriString="ms-appx:///Data/global.shp" DataSourceUriString="ms-appx:///Data/global.dbf"/>
		            </telerikMap:MapShapeLayer.Source>
		            <telerikMap:MapShapeLayer.ShapeColorizer>
		                <telerikMap:DesaturationColorizer BaseColor="#FFBD2E" AttributeName="SQKM_ADMIN" From="1" To="0" RangeCount="10">
		                    <telerikMap:DesaturationColorizer.RangeDistribution>
		                        <telerikMap:LogarithmicRangeDistribution/>
		                    </telerikMap:DesaturationColorizer.RangeDistribution>
		                </telerikMap:DesaturationColorizer>
		            </telerikMap:MapShapeLayer.ShapeColorizer>
		        </telerikMap:MapShapeLayer>
		    </telerikMap:RadMap.Layers>
		</telerikMap:RadMap>

Here is the result:

![Rad Map-Map User Layer](images/RadMap-MapUserLayer.png)

# See Also

 * [Layers Overview]({%slug radmap-layers-overview%})
 * [MapShapeLayer]({%slug radmap-mapshapelayer%})
