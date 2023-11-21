##[Ps1 To Exe]
##
##Kd3HDZOFADWE8uK1
##Nc3NCtDXThU=
##Kd3HFJGZHWLWoLaVvnQnhQ==
##LM/RF4eFHHGZ7/K1
##K8rLFtDXTiW5
##OsHQCZGeTiiZ4tI=
##OcrLFtDXTiW5
##LM/BD5WYTiiZ4tI=
##McvWDJ+OTiiZ4tI=
##OMvOC56PFnzN8u+Vs1Q=
##M9jHFoeYB2Hc8u+Vs1Q=
##PdrWFpmIG2HcofKIo2QX
##OMfRFJyLFzWE8uK1
##KsfMAp/KUzWJ0g==
##OsfOAYaPHGbQvbyVvnQX
##LNzNAIWJGmPcoKHc7Do3uAuO
##LNzNAIWJGnvYv7eVvnQX
##M9zLA5mED3nfu77Q7TV64AuzAgg=
##NcDWAYKED3nfu77Q7TV64AuzAgg=
##OMvRB4KDHmHQvbyVvnQX
##P8HPFJGEFzWE8tI=
##KNzDAJWHD2fS8u+Vgw==
##P8HSHYKDCX3N8u+Vgw==
##LNzLEpGeC3fMu77Ro2k3hQ==
##L97HB5mLAnfMu77Ro2k3hQ==
##P8HPCZWEGmaZ7/K1
##L8/UAdDXTlaDjofG5iZk2UbhTD9zUvWCur6m1oyM7eXmvibNWqYZRlp+gibuDUW6ZfEeXPAboNwURg4rKPcJ7aqeC/T4C6cSl4M=
##Kc/BRM3KXhU=
##
##
##fd6a9f26a06ea3bc99616d4851b372ba
Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Message"
$Form.Size = New-Object System.Drawing.Size(300,200)

$Label1 = New-Object System.Windows.Forms.Label
$Label1.Location = New-Object System.Drawing.Point(10,10)
$Label1.Size = New-Object System.Drawing.Size(280,30)
$Label1.Text = "Lorem Ipsum"
$Form.Controls.Add($Label1)

$Label2 = New-Object System.Windows.Forms.Label
$Label2.Location = New-Object System.Drawing.Point(10,50)
$Label2.Size = New-Object System.Drawing.Size(280,30)
$Label2.Text = "Dolor sit amet"
$Form.Controls.Add($Label2)

$ButtonSupport = New-Object System.Windows.Forms.Button
$ButtonSupport.Location = New-Object System.Drawing.Point(10,90)
$ButtonSupport.Size = New-Object System.Drawing.Size(120,30)
$ButtonSupport.Text = "Contacter le support"
$ButtonSupport.Add_Click({Start-Process "https://www.support.com"})
$Form.Controls.Add($ButtonSupport)

$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.Location = New-Object System.Drawing.Point(140,90)
$ButtonCancel.Size = New-Object System.Drawing.Size(120,30)
$ButtonCancel.Text = "Annuler"
$ButtonCancel.Add_Click({$Form.Close()})
$Form.Controls.Add($ButtonCancel)



$IconPath = [System.IO.Path]::GetDirectoryName($MyInvocation.MyCommand.Definition),"\icon.ico" # Remplacez par le chemin de votre icône
$Form.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($IconPath)


$Form.ShowDialog()