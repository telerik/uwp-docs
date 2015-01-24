---
title: PictureRotatorHubTile
page_title: PictureRotatorHubTile
description: PictureRotatorHubTile
slug: radhubtile-radpicturerotatorhubtile
tags: picturerotatorhubtile
published: True
position: 3
---

# PictureRotatorHubTile

The **RadPictureRotatorHubTile** displays a set of pictures showing them one at a time over a time interval.

## Properties 

Here's a list of the RadPictureRotatorHubTile properties:

* **PicturesSource** (IEnumerable): Gets or sets the source that contains the pictures to display on a RadPictureRotator HubTile. Pictures are randomly chosen from this collection of image URIs when an image needs to be displayed.
* **PictureSourceProvider** (IImageSourceProvider): Gets or sets the implementation that is used to provide a custom image source resolution routine.	

### PicturesSource Example

The following example shows how to use the **PicturesSource** property with five pictures from an "Images" folder in the project:

	<telerik:RadPictureRotatorHubTile x:Name="MyHubTile"  PicturesSource="{Binding}"/>

Code behind:

	private const string AbsolutePath = "ms-appx:///Images/";
	public MainPage()
	{
	    this.InitializeComponent();
	
	    List<BitmapImage> pictures = new List<BitmapImage>();
	    for (int i = 1; i <= 5; i++)
	    {
	        pictures.Add(new BitmapImage(new Uri(AbsolutePath + "MyPicture" + i + ".png", UriKind.Absolute)));
	    }
	    MyHubTile.PicturesSource = pictures;
	}

### PictureSourceProvider Example

The following example shows how to use the **PictureSourceProvider** property where we have added our pictures in the "Images" folder in the project:

1. Implement a ViewModel class where we will keep the picture names:
1. Implement the MyPictureProvider class which inherits from the IImageSourceProvider interface to get the image URIs:
	
		public class MyPictureProvider : IImageSourceProvider
		{
		    public ImageSource GetImageSource(object parameter)
		    {
		        return new BitmapImage(new Uri("ms-appx:///Images/" + (parameter as ViewModel).ImagePath, UriKind.Absolute));
		    }
		}

1. Put the pictures in a list:

		List<ViewModel> pictures = new List<ViewModel>()
		{
			new ViewModel{ImagePath="MyPicture1.png"},
			new ViewModel{ImagePath="MyPicture2.png"},
			new ViewModel{ImagePath="MyPicture3.png"},
			new ViewModel{ImagePath="MyPicture4.png"},
			new ViewModel{ImagePath="MyPicture5.png"}
		};
		
		this.MyHubTile.DataContext = pictures;

1. Consume the collection of image URIs:

		<telerik:RadPictureRotatorHubTile x:Name="MyHubTile"  PicturesSource="{Binding}" >
		    <telerik:RadPictureRotatorHubTile.PictureSourceProvider>
		        <local:MyPictureProvider />
		    </telerik:RadPictureRotatorHubTile.PictureSourceProvider>
		</telerik:RadPictureRotatorHubTile>