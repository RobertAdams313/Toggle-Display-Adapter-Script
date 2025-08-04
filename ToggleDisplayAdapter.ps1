
# PowerShell script to disable and enable the display adapter
# Run this script as Administrator

$device = Get-PnpDevice | Where-Object { $_.Class -eq 'Display' -and $_.Status -eq 'OK' }

if ($device) {
    Write-Host "Disabling Display Adapter: $($device.FriendlyName)"
    Disable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
    Start-Sleep -Seconds 5

    Write-Host "Enabling Display Adapter: $($device.FriendlyName)"
    Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
} else {
    Write-Host "Display Adapter not found or already disabled."
}
