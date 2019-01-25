$ErrorActionPreference="SilentlyContinue"
Stop-Transcript | out-null
$ErrorActionPreference = "Continue"
Start-Transcript -path $PSScriptRoot\output.txt -append


$url = "https://download.elifulkerson.com//files/tcping/0.39/tcping.exe"

$output = "$PSScriptRoot\tcping.exe"

Invoke-WebRequest -Uri $url -OutFile $output

cd $PSScriptRoot

.\tcping.exe tcping --header -h -n 10 ndes-alstomgroup.msappproxy.net

Stop-Transcript





