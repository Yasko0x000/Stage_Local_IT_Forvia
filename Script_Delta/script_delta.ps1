$fichierCSV = "C:\Users\elhamiou\Documents/Data_overview_Forvia_cleaned.csv" #Modifier avec le chemin du bon fichier .csv

$dossierXML = "C:\Users\elhamiou\Documents\xml" #Il faut modifier par le chemin du dossier contenant les fichiers
$listeVIN = @(Get-Content $fichierCSV | Select-Object -Skip 1)

foreach ($xmlFilePath in Get-ChildItem $dossierXML -Filter *.xml) {
    $ContentXML = [xml](Get-Content $xmlFilePath.FullName)
    $idVIN = $ContentXML.SelectSingleNode("//VIN")
    if ($idVIN -ne $null) {
        $vin = $idVIN.InnerText
        if ($vin -notin $listeVIN) {
            $nvNomFichier = $xmlFilePath.Name -replace '\.xml$', '.miss' #Ici on peut changer .miss par le rename souhaité, par exemple .old ou autres...
            $newFilePath = Join-Path -Path $dossierXML -ChildPath $nvNomFichier
            Rename-Item -Path $xmlFilePath.FullName -NewName $newFilePath
            Write-Output "Le fichier $($xmlFilePath.Name) a été renommé en $nvNomFichier." #On peut suppr cette ligne si on veut eviter l'echo sur le terminal
        }
    } else {
        Write-Output "Pas de vin trouvé $($xmlFilePath.Name)." #On peut suppr cette ligne si on veut eviter l'echo sur le terminal
    }
}
