# Azure AI Studio Demo and Workshop

This is a GitHub Repo for an Azure AI Studio Demo and Workshop deployed using Azure ARM Templates Accelerators and a Bicep Template to deploy you development environment.  It include three development use cases: 
1) Build a RAG App in the Azure AI Studio Playground
2) Build a RAG App in Azure AI Studio using Code-First
3) Build a ChatGPT4 Turbo with Vision App in the Azure AI Studio Playground

## Deploy Azure AI Studio

### Azure AI Studio basic setup
Based on the Quickstart template for the [Azure AI Studio basic setup](https://github.com/Azure/azure-quickstart-templates/blob/master/quickstarts/microsoft.machinelearningservices/aistudio-basics/README.md)

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fquickstarts%2Fmicrosoft.machinelearningservices%2Faistudio-basics%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fquickstarts%2Fmicrosoft.machinelearningservices%2Faistudio-basics%2Fazuredeploy.json)

This template deploys the following:

- Azure Data Factory
- Azure Databricks Workspace
- Azure Data Lake Storage Gen2
- Azure SQL Database

The deployed services should look something like this:
`Note the Event Grid and Key vault services are added during the Next Steps below`

![landstagedeployment](https://raw.githubusercontent.com/DataSnowman/MyDataMesh/main/images/landstagedeployment.png)


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
