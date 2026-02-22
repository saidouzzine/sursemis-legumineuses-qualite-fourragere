#' Convertir les covariables en facteurs
#'
#' Applique une conversion standardisée des colonnes Time, Rep, Esp et Fert
#' en facteurs, si elles existent dans le jeu de données.
#'
#' @param df Un data.frame contenant les colonnes à convertir.
#'
#' @return Le data.frame modifié.
#' @export
convert_to_factors <- function(df) {
  cols <- c("Time", "Rep", "Esp", "Fert")
  for (c in cols) {
    if (c %in% names(df)) df[[c]] <- as.factor(df[[c]])
  }
  df
}
