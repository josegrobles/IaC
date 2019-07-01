# Azure Resource Manager
## Crear deployment de template
`az group deployment create --name "$deploymentName" --resource-group "$resourceGroupName" --template-file "$templateFilePath" --parameters "@${parametersFilePath}"`

# Terraform

## Inicializar TF
`terraform init`

## Visualizar Plan de Ejecución
`terraform plan`

## Aplicar Plan de Ejecución
`terraform apply`