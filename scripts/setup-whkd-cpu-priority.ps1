# This script needs to be run as administrator

New-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\whkd.exe\PerfOptions' -Force
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\whkd.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 3