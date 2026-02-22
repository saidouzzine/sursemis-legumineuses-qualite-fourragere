# sursemis-legumineuses-qualite-fourragere
Analyse statistique d’un essai agronomique évaluant l’effet du sur-semis de légumineuses sur le rendement, la composition floristique et la qualité nutritionnelle du fourrage (MAT, ADF, DMO) à l’aide de modèles mixtes et ANOVA sous R.

# Analyse statistique du sursemis de légumineuses : Modèles mixtes, ANOVA et exploration multi‑annuelle

[![R](https://img.shields.io/badge/R-Statistical%20Computing-276DC3)]()
[![lme4](https://img.shields.io/badge/Models-lme4%20%7C%20nlme-orange)]()
[![DataScience](https://img.shields.io/badge/Focus-Data%20Science-green)]()
[![Agronomy](https://img.shields.io/badge/Domain-Agronomie-lightgrey)]()
[![Reproductible](https://img.shields.io/badge/Workflow-Reproductible-blue)]()

## 1. Objectif du projet

Ce projet présente une analyse statistique complète visant à évaluer l’impact du **sursemis de légumineuses** sur :
- la **production fourragère**,  
- la **dynamique floristique**,  
- la **qualité nutritionnelle** du fourrage (MAT, ADF, DMO).

L’étude repose sur trois années de données expérimentales et mobilise des méthodes avancées de modélisation statistique.

## 2. Approche analytique

L’analyse combine plusieurs dimensions :
1. **Exploration descriptive** des données multi‑factorielles (espèces, fertilisation, répétitions, années).  
2. **Modélisation statistique robuste** via :
   - ANOVA multi‑facteurs,
   - ANOVA à mesures répétées,
   - modèles linéaires mixtes (effets fixes + aléatoires).
3. **Comparaison de structures aléatoires** pour identifier la modélisation la plus pertinente selon l’AIC.
4. **Diagnostics de modèles** : résidus, normalité, variances, interactions.
5. **Analyse annuelle** pour isoler les effets temporels.

Cette démarche permet d’obtenir une vision fine des mécanismes influençant le rendement et la qualité du fourrage.

## 3. Compétences mises en œuvre

### 3.1 Data Science & Statistiques
- Construction et nettoyage de jeux de données multi‑sources.  
- Modélisation avancée : `lme`, `lmer`, ANOVA multi‑facteurs.  
- Sélection de modèles, interprétation statistique, validation d’hypothèses.  
- Visualisation scientifique avec `lattice`.

### 3.2 R & Workflow analytique
- Structuration d’un pipeline reproductible.  
- Automatisation de l’import, transformation et analyse.  
- Production de graphiques multi‑dimensions.  

### 3.3 Expertise métier
- Compréhension des systèmes prairiaux et des enjeux agronomiques.  
- Analyse des interactions entre espèces, fertilisation et dynamique annuelle.  
- Interprétation des impacts sur la qualité fourragère.

## 4. Contenu du dépôt

Le dépôt contient :
- les scripts R d’analyse statistique,
- les jeux de données structurés par année,
- les visualisations et diagnostics de modèles,
- une organisation claire pour faciliter la reproductibilité.

```
├── data/
│   ├── DonneesBrutes.csv
│   ├── datalegum.csv
│   ├── database2012.csv
│   ├── dataleg2012.csv
│   ├── database2013.csv
│   ├── dataleg2013.csv
│   ├── database2014.csv
│   └── dataleg2014.csv
├── scripts/
  ├── load_data.R
  ├── factor_conversion.R
  ├── plot_rendement.R
  ├── model_rendement.R
  ├── model_legumineuses.R
  ├── model_nutrition.R
  └── utils_diagnostics.R
│   
└── README.md
```
---
## 5. Résultats clés (synthèse)

L’analyse met en évidence :
- des **effets significatifs** du sursemis selon les espèces et les modalités de fertilisation,  
- une **variabilité inter‑annuelle marquée**,  
- des **interactions fortes** entre facteurs, nécessitant des modèles mixtes,  
- des impacts mesurables sur la **qualité nutritionnelle** du fourrage.

## 6. Auteur

Projet réalisé par **Said Ouzzine**, Data Scientist spécialisé en :
- modélisation statistique,
- analyse de données agronomiques,
- pipelines R reproductibles,
- modèles mixtes et ANOVA avancées.
LinkedIn : https://www.linkedin.com/in/said-ouzzine/
  

