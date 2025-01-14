# Set path to hats
$path_to_hats = "$env:PROGRAMFILES\hats"
$scriptpath = Split-Path $MyInvocation.MyCommand.Path

. .\Get-IniContent.ps1
$iniContent = Get-IniContent "config.ini"
$client = new-object System.Net.WebClient;

echo "Downloading 7-Zip"
$client.DownloadFile($iniContent["7-Zip"]["7-Zip"],"$path_to_hats\7z.msi");

echo "Installing 7-Zip"
Start-Process msiexec.exe -ArgumentList "/a `"$path_to_hats\7z.msi`" /qn TargetDir=`"$path_to_hats\7-Zip`" PrependPath=0 Include_test=0 DefaultFeature=1" -NoNewWindow -Wait;

echo "Preparing to download JDK64"

$source = $iniContent["Java"]["JDK-64"]
$destination = "$path_to_hats\jdk.zip"
# $destination = "$path_to_hats\jdk.exe"
# $client = new-object System.Net.WebClient 
# $cookie = "oraclelicense=accept-securebackup-cookie"
# $client.Headers.Add([System.Net.HttpRequestHeader]::Cookie, $cookie) 
# $client.downloadFile($source, $destination)
Import-Module BitsTransfer
Start-BitsTransfer -Source $source -Destination $destination

echo "Unzipping JDK"
expand-archive -path $destination -destinationpath "$path_to_hats\corretto"
cd "$path_to_hats\corretto\*"
$jdk_path = pwd
cd $path_to_hats
Rename-Item $jdk_path "$path_to_hats\corretto\jdk"
# echo "Installing JDK"
Move-Item "$path_to_hats\corretto\jdk" "$path_to_hats\jdk"
Remove-Item -Path "$path_to_hats\corretto"
# $JDK_INSTALLDIR = 'INSTALLDIR="' + $path_to_hats + '\jdk"'
# Start-Process 'jdk.exe' -ArgumentList 'INSTALL_SILENT=Enable' , 'REBOOT=Disable', 'SPONSORS=Disable', $JDK_INSTALLDIR -Wait -PassThru

