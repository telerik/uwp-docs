---
title: What is Localization
page_title: What is Localization
description: What is Localization
slug: radcontrols-windows8-xaml-whatislocalization
tags: what,is,localization
published: True
position: 0
---

# What is Localization

> Localization is the translation of application resources into localized versions for the specific cultures or into customized resources.

The culture of your Windows Runtime application is set to your operating system's culture by default. However, you can change it easily from your application:

1. Open Package.appxmanifest from the Solution Explorer.            
1. Type the desired language code in the Default Language textbox.  
![Default Language](images/Localization/DefaultLanguage.png)

## Custom Localization

**Telerik UI for Windows Universal** allows you to do custom Localization through the **LocalizationManager** class using your own **resource files(.resw)** or **StringLoader** to define the changes you want to make - see the [How to Localize]({%slug radcontrols-windows8-xaml-howtolocalize%}) article.
          

You can change the localization in the current assembly using:

* **StringLoader** -  Uses your own implemented method for localization
            

* **UserResourceMap** - Uses your own created resource file. This file contains a table with keys values where you can set your own values.
            

You can change the localization for all controls using:
        

* **GlobalResourceMap** - Uses custom resource file.
            
