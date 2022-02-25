## Windows Firewall

```powershell
$fw = new-object -com HNetCfg.FwMgr
$profile = $fw.LocalPolicy.CurrentProfile
$profile
```

```
Type                                         : 1
FirewallEnabled                              : True
ExceptionsNotAllowed                         : False
NotificationsDisabled                        : False
UnicastResponsesToMulticastBroadcastDisabled : False
RemoteAdminSettings                          : System.__ComObject
IcmpSettings                                 : System.__ComObject
GloballyOpenPorts                            : System.__ComObject
Services                                     : System.__ComObject
AuthorizedApplications                       : System.__ComObject
```
