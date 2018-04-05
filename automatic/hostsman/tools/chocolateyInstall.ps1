﻿$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path -parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName  = $env:ChocolateyPackageName
  fileType     = 'zip'
  file         = "$toolsPath\HostsMan_4.0.95.zip"
  destination  = $toolsPath
  softwareName = 'hostsman*'
}

Get-ChocolateyUnzip @packageArgs
Remove-Item $toolsPath\*.zip -ea 0
