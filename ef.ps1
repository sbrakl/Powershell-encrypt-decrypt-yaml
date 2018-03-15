cls
cd $PSScriptRoot
# EF - Encrypt file
Import-Module C:\shabs\prjs\Powershell-encrypt-decrypt-yaml\FileCryptography.psm1
# https://gallery.technet.microsoft.com/scriptcenter/EncryptDecrypt-files-use-65e7ae5d

#Create Key 
#$key = New-CryptographyKey -Algorithm AES -AsPlainText
$key = 'r5RRfkvdZesRxlHHHVqyOndNf6g7y7mcVbghoWwh2kA='
 
#Encrypt the file 
#Protect-File '.\secret.yaml' -Algorithm AES -KeyAsPlainText $key
Unprotect-File '.\secret.yaml.AES' -Algorithm AES -KeyAsPlainText $key

