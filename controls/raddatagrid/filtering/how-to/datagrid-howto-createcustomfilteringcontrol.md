---
title: Create Custom Filtering Control
page_title: Create Custom Filtering Control
description: Create Custom Filtering Control
slug: datagrid-filtering-howto-createcustomfilteringcontrol
tags: create,custom,filtering,control
published: True
position: 0
---

# Create Custom Filtering Control

In this help article, we will demonstrate how to create a custom filter control, in order
to replace the default filtering UI. Using this technique, we can customize the appearance
of the filtering UI, associate it with another properties from the Model or apply filter
descriptors that differ from the default ones.

In this example we will create a filter control that will be applied to a text column
displaying enumeration values. The user could choose which enumeration values will be displayed
by checking a set of CheckBoxes. This will be the final look of the control:

![Custom Filter Control](images/CustomFilterControl.png)

The following steps will guide you through the implementation of the custom filtering UI:

## 1. View Model

First let us prepare a view model class that will be used as a DataContext of the grid and fill it with sample data.

	public enum EyeColor
	{
	    Green, Blue, Black, Brown
	}
	
	public class Data
	{
	    public string Name { get; set; }
	
	    public EyeColor EyeColor { get; set; }
	}
	
	public class ViewModel
	{
	    public ViewModel()
	    {
	        this.Data = new ObservableCollection<Data>()
	        {
	            new Data { Name = "Peter", EyeColor = EyeColor.Black },
	            new Data { Name = "Erik", EyeColor = EyeColor.Green },
	            new Data { Name = "Smith", EyeColor = EyeColor.Blue },
	            new Data { Name = "Ken", EyeColor = EyeColor.Brown },
	            new Data { Name = "Sam", EyeColor = EyeColor.Blue },
	            new Data { Name = "Harry", EyeColor = EyeColor.Green },
	            new Data { Name = "Tom", EyeColor = EyeColor.Green },
	            new Data { Name = "John", EyeColor = EyeColor.Black },
	            new Data { Name = "Mark", EyeColor = EyeColor.Brown },
	        };
	    }
	
	    public ObservableCollection<Data> Data { get; set; }
	}

Now, let us set an instance of the ViewModel class as DataContext of the Page:
	
	<Page.DataContext>
	    <local:ViewModel/>
	</Page.DataContext>

## 2. Custom Filter Control

We have to define a class that implements the **IFilterControl** interface, and it will be a base class for the custom filter control:

	public abstract class BaseFilterControl : UserControl, IFilterControl
	{
	    public string PropertyName { get; set; }
	
	    public FilterDescriptorBase AssociatedDescriptor { get; set; }
	
	    public bool IsFirst { get; set; }
	
	    public abstract FilterDescriptorBase BuildDescriptor();
	
	    protected abstract void Initialize();
	}

We are ready to define our custom filter control. It has a ListView that will contain CheckBoxes for all available EyeColor options - we have achieved that by setting custom template to the ListView items.

	<local:BaseFilterControl
	    x:Class="DemoApp.DataGrid.Filtering.HowTo.CreateCustomFilterControl.ColorFilterControl"
	    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
	    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
	    xmlns:local="using:DemoApp.DataGrid.Filtering.HowTo.CreateCustomFilterControl"
	    xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
	    xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
	    mc:Ignorable="d"
	    d:DesignHeight="300"
	    d:DesignWidth="400">
	
	    <ListView x:Name="checkBoxContainer" SelectionMode="None">
	        <ListView.ItemTemplate>
	            <DataTemplate>
	                <CheckBox Content="{Binding Color}" IsChecked="{Binding IsChecked, Mode=TwoWay}"
	                          HorizontalAlignment="Left" Margin="10,5,10,5"/>
	            </DataTemplate>
	        </ListView.ItemTemplate>
	    </ListView>
	</local:BaseFilterControl>

Let's see the code behind:

	public sealed partial class ColorFilterControl : BaseFilterControl
	{
	    private DelegateFilterDescriptor filterDescriptor;
	
	    public ColorFilterControl(DelegateFilterDescriptor filterDescriptor)
	    {
	        this.InitializeComponent();
	        this.filterDescriptor = filterDescriptor ?? new DelegateFilterDescriptor { Filter = new ColorFilter() };
	        this.checkBoxContainer.ItemsSource = (this.filterDescriptor.Filter as ColorFilter).Colors;
	    }
	
	    public override FilterDescriptorBase BuildDescriptor()
	    {
	        return this.filterDescriptor;
	    }
	
	    protected override void Initialize()
	    {
	        // This method is called just before the control is vizualized.
	        // Here you can put additional logic that will be executed
	        // before the initialization of the control. 
	    }
	}

Next, we will describe all the classes used in the **ColorFilterControl** class.

