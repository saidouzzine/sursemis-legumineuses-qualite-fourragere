# install_packages.R
# Script d'installation automatique des dépendances listées dans requirements.txt

install_from_requirements <- function(file = "requirements.txt") {
  if (!file.exists(file)) {
    stop("Le fichier requirements.txt est introuvable.")
  }

  # Lire le fichier
  lines <- readLines(file)

  # Extraire uniquement les noms de packages (avant ==)
  pkgs <- lines[grepl("==", lines)]
  pkgs <- sub("==.*", "", pkgs)

  # Filtrer les lignes vides ou commentaires
  pkgs <- pkgs[pkgs != ""]
  pkgs <- pkgs[!grepl("^#", pkgs)]

  # Installer les packages manquants
  for (pkg in pkgs) {
    if (!requireNamespace(pkg, quietly = TRUE)) {
      message(paste("Installation du package :", pkg))
      install.packages(pkg)
    } else {
      message(paste("Déjà installé :", pkg))
    }
  }

  message("Installation terminée.")
}

# Lancer l'installation
install_from_requirements()
