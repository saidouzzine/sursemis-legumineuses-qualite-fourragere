#' Ajuster un modèle mixte pour les légumineuses
#'
#' Modélise log(LegSem + 0.1) et compare plusieurs structures d'effets aléatoires.
#'
#' @param df Jeu de données légumineuses.
#'
#' @return Une liste contenant les modèles testés et le meilleur modèle.
#' @export
fit_mixed_model_legumes <- function(df) {
  library(nlme)

  m1 <- lme(log(LegSem+0.1) ~ (Time + Esp + Fert)^2, data=df, random=~1|Rep, method="ML")
  m2 <- lme(log(LegSem+0.1) ~ (Time + Esp + Fert)^2, data=df, random=~1|Rep/Esp, method="ML")
  m3 <- lme(log(LegSem+0.1) ~ (Time + Esp + Fert)^2, data=df, random=~1|Rep/Fert, method="ML")
  m4 <- lme(log(LegSem+0.1) ~ (Time + Esp + Fert)^2, data=df, random=~1|Rep/Time, method="ML")

  comparison <- anova(m1, m2, m3, m4)
  best <- list(m1, m2, m3, m4)[[which.min(comparison$AIC)]]

  list(models = list(m1=m1, m2=m2, m3=m3, m4=m4), best_model = best)
}
