# azureaistudio

## Deploy Azure AI Studio



## Deploy Azure Machine Learning



## Deploy Demo Project Resources

If you have Visual Studio Code installed [If not go here](https://code.visualstudio.com/download), you can use the [Bicep extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-bicep) to run Bicep scripts by doing the following:

* Open the infra\DeployAzureResources.bicep script.

* Use Ctrl+Shift+P (or Cmd+Shift+P on Mac) to open the Visual Studio Code Command Palette prompt. Then, type `Bicep` into the search menu and click on `Bicep: Deploy Bicep File` to chose it.

![cmdpalette](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/cmdpalette.png)

* Provide a name for the deployment or accept the automatically provided name by clicking Enter.

![deployment](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/deployment.png)

* Select the appropriate subscription. This subscription must be listed for Azure OpenAI access!

* Select `Create new Resource Group`

![createrg](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/createrg.png)

Enter a name for that Resource Group

![rgname](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/rgname.png)

* Select a location (region)

![region](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/region.png)

* There will not be a parameter file for this script, so it is safe to choose None.

![parameter](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/parameter.png)

At this point, the deployment script will kick off. You can select the link in the Output window to view the deployment in the Azure portal.

Once your deployment completes, you should see all of your resources in the resource group you have created. These include and Azure OpenAI service, an Azure AI Search service, a Speech service, and a storage account.

![bicepservices](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/bicepservices.png)
