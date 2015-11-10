---
title: Start Using Telerik UI for UWP
page_title: Start Using Telerik UI for UWP
description: Start Using Telerik UI for UWP
slug: UWP
tags: UWP,windows,universal,platform
published: True
position: 3
---

# Start Using Telerik UI for UWP

The following example describes what steps you should perform in order to add Telerik UI for UWP in your application.

## Requirements
Before walking through this example, you must have installed **Telerik UI for UWP** and **Visual Studio 2015** on your machine.

## Steps

#### Remove all old versions

Before creating any project customers firs need to manually remove all previous versions of the **Telerik UI for UWP** suite of controls. This step is mandatory to ensure that everything and only what is needed is installed. To do this customers should uninstall the visual studio extensions. This can be done through the Visual Studio's Extensions and Updates wizard.

![Extensions And Updates Wizard](images/extensionsandupdateswizard.png)

Next step is to uninstall the Telerik extensions.

![Uninstall Telerik UI for UWP extensions](images/uninstalltelerikvsixforuwp.png)

If there are no results after searching customers are ready to install the latest version of Telerik UI for UWP suite.

#### Install Telerik UI for UWP suite

Customers need to download from their Telerik account the latest official release of the Telerik UI for UWP suite available. After unzipping the downloaded file there should be three Visual Studio extension installers. They are placed under the **\Binaries\VSIX** folder.

![Unzipped Telerik UI for UWP vsix files](images/vsixextensionsforuwp.png)

First should be installed the **VISX.UWP.vsix** extension since the other two depend on it. Next customers should install the other two extensions (installation order does not matter).

#### Create application

Once the extensions are installed customers are ready to continue with creating their application. Visual Studio 2015 provides Blank App template which can be used for easier start. It can be created using the New Project wizard.

![Blank App project Template](images/newprojectblankapp.png)

#### Add required references

Once the wizard finishes creating the Blank App customers are ready to reference the already installed packages. 
![Open Reference Manager](images/openreferencemanager.png)

In the Reference Manager all the extensions should be visible. Customers can reference the necessary one(s).

![Open Reference Manager](images/addreferences.png)

Referencing all three packages equals to referencing all binaries in the suite. This means customers will be allowed to utilize every single component from the suite. 

However, if this is not convenient and optimization is required customers are capable of manually referencing only the binaries they need. In the cases when only one or two of the available controls are used this optimization may be considered. The required binaries are described in each control's **Getting Started** article. It may turn out that the application needs only two of the available assemblies. In this case instead of referencing everything the better approach would be to include only the needed ones.