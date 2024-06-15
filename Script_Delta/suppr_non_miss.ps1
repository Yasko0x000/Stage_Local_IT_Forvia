$dossierXML = "C:\Users\elhamiou\Documents\xml" #Il fautmodifier le chemin par le chemin du dossier contenant les fichiers

foreach ($file in Get-ChildItem $dossierXML) {
    if ($file.Extension -ne ".miss") { #Si besoin, changer ".miss" par le rename souhaité, par exemple .old ou autres...
        Remove-Item -Path $file.FullName -Force
        Write-Output "Le fichier $($file.Name) a été supprimé."  #On peut suppr cette ligne si on veut eviter l'echo sur le terminal
    }
}
