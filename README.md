# M300


## Github einrichten
 
Um auf das GitHub-Repository vom lokalen PC aus zugreifen zu können, muss zuerst ein SSH-Schlüssel erstellt werden. Dies kann leicht mit dem folgenden Befehl erreicht werden.
    ```bash
    ssh-keygen -t rsa -b 4096 -C "aimo.kerschbaum@gmail.com"
    ```

Nun müssen wir den Key in unserem Github Konto hinzufügen. Dazu bei Github auf Einstellungen und dann unter SSH and GPG keys` denn Key hinterlegen. Den Key findet man in der eben erstellten Datei ```id_rsa.pub```. Diese liegt bei Default im Verzeichnis 

### Git Befehle

    | Befehl        | Beschreibung                                              |
    |---------------|-----------------------------------------------------------|
    | `git init`    | Erstellt ein neues Git-Repository im aktuellen Verzeichnis |
    | `git add`     | Fügt Änderungen hinzu                  |
    | `git commit`  | Speichert Änderungen im Repository                        |
    | `git clone`   | Erstellt eine Kopie eines Remote-Repositories              |
    | `git pull`    | Aktualisiert lokale Änderungen mit den neuesten Änderungen Online |
    | `git push`    | Überträgt lokale Änderungen an ein Remote-Repository       |
    | `git branch`  | Erstellt, löscht oder zeigt Branches im Repository an      |
    | `git merge`   | Führt zwei oder mehr Branches zusammen                     |
    | `git status`  | Zeigt den Status der Arbeitskopie und des Repositories an  |
    | `git log`     | Zeigt die Versionsgeschichte an                            |
