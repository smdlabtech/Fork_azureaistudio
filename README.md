# Azure AI Studio Demo and Workshop

This is a GitHub Repo for an Azure AI Studio Demo and Workshop deployed using Azure ARM Templates Accelerators and a Bicep Template to deploy you development environment.  It include three development use cases:
 
1) [Build a RAG App in the Azure AI Studio Playground](https://github.com/datasnowman/azureaistudio/tree/main#build-a-rag-app-in-the-azure-ai-studio-playground)

    ### Prereqs            

    Clone this GitHub repo

    ```    
    git clone https://github.com/DataSnowman/azureaistudio.git
    ```

    `Note: At the time of this demo (Feb 23, 2024) the East US2 was the most complete region for available LLMs`

    A) [Deploy Azure AI Studio](https://github.com/datasnowman/azureaistudio/tree/main#deploy-azure-ai-studio)

    B) [Deploy Azure Machine Learning](https://github.com/datasnowman/azureaistudio/tree/main#deploy-azure-machine-learning)

    C) [Deploy Demo Project Resources](https://github.com/datasnowman/azureaistudio/tree/main#deploy-demo-project-resources)
 

2) [Build a RAG App in Azure AI Studio using Code-First](https://github.com/datasnowman/azureaistudio/tree/main#build-a-rag-app-in-azure-ai-studio-using-code-first)

    `Note: If you did the "Build a RAG App in the Azure AI Studio Playground" use case already you can re-use the Azure AI Studio you have already deployed`

    A) If not you can [Deploy Azure AI Studio](https://github.com/datasnowman/azureaistudio/tree/main#deploy-azure-ai-studio)


3) [Build a ChatGPT4 Turbo with Vision App in the Azure AI Studio Playground](https://github.com/datasnowman/azureaistudio/tree/main#build-a-chatgpt4-turbo-with-vision-app-in-the-azure-ai-studio-playground)
    
    `Note: At the time of this demo (Feb 23, 2024) ChatGPT Turbo4 with Vision was only available in West US region so it required an additional deployment of Azure AI Studio in West US`

    A) [Deploy Azure AI Studio](https://github.com/datasnowman/azureaistudio/tree/main#deploy-azure-ai-studio)


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

![azureai](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/azureai.png)

Click on `Launch Azure AI Studio`

![launchaistudio](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/launchaistudio.png)

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
You are an AI assistant that helps people find information on Frequently Asked Questions.
```

Click on `Apply changes` and `Continue`

![applychanges](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/applychanges.png)

Prepare to Add your data

Make sure you use the storage account and Azure AI Search you created with Bicep earlier in [Deploy Demo Project Resources](https://github.com/datasnowman/azureaistudio/tree/main#deploy-demo-project-resources)
, as the storage account must be in the same region as Azure AI Search.

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

Navigate to the files `hotels.txt` and `resorts.txt` in the Repo that you cloned /datasnowman/azureaistudio/data

Upload the file by clicking `Upload files`

![upload](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/upload.png)

Click `Next`

![uploadfiles](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/uploadfiles.png)

Select `Hbrid (vector + keyword)` and check the Acknowledge checkbox and click `Next`

![hybridvector](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/hybridvector.png)

Click `Save and close`

![saveandclose](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/saveandclose.png)

The Ingestion in progress should be visable

![ingest](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/ingest.png)

The data should be uploaded and indexed

![uploadedindexed](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/uploadedindexed.png)

Test the with Start Chatting.  Enter this into the Chat and click the run arrow

```
What hotels are available?
```

![startchatting](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/startchatting.png)

Here is what should be returned

![availablehotels](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/availablehotels.png)

Add speech to text by clicking on the microphone in the chatbox

![chatbox](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/chatbox.png)

Enable Speech to text and Text to Speech
Pick a Voice configuration and select `Play`
Click `Save`

![enablespeech](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/enablespeech.png)

Click on the microphone in the chatbox and say `How many rooms in the Oceanview Inn?` and click the run arrow

![rooms](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/rooms.png)

The voice "Amber" should tell you it has 60 rooms

![sixty](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/sixty.png)

Deploy a new web app

![deploynewwebapp](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/deploynewwebapp.png)

Fill out the form and click `Deploy`

![deploywebapp](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/deploywebapp.png)

Wait on the page for it to deploy

![wait](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/wait.png)

Click on the `Launch` button

![launch](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/launch.png)

When the app deploys try it out

![app](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/app.png)


### Build a RAG App in Azure AI Studio using Code-First

[`PLEASE REFER TO THE FOLLOWING GITHUB REPO FOR THE CODE-FIRST EXPERIENCE AND AI RESOURCE DEPLOYMENT`](https://github.com/Azure/aistudio-copilot-sample/)

Choices: 

1) [Use Codespaces or local development environment](https://github.com/Azure/aistudio-copilot-sample/tree/main#step-1-set-up-your-development-environment)

2) [Use "Open project in VS Code (Web)" in an already "Deployed Azure AI Studio"](https://github.com/datasnowman/azureaistudio/tree/main#deploy-azure-ai-studio)

Create a `New ai project` in Azure AI Studio

![newaiproject](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/newaiproject.png)

Give the project an name and click `Create an AI project`

![createaiproject](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/createaiproject.png)

Click the `Open project in VS Code (Web)` button

![openprojectinvscodeweb](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/openprojectinvscodeweb.png)

Provide a Compute name and Virtual machine size and click create

![createcomputefordev](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/createcomputefordev.png)

When the compute is ready click `Launch`

![launchcompute](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/launchcompute.png)

Follow the README.md

The Azure AI SDK
To get started with the AI SDK, we recommend the [aistudio-copilot-sample](https://github.com/Azure/aistudio-copilot-sample/) repo as a comprehensive starter repository that includes a few different copilot implementations. For the full list of samples, check out the [Azure AI Samples](https://github.com/azure-samples/azureai-samples) repository.

1) Open a terminal
2) Clone a sample repo into your project's code folder. You may be prompted to authenticate to Github

```
cd code
git clone https://github.com/azure/aistudio-copilot-sample
```

Follow along in Step 2 of the aistudio-copilot-sample [step-2-create-and-connect-to-azure-resources](https://github.com/azure/aistudio-copilot-sample/tree/main#step-2-create-and-connect-to-azure-resources)

When you are done remember to Stop the compute

![stopcompute](https://raw.githubusercontent.com/datasnowman/azureaistudio/main/media/stopcompute.png)


### Build a ChatGPT4 Turbo with Vision App in the Azure AI Studio Playground

`Note: At the time of this demo (Feb 23, 2024) ChatGPT Turbo4 with Vision was only available in West US region so it required an additional deployment of Azure AI Studio in West US`

[Deploy Azure AI Studio](https://github.com/datasnowman/azureaistudio/tree/main#deploy-azure-ai-studio)



