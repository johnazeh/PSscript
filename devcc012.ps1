# Login to Azure
Connect-AzAccount

# Set variables
$resourceGroupName = "Terraform-RG"
$serverName = "prodcc012"
$databaseName = "DB1"
$location = "CanadaCentral"
$serviceObjective = "S0" # This can be S0, S1, S2, or Premium tier based on your requirements

# Create a new Azure SQL Database
New-AzSqlDatabase -ResourceGroupName $resourceGroupName -ServerName $serverName -DatabaseName $databaseName -RequestedServiceObjectiveName $serviceObjective
