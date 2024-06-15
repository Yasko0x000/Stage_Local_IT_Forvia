# Rapport de Stage - Forvia FAS

Ce dépôt contient le rapport de stage de Yassine réalisé chez Forvia FAS ainsi que les scripts et ressources utilisés durant le stage.

## Contenu

- **rapport-stage-Forvia.pdf** : Rapport de stage complet.
- **scripts/** : Scripts PowerShell utilisés pour la comparaison de fichiers et autres tâches.
- **resources/** : Ressources supplémentaires comme les images et les documents de configuration.

## Instructions pour exécuter les scripts

1. **script_delta.ps1** :
   - Détecte et renomme les fichiers XML avec des VIN absents du fichier CSV.
   - `powershell script_delta.ps1`

2. **suppr_non_miss.ps1** :
   - Supprime les fichiers XML qui ne sont pas renommés en `.miss`.
   - `powershell suppr_non_miss.ps1`

3. **rename_origin.ps1** :
   - Restaure les noms d'origine des fichiers XML en supprimant l'extension `.miss`.
   - `powershell rename_origin.ps1`

## Bibliographie

- [Documentation Docker](https://docs.docker.com)
- [Documentation CheckMK](https://docs.checkmk.com)
- [Documentation Grafana](https://grafana.com/docs)
- [Documentation Python](https://docs.python.org/3/)
- [Documentation NGINX](https://nginx.org/en/docs/)
- [Documentation Raspberry Pi](https://www.raspberrypi.org/documentation/)
- [Documentation PowerShell](https://docs.microsoft.com/fr-fr/powershell/)
- [Documentation AutoLogon de Microsoft](https://docs.microsoft.com/fr-fr/windows-server/administration/windows-commands/autologon)
- [Information sur SCADA](https://www.scada.org)
- [Guide de l'utilisateur Wireshark](https://www.wireshark.org/docs/wsug_html_chunked/)
- [Site officiel de Forvia](https://www.forvia.com)
- [Documentation Raspbian OS](https://www.raspberrypi.org/documentation/raspbian/)
- [Manuel ITIL Foundation](https://www.axelos.com/best-practice-solutions/itil)

## Remerciements

Je tiens à exprimer ma profonde gratitude à Malcolm Earnshaw, mon tuteur d'entreprise et manager, pour son encadrement et son soutien constant. Merci également à toute l'équipe IT de Forvia : Baptiste Larrière, Jonathan Lépine, Adnan Baljic et Furkan. Enfin, un grand merci à Julien Lecoq, mon tuteur académique, pour sa visite et le temps accordé.