First, the control has a private property **filterDescriptor** which will be used as a filter descriptor of the control. You can read more about the **DelegateFilterDescriptor** class [here]({%slug datagrid-filtering-delegatefilterdescriptor%}). The **Filter** property of the filterDescriptor is set to a custom class that implements the IFilter interface.
Let us take a look at the implementation of the **ColorFilter** class:

	public class ColorFilter : IFilter
	{
	    private ObservableCollection<CheckBoxColor> colors;
	
	    public ColorFilter()
	    {
	        this.colors = new ObservableCollection<CheckBoxColor>();
	        foreach (var color in Enum.GetValues(typeof(EyeColor)))
	        {
	            this.colors.Add(new CheckBoxColor { Color = (EyeColor)color, IsChecked = false });
	        }
	    }
	
	    public ObservableCollection<CheckBoxColor> Colors
	    {
	        get { return colors; }
	    }
	
	    public bool PassesFilter(object item)
	    {
	        return colors.Where(x => x.Color == (item as Data).EyeColor).FirstOrDefault().IsChecked;
	    }
	}

The ColorFilter has a collection of **CheckBoxColor** items. This is a custom class that is used by the checkboxes when binding their Content and IsChecked properties. This is why the class should implement the INotifyPropertyChanged interface.

	public class CheckBoxColor : INotifyPropertyChanged
	{
	    private bool isChecked;
	    private EyeColor color;
	
	    public event PropertyChangedEventHandler PropertyChanged;
	
	    public EyeColor Color
	    {
	        get { return this.color; }
	
	        set { this.color = value; }
	    }
	
	    public bool IsChecked
	    {
	        get { return this.isChecked; }
	        set
	        {
	            if (this.isChecked != value)
	            {
	                this.isChecked = value;
	                OnPropertyChanged("IsChecked");
	            }
	        }
	    }
	
	    protected void OnPropertyChanged(string name)
	    {
	        PropertyChangedEventHandler handler = PropertyChanged;
	        if (handler != null)
	        {
	            handler(this, new PropertyChangedEventArgs(name));
	        }
	    }
	}

The **PassesFilter** method of the **ColorFilter** class takes the parameter's EyeColor and
checks if the corresponding item from the colors collection has its property IsChecked set to *true*.

Let us go back to the **ColorFilterControl** and take a look
at the constructor of the class. It takes a parameter of type ColorFilterDescriptor
and if the parameter is null, then a new descriptor is created. The whole information
about the state of the checkboxes is contained in the filter descriptor (particularly
in the colors collection of its Filter property). Thus if we pass the previously used
filter descriptor as a parameter to the newly created control, we actually retain the
"state" of the control.


## 3. Custom FilterButtonTap Command

Finally, we have to create a custom FilterButtonTap command in order to use the ColorFilterControl we have just created. We will create a help class thet will mark which columns of the grid require custom filtering by using attached property:

	public class ColumnMarker
	{
	    public static bool GetRequiresCustomFiltering(DependencyObject obj)
	    {
	        return (bool)obj.GetValue(RequiresCustomFilteringProperty);
	    }
	
	    public static void SetRequiresCustomFiltering(DependencyObject obj, bool value)
	    {
	        obj.SetValue(RequiresCustomFilteringProperty, value);
	    }
	
	    public static readonly DependencyProperty RequiresCustomFilteringProperty =
	        DependencyProperty.RegisterAttached("RequiresCustomFiltering", typeof(bool), typeof(ColumnMarker), new PropertyMetadata(false));
	}

Here is the implementation of the custom command:

	public class CustomFilterButtonTapCommand : DataGridCommand
	{
	    public CustomFilterButtonTapCommand()
	    {
	        this.Id = CommandId.FilterButtonTap;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as FilterButtonTapContext;
	        if (ColumnMarker.GetRequiresCustomFiltering(context.Column))
	        {
	            context.FirstFilterControl = new ColorFilterControl(context.AssociatedDescriptor as DelegateFilterDescriptor)
	            {
	                PropertyName = "EyeColor",
	                DataContext = context.AssociatedDescriptor
	            };
	
	            context.SecondFilterControl = null;
	        }
	        this.Owner.CommandService.ExecuteDefaultCommand(CommandId.FilterButtonTap, context);
	    }
	}

The most important part is that in the **Execute** method we create a ColorFilterControl that takes the AssociatedDescriptor of the context as a parameter.
Thus we reuse the already created filter descriptor from the previous filtering (if such exists).


## 4. Define RadDataGrid

Finally, we can define our RadDatGrid. Do not forget to set the **RequiresCustomFiltering** column property for the columns that will use the custom filter.

	<telerikGrid:RadDataGrid Width="300" AutoGenerateColumns="False" Height="500" ItemsSource="{Binding Data}">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTextColumn PropertyName="Name"/>
	        <telerikGrid:DataGridTextColumn PropertyName="EyeColor" Header="Eye Color" local:ColumnMarker.RequiresCustomFiltering="True"/>
	    </telerikGrid:RadDataGrid.Columns>
	    <telerikGrid:RadDataGrid.Commands>
	        <local:CustomFilterButtonTapCommand/>
	    </telerikGrid:RadDataGrid.Commands>
	</telerikGrid:RadDataGrid>