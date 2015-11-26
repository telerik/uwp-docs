---
title: Customizations
page_title: Customizations
description: RadDataForm Customizations
slug: dataform-customizations
tags: dataform,raddataform,customizations
published: True
position: 5
---

#Styling Editors#

The developer can apply styles for each of the Editor through implicit styles.



#Change Group Header Template#

The developer can change the template of each group header through the **RadDataForm.GroupHeaderTemplateSelector** property.

        public class Item
        {
            [Group("first")]
            public string FirstName { get; set; }
            [Group("first")]
            public string LastName { get; set; }
            [Group("second")]
            public double Salary { get; set; }
        }

       this.form.Item = new Item { FirstName = "Ivaylo", LastName = "Gergov", Salary = 100000 };

    public class GroupHeaderSelector : DataTemplateSelector
    {
        public DataTemplate HeaderTemplate { get; set; }
        protected override Windows.UI.Xaml.DataTemplate SelectTemplateCore(object item, Windows.UI.Xaml.DependencyObject container)
        {
            if (item.ToString() == "first")
            {
                return this.HeaderTemplate;
            }

            return base.SelectTemplateCore(item, container);
        }
    }
        <data:RadDataForm x:Name="form">
            <data:RadDataForm.GroupHeaderTemplateSelector>
                <local:GroupHeaderSelector>
                    <local:GroupHeaderSelector.HeaderTemplate>
                        <DataTemplate>
                            <TextBlock Text="{Binding}" FontSize="25" Foreground="Green" />
                        </DataTemplate>
                    </local:GroupHeaderSelector.HeaderTemplate>
                </local:GroupHeaderSelector>
            </data:RadDataForm.GroupHeaderTemplateSelector>
        </data:RadDataForm>