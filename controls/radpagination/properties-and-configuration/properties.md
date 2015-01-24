---
title: Pagination
page_title: Pagination
description: Pagination
slug: radpagination-properties
tags: pagination
published: True
position: 0
---

# Pagination

This help article shows how to change properties of the RadPagination control.

* **PageProvider** (Selector): Gets or sets the current instance targeted by this pagination control.
* **DisplayMode**: Gets or sets a value that indicates which parts of the control are currently visible. The available values are:
	* Arrows  
![Arrows](images/Arrows.png)
	* ArrowsAndIndex  
![Arrows And Index](images/ArrowsAndIndex.png)
	* ArrowsAndThumbnails  
![Arrows And Thumbnails](images/ArrowsAndThumbnails.png)
	* IndexLabel  
![Index Label](images/IndexLabel.png)
	* Thumbnails  
![Thumbnails](images/Thumbnails.png)
	* ThumbnailsAndIndex  
![Thumbnails And Index](images/ThumbnailsAndIndex.png)
* **ListItemTemplate** (DataTemplate): Gets or sets the instance that defines the appearance of the items within the list control.

	###### Example

	The following example shows how to bind the RadPagination.ListItems property to the items of a FlipView.

	Here is the code behind:

		public class ViewModel
		{
		    public object ImagePath { get; set; }
		}
	
		public MainPage()
		{	
		    this.InitializeComponent();
		    List<ViewModel> pictures = new List<ViewModel>()
		    {
		        new ViewModel{ImagePath="MyPicture1.png"},
		        new ViewModel{ImagePath="MyPicture2.png"},
		        new ViewModel{ImagePath="MyPicture3.png"},
		        new ViewModel{ImagePath="MyPicture4.png"},
		        new ViewModel{ImagePath="MyPicture5.png"}
		
		    };
	
		    MyFlipview.ItemsSource = pictures;
		}

	And here is the XAML code:

		<FlipView x:Name="MyFlipview" Height="200" Width="500" >
		    <FlipView.ItemTemplate>
		        <DataTemplate>
		            <Image Source="{Binding ImagePath}"/>
		        </DataTemplate>
		    </FlipView.ItemTemplate>
		</FlipView>
		<telerik:RadPaginationControl x:Name="pagination"  Height="75" Margin="300"  PageProvider="{Binding ElementName=MyFlipview}">
		    <telerik:RadPaginationControl.ListItemTemplate>
		        <DataTemplate>
		            <ContentControl>
		                <Image Source="{Binding ImagePath}"/>
		            </ContentControl>
		        </DataTemplate>
		    </telerik:RadPaginationControl.ListItemTemplate>
		</telerik:RadPaginationControl>
	
	Result:
	![Pagination Items Control Template Example](images/PaginationItemsControlTemplateExample.png)

* **LeftArrowTemplate** (DataTemplate): Gets or sets the instance that defines the appearance of the left arrow of the control.
	###### Example

		<telerik:RadPaginationControl.LeftArrowTemplate>
		    <DataTemplate>
		        <ContentControl>
		            <TextBlock>
		                    Previous
		            </TextBlock>
		        </ContentControl>
		    </DataTemplate>
		</telerik:RadPaginationControl.LeftArrowTemplate>
	
	![Left Arrow Template](images/LeftArrowTemplate.png)

* **RightArrowTemplate** (DataTemplate): Gets or sets the instance that defines the appearance of the right arrow of the control.