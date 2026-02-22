#' Ajuster un modèle mixte pour le rendement
#'
#' Compare plusieurs structures d'effets aléatoires et sélectionne
#' le meilleur modèle selon l'AIC.
#'
#' @param df Jeu de données complet.
#'
#' @return Une liste contenant les modèles testés et le meilleur modèle.
#' @export
fit_mixed_model_rendt <- function(df) {
  library(nlme)

  m1 <- lme(Rendt ~ (Time + Esp + Fert)^2, data=df, random=~1|Rep, method="ML")
  m2 <- lme(Rendt ~ (Time + Esp + Fert)^2, data=df, random=~1|Rep/Esp, method="ML")
  m3 <- lme(Rendt ~ (Time + Esp + Fert)^2, data=df, random=~1|Rep/Fert, method="ML")
  m4 <- lme(Rendt ~ (Time + Esp + Fert)^2, data=df, random=~1|Rep/Time, method="ML")

  comparison <- anova(m1, m2, m3, m4)
  best <- list(m1, m2, m3, m4)[[which.min(comparison$AIC)]]

  list(models = list(m1=m1, m2=m2, m3=m3, m4=m4), best_model = best)
}
