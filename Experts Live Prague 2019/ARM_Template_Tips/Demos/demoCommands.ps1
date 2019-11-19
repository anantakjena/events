


### 3_Outputs
New-AzResourceGroupDeployment -Name "3_outputs_1" -ResourceGroupName "ARMDemos" -TemplateFile .\3_Outputs\simpleOutput.json
$x=New-AzResourceGroupDeployment -Name "3_outputs_2" -ResourceGroupName "ARMDemos" -TemplateFile .\3_Outputs\objectOutput.json
$y= [Newtonsoft.Json.JsonConvert]::SerializeObject($x.Outputs.publicIP.value, [Newtonsoft.Json.Formatting]::Indented) | ConvertFrom-Json
New-AzResourceGroupDeployment -Name "3_outputs_3" -ResourceGroupName "ARMDemos" -TemplateFile .\3_Outputs\Variables.json

### 4_NestedTemplates

$x=New-AzResourceGroupDeployment -Name "4_nested_1" -ResourceGroupName "crossSubscriptionDeployment" -TemplateFile .\4_NestedTemplates\2_cross_sub\CrossSubscriptionDeployments.json -TemplateParameterFile .\4_NestedTemplates\2_cross_sub\CrossSubscriptionDeployments.parameters.json

### 6_conditions

New-AzResourceGroupDeployment -Name "6_conditions_1" -ResourceGroupName "ARMDemos" -TemplateFile .\6_Conditions\if.json -TemplateParameterFile .\6_Conditions\if.params.json

### 8_sublevel

New-AzDeployment -Name "8_sublevel_01" -Location "West Europe" -TemplateFile .\8_SubLevelDeployments\template.json -TemplateParameterFile .\8_SubLevelDeployments\template.parameters.json


### 9 Testing 

.\9_Testing\azuredeploy.tests.ps1