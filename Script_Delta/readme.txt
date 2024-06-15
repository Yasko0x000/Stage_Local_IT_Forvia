Instructions d'utilisation

Avant de commencer, quelques manip à faire : 

1. Trier le fichier excel > supprimer les colonnes et les lignes inutiles

2. Convertir le fichier excel en .csv

3. Se rendre dans le script "script_delta" et modifier la variable "$fichierCSV" > remplacer "C:\Users\elhamiou\Documents/Data_overview_Forvia_cleaned.csv" par le chemin réel de votre fichier csv

4. Se rendre dans chaque script et modifier la variable "$dossierXML" et remplacer "C:\Users\elhamiou\Documents\xml" par le chemin réel de votre dossier contenant les fichiers xml

// EXECUTION DU SCRIPT \\

Détecter et Renommer les fichiers Delta
> Lancer PowerShell > Executer le script : /cheminduscript/script_delta.ps1
Ce script détectera les fichiers delta dans le répertoire spécifié et les renommera.

Pour conserver uniquement les fichiers delta :
> Lancer PowerShell > Executer le script : /cheminduscript/suppr_non_miss.ps1
Ce script supprimera tous les fichiers qui ne sont pas des fichiers delta, laissant seulement ceux qui sont pertinents.

Enfin, pour retirer l'extension ".miss" des fichiers d'origine, suivez ces étapes :
> Lancer PowerShell > Executer le script : /cheminduscript/rename_origin.ps1
Ce script renommera tous les fichiers d'origine en retirant l'extension ".miss".