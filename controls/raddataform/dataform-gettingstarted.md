---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: dataform-gettingstarted
tags: overview
published: True
position: 1
---

**RadDataForm** is easily setup by adding the control to a UserControl and setting its **Item** property to an object which properties are to be visualized in the Data Form. In order to use the control in your application you need to reference the following binaries:

1. Telerik.Core.dll
2. Telerik.Data.dll
4. Telerik.UI.Xaml.Input.dll
5. Telerik.UI.Xaml.Primitives.dll
3. Telerik.UI.Xaml.Controls.Data.dll

# Getting Started

After referencing the required assemblies you can proceed with setting up the control itself. The only property that is required to be set in order to visualize any data in our application is the Item property. It is of type object and gets or sets the business item that is about to be visualized.

## Example

Create the business item

	class DataItem
    {
        private string name;
        string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }

        private string lastName;
        string LastName
        {
            get
            {
                return lastName;
            }
            set
            {
                lastName = value;
            }
        }

        private int age;
        int Age
        {
            get
            {
                return age;
            }
            set
            {
                age = value;
            }
        }

        public DataItem(string name = "", string lastName = "", int age = -1)
        {
            this.Name = name;
            this.LastName = lastName;
            this.Age = age;
        }
    }

Initialize the **RadDataForm** and add it to the page

	public MainPage()
    {
        this.InitializeComponent();

        var form = new RadDataForm();
        form.Item = new DataItem();

        this.root.Children.Add(form);
    }

The result should be similar to the picture below.

Figure 1: 

# insert picture here