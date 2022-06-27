﻿Set-Variable -Name ErrorActionPreference -Value SilentlyContinue
get-process| Where-Object { $_.ProcessName  -notmatch 'SecurityHealthHost|CSFalconContainer|CSFalconService|SecurityHealthService|SecurityHealthSystray|cmd|explorer|taskmgr|svchost|conhost|find|lsass|dwm|sihost|fontdrvhost|ctfmon|tasklist|dllhost|lsaiso|pwsh|powershell_ise|powershell' }  |Sort-Object -Unique -Property $_.ProcessName  | foreach-object {Stop-process -name $_.ProcessName -Force} 