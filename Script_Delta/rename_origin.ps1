$dossierXML = "C:\Users\elhamiou\Documents\xml" #Il fautmodifier le chemin par le chemin du dossier contenant les fichiers

foreach ($file in Get-ChildItem $dossierXML -Filter "*.miss") {
    $nvNomFichier = $file.Name -replace '\.miss$', ''

    $newFilePath = Join-Path -Path $file.DirectoryName -ChildPath $nvNomFichier
    
    Rename-Item -Path $file.FullName -NewName $newFilePath -Force
    Write-Output "Le fichier $($file.Name) a été renommé en $nvNomFichier."
}
