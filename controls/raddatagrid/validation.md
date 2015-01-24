---
title: Validation
page_title: Validation
description: Validation
slug: raddatagrid-validation
tags: validation
published: True
position: 5
---

# Validation


## ValidateViewModelBase


 With our DataGrid we have provided easy to use API through the INotifyDataErrorInfo interface and our ValidateViewModelBase class that implements it. So, if a certain property needs certain validation rules it can do with a few lines of code:

	public class Data : ValidateViewModelBase
	{
	    private readonly DateTime maxDate = DateTime.Today.AddDays(10);
	
	    private DateTime date;
	   
	    public DateTime Date
	    {
	        get
	        {
	            return this.date;
	        }
	        set
	        {
	            this.date = value;
	
	            if (this.date > this.maxDate)
	            {
	                this.AddError("StartDate", string.Format("Date cannot be set after {0:d}.", new DateTime()));
	            }
	            else
	            {
	                this.RemoveErrors("StartDate");
	            }
	
	            this.OnPropertyChanged();
	        }
	    }
	}

Doing that will provide RadDataGrid with enough information to trigger validation during editing.

![DataGrid Validation](images/DataGrid-Validation.png)

	public class ViewModel
	{
	    public ViewModel()
	    {
	        this.Items = this.GetData();
	    }
	
	    public ObservableCollection<Data> Items { get; set; }
	
	    private ObservableCollection<Data> GetData()
	    {
	        var data = new ObservableCollection<Data>();
	        for (var i = 0; i < 10; i++)
	        {
	            data.Add(new Data { Date = DateTime.Today.AddDays(-i) });
	        }
	
	        return data;
	    }
	}

    <telerikGrid:RadDataGrid ItemsSource="{Binding Items}" UserEditMode="Inline">
        <telerikGrid:RadDataGrid.DataContext>
            <local:ViewModel/>
        </telerikGrid:RadDataGrid.DataContext>
    </telerikGrid:RadDataGrid>





## Commands

Let's create a class that implements the ICommand interface:

    public class CustomCommitEditCommand : ICommand
    {
        public event EventHandler CanExecuteChanged;
 
        public bool CanExecute(object parameter)
        {
            return true;
        }
 
        public void Execute(object parameter)
        {
            this.SubmitChanges();
        }
 
        private async void SubmitChanges()
        {
            var md = new MessageDialog("Changes were saved successfully.", "Data Saved.");
            bool? result = null;
            md.Commands.Add(new UICommand("OK", new UICommandInvokedHandler((cmd) => result = true)));
 
            await md.ShowAsync();
        }
    }

Create a ViewModel that will be used as a DataContext of the grid. 

    public class ViewModel
    {
        public ViewModel()
        {
            this.Items = this.GetData();
            this.CommitEditCommand = new CustomCommitEditCommand();
        }

        public ObservableCollection<Data> Items { get; set; }

        public CustomCommitEditCommand CommitEditCommand { get; set; }

        private ObservableCollection<Data> GetData()
        {
           // generate sample data
        }
    }

Define the view model as a static resource.

    <Page.Resources>
        <local:ViewModel x:Key="StaticViewModel"/>
    </Page.Resources>

Grid declaration.

	<telerikGrid:RadDataGrid DataContext="{StaticResource StaticViewModel}" ItemsSource="{Binding Items}" UserEditMode="Inline">
		<telerikGrid:RadDataGrid.Commands>
			<telerikGridCommands:DataGridUserCommand Command="{Binding CommitEditCommand, Source={StaticResource StaticViewModel}}" Id="CommitEdit" EnableDefaultCommand="True"/>
		</telerikGrid:RadDataGrid.Commands>
	</telerikGrid:RadDataGrid>
