###############################################################################
# main.R
# Script principal orchestrant l'ensemble du workflow d'analyse
# du projet "Sursemis de légumineuses"
#
# Auteur : Said Ouzzine
# Contact : https://www.linkedin.com/in/said-ouzzine/
###############################################################################

# ---------------------------------------------------------------------------
# 1. Chargement des dépendances
# ---------------------------------------------------------------------------

source("install_packages.R")  # installe les packages listés dans requirements.txt

library(nlme)
library(lme4)
library(lattice)
library(stats)
library(methods)

# ---------------------------------------------------------------------------
# 2. Chargement des modules du package
# ---------------------------------------------------------------------------

source("R/load_data.R")
source("R/factor_conversion.R")
source("R/plot_rendement.R")
source("R/model_rendement.R")
source("R/model_legumineuses.R")
# Ajouter d'autres modules si nécessaires :
# source("R/model_nutrition.R")
# source("R/utils_diagnostics.R")

# ---------------------------------------------------------------------------
# 3. Importation des données
# ---------------------------------------------------------------------------

root_path   <- "C:/Users/souzzine/Desktop/"
folder_path <- "ouzzine/StageINRA/Database/"

datasets <- load_datasets(root_path, folder_path)

Mydata   <- datasets$Mydata
dataleg  <- datasets$dataleg
Mydata1  <- datasets$Mydata1
dataleg1 <- datasets$dataleg1
Mydata2  <- datasets$Mydata2
dataleg2 <- datasets$dataleg2
Mydata3  <- datasets$Mydata3
dataleg3 <- datasets$dataleg3

# ---------------------------------------------------------------------------
# 4. Conversion des covariables en facteurs
# ---------------------------------------------------------------------------

Mydata   <- convert_to_factors(Mydata)
dataleg  <- convert_to_factors(dataleg)
Mydata1  <- convert_to_factors(Mydata1)
dataleg1 <- convert_to_factors(dataleg1)
Mydata2  <- convert_to_factors(Mydata2)
dataleg2 <- convert_to_factors(dataleg2)
Mydata3  <- convert_to_factors(Mydata3)
dataleg3 <- convert_to_factors(dataleg3)

# ---------------------------------------------------------------------------
# 5. Visualisations exploratoires
# ---------------------------------------------------------------------------

print("Génération des graphiques de rendement...")
plot_rendement(Mydata)
plot_rendement(dataleg)

# ---------------------------------------------------------------------------
# 6. Modélisation : Rendement (global)
# ---------------------------------------------------------------------------

print("Ajustement des modèles mixtes pour le rendement...")
model_rendt <- fit_mixed_model_rendt(Mydata)

print("Meilleur modèle sélectionné (rendement) :")
print(model_rendt$best_model)

# ---------------------------------------------------------------------------
# 7. Modélisation : Légumineuses (global)
# ---------------------------------------------------------------------------

print("Ajustement des modèles mixtes pour les légumineuses...")
model_leg <- fit_mixed_model_legumes(dataleg)

print("Meilleur modèle sélectionné (légumineuses) :")
print(model_leg$best_model)

# ---------------------------------------------------------------------------
# 8. (Optionnel) Modélisation nutritionnelle
# ---------------------------------------------------------------------------

# model_nut <- fit_mixed_model_nutrition(Mydata)
# print(model_nut$best_model)

# ---------------------------------------------------------------------------
# 9. Fin du workflow
# ---------------------------------------------------------------------------

print("Analyse terminée avec succès.")
print("Consultez les objets 'model_rendt' et 'model_leg' pour les résultats.")
