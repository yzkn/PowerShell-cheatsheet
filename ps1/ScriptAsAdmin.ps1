# Copyright (c) 2022 YA-androidapp(https://github.com/YA-androidapp) All rights reserved.

# for Windows PowerShell
# タスクスケジューラライブラリ\Microsoft\Windows\PowerShell\ScheduledJobs\


Import-Module PSScheduledJob


function Register-ScriptAsAdmin {
    param(
        [string]
        $ScriptPath,
        [object[]]
        $ArgumentList
    )

    # [2] スケジュール実行
    # $trigger = New-JobTrigger -Weekly -At "9:00 PM" -DaysOfWeek Monday -WeeksInterval 2

    $jobArgs = @{
        FilePath           = $ScriptPath
        ScheduledJobOption = New-ScheduledJobOption -RunElevated
        Name               = "RunAsAdmin $(Split-Path -Leaf $ScriptPath)"
        # Trigger            = @{Frequency = "AtStartup" } # [1] 起動時に実行
        # Trigger            = $trigger # [2] スケジュール実行
    }
    if ($null -ne $ArgumentList) {
        $jobArgs += @{ ArgumentList = $ArgumentList }
    }

    Register-ScheduledJob @jobArgs
}

function Invoke-ScriptAsAdmin {
    param(
        [string]
        $ScriptPath
    )
    $job = Get-ScheduledJob -Name "RunAsAdmin $(Split-Path -Leaf $ScriptPath)"
    $job.RunAsTask()
}

function Unregister-ScriptAsAdmin {
    param(
        [string]
        $ScriptPath
    )
    Unregister-ScheduledJob -Name "RunAsAdmin $(Split-Path -Leaf $ScriptPath)"
}


# Unregister-ScriptAsAdmin .\o365.ps1
# Register-ScriptAsAdmin .\o365.ps1 $null
