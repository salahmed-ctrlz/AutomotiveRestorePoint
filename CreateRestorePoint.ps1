# Define the name for the new restore point
$RestorePointName = "Automatic Restore Point"

# Create a new system restore point
Checkpoint-Computer -Description $RestorePointName -RestorePointType Modify_Settings

# Remove old restore points
Get-ComputerRestorePoint | Where-Object { $_.Description -ne $RestorePointName } | Remove-ComputerRestorePoint -Confirm:$false
