# Azure AI Studio Demo and Workshop

This is a GitHub Repo for an Azure AI Studio Demo and Workshop deployed using Azure ARM Templates Accelerators and a Bicep Template to deploy you development environment.  It include three development use cases:
 
1) [Build a RAG App in the Azure AI Studio Playground](https://github.com/datasnowman/azureaistudio/tree/main#build-a-rag-app-in-the-azure-ai-studio-playground)

2) [Build a RAG App in Azure AI Studio using Code-First](https://github.com/datasnowman/azureaistudio/tree/main#build-a-rag-app-in-azure-ai-studio-using-code-first
)

3) [Build a ChatGPT4 Turbo with Vision App in the Azure AI Studio Playground](https://github.com/datasnowman/azureaistudio/tree/main#build-a-chatgpt4-turbo-with-vision-app-in-the-azure-ai-studio-playground)

## Prereqs

Clone this GitHub repo

```
git clone https://github.com/DataSnowman/azureaistudio.git
```


## Deploy Azure AI Studio

### Azure AI Studio basic setup
Based on the Quickstart template for the [Azure AI Studio basic setup](https://github.com/Azure/azure-quickstart-templates/blob/master/quickstarts/microsoft.machinelearningservices/aistudio-basics/README.md)

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fquickstarts%2Fmicrosoft.machinelearningservices%2Faistudio-basics%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fquickstarts%2Fmicrosoft.machinelearningservices%2Faistudio-basics%2Fazuredeploy.json)

This template deploys the following:

- Azure AI Studio
- Azure AI services
- Application Insights
- Container registry
- Key vault
- Storage account

Fill out the form and click `Review + create`

![aasportalqs](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/aasportalqs.png)

Click `Create`

![createaas](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/createaas.png)


The deployed services should look something like this:

![aasresources](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/aasresources.png)


## Deploy Azure Machine Learning

### Azure Machine Learning service workspace
Based on the Quickstart template for the [Create an Azure Machine Learning service workspace](https://github.com/Azure/azure-quickstart-templates/blob/master/quickstarts/microsoft.machinelearningservices/machine-learning-workspace/README.md)


[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fquickstarts%2Fmicrosoft.machinelearningservices%2Fmachine-learning-workspace%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fquickstarts%2Fmicrosoft.machinelearningservices%2Fmachine-learning-workspace%2Fazuredeploy.json)

This template deploys the following:

- Azure Machine Learning workspace
- Application Insights
- Container registry
- Key vault
- Storage account

Fill out the form and click `Review + create`

![amlportalqs](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/amlportalqs.png)

Click `Create`

![createaml](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/createaml.png)


The deployed services should look something like this:

![amlresources](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/amlresources.png)

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

## Development Usecases

### Build a RAG App in the Azure AI Studio Playground

Open up the Resource Group that you deployed AI Studio into and click on the Azure AI resource

![azureai](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/azureai.png

Click on `Launch Azure AI Studio`

![launchaistudio](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/launchaistudio.png

This will take you to the Manage tab of Azure AI Studio

![manageaistudio](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/manageaistudio.png)

Navigate to the All Azure AI Dropdown.  We won't look at these now, but this is where you would navigate to the other Azure AI Cognitive Services Studios like Azure Machine Learning Studio and Speech Studio.

![allazureai](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/allazureai.png)


Navigate to the Home tab and have a look around the page

![homeaistudio](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/homeaistudio.png)

Navigate to the Explore tab and look around (`explore`) the page

![exploreaistudio](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/exploreaistudio.png)

Navigate to the Build tab and look around the page

![buildaistudio](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/buildaistudio.png)

In the Build tab click `New project`.  Call the project something like `faq` and click the `Create a project` button

![createaprojectfaq](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/createaprojectfaq.png)

Click on the Playground tab in the Tools on the left nav

![playgroundfaq](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/playgroundfaq.png)

Notice the banner near the top of the page
`No deployment exists: You need a deployment to work in the playground. Navigate to the Deployment page to create a deployment.` 

![deploymentbanner](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/deploymentbanner.png)

Click on Deployments in the Components on the left nav and click `+Create`

![deployments](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/deployments.png)

Select Real-time endpoint

![rte](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/rte.png)

Select gpt4 and click `Confirm`

![gpt4](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/gpt4.png)

Click `Deploy`

![deploygpt4model](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/deploygpt4model.png)

You should have you first model deployment

![onemodel](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/onemodel.png)

Click back on the Deployments on the left nav and click `+Create` again

![deployada](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/deployada.png)

Select Real-time endpoint

![rte](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/rte.png)

Search for `ada` and select `text-embedding-ada-002` and click `Confirm`

![ada](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/ada.png)

Click `Deploy`

![deployadamodel](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/deployadamodel.png)

You should have you second model deployment

![twomodel](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/twomodel.png)

Click back on `Playground` on the left nav

![playground](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/playground.png)

In the System message change it slightly to read as follows:

```
You are an AI assistant that helps people find information on 
Frequently Asked Questions.
```

Click on `Apply changes` and `Continue`

![applychanges](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/applychanges.png)

Prepare to Add your data

Make sure you use the storage account and Azure AI Search you created with Bicep earlier in [Deploy Demo Project Resources](https://github.com/datasnowman/azureaistudio/tree/main#deploy-demo-project-resources)
, as the storage account must be in the same region as Azure AI Search.

* Navigate to the storage account created with Bicep in the Azure portal.
* Select the Containers option from the Data storage menu.
* Create a new container using the + Container option. Name the container `contoso-suites`.

![container](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/container.png)

Back in the Azure AI Studio Playground click on the `Add your data` tab and click `Add a datasource` button

![addadatasource](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/container.png)

Click on the `Turn on CORS` button

![cors](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/cors.png)

Enter a Index name like `contoso-suites`, 
Click the check box for `Add vector search for this resource`,
Select the Ada embedding model,
and click the check box for `I acknowledge that connecting to an Azure AI Search account will incur usage to my account`
Click `Next`

![next](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/next.png)








* Inside the `contoso-suites` container, select the Upload option and choose each text file.






Need for this

![needforragplayground](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/needforragplayground.png)



### Build a RAG App in Azure AI Studio using Code-First






### Build a ChatGPT4 Turbo with Vision App in the Azure AI Studio Playground

Remember that fourturbovision Azure OpenAI is only in West US