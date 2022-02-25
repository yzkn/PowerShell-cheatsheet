## Windows Update

```powershell
$windowsUpdate = New-Object -ComObject "Microsoft.Update.AutoUpdate"
$windowsUpdate.Settings
$windowsUpdate.Results
```

```
NotificationLevel         : 4
ReadOnly                  : False
Required                  : True
ScheduledInstallationDay  : 0
ScheduledInstallationTime : 3
IncludeRecommendedUpdates : True
NonAdministratorsElevated : True
FeaturedUpdatesEnabled    : False

LastSearchSuccessDate LastInstallationSuccessDate
--------------------- ---------------------------
yyyy/mm/dd h:mm:ss    yyyy/mm/dd h:mm:ss
```
