---
title: Metadata
page_title: Metadata
description: Metadata
slug: dataform-metadata
tags: metadata, raddataform
published: True
position: 2
---

# Metadata

The developer can provide information about the object and its properties which will help DataForm to automatically adjust its editors to match the desired result. This is possible through the following approaches:

# Property Attributes

- **Display** (Header, Group, Position, PlaceholderText)
- **ReadOnly**
- **Ignore**
- **Required**

##Sample##

    public class Item
    {
        [Display(Header = "First Name")]
        public string Name { get; set; }
        
        [IgnoreProperty]
        public double Salary { get; set; }
    }

# External Provider

If the developer has no access to the type of its Item he can provide this metadata through implementing the **EntityProperty** class or overriding the default implementaion - **RuntimeEntityProperty** which works with runtime objects.

        public abstract void Commit();

        public abstract object GetOriginalValue();

        protected abstract bool GetIsRequired(object property);

        protected abstract int GetPropertyIndex(object property);

        protected abstract string GetPropertyGroupKey(object property);

        protected abstract string GetPropertyName(object property);

        protected abstract Type GetPropertyType(object property);

        protected abstract string GetLabel(object property);

        protected abstract bool GetIsReadOnly(object property);

In order the DataForm to work with the new implementation of the EntityProperty the developer should provide it through an **EntityProvider** (or its default implementation **RuntimeEntityProvider**) through the **RadDataForm.EntityProvider** property:

        protected abstract Type GetEntityPropertyType(object property);


##Sample##

Here, we implement the RuntimePropertyEntity and provide a custom label for each property.

    public class UserEntityProperty : RuntimeEntityProperty
    {
        public UserEntityProperty(PropertyInfo property, object item)
            : base(property, item)
        {
        }

        protected override string GetLabel(object property)
        {
            return "label" + property.ToString();
        }
    }

Next, we should make our EntityProvider to use the new implementation:

    public class DefaultProvider : RuntimeEntityProvider
    {
        protected override Type GetEntityPropertyType(object property)
        {
            return typeof(UserEntityProperty);
        }
    }

        <data:RadDataForm>
            <data:RadDataForm.EntityProvider>
                <local:DefaultProvider />
            </data:RadDataForm.EntityProvider>
        </data:RadDataForm>