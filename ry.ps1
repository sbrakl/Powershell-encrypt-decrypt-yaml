# ry - Read Yaml File
cls
cd $PSScriptRoot

Import-Module powershell-yaml
# https://github.com/cloudbase/powershell-yaml
# https://github.com/cdhunt/PowerYaml


$str2 = @"
nested:
  array:
  - this
  - is
  - an
  - array
hello: world
"@

$str = Get-Content -Path .\secret.yaml | Out-String

$yaml = ConvertFrom-Yaml $str
#$yaml
$yaml.machine1.cred