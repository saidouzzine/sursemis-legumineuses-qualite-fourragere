#' Visualiser le rendement selon les facteurs expérimentaux
#'
#' Produit un graphique lattice permettant d'explorer la distribution du rendement
#' en fonction des espèces, de la fertilisation, du temps et des répétitions.
#'
#' @param df Jeu de données contenant Rendt, Esp, Fert, Time, Rep.
#'
#' @return Un objet graphique lattice.
#' @export
plot_rendement <- function(df) {
  lattice::xyplot(
    Rendt ~ Esp | Time * Rep,
    data = df,
    groups = Fert,
    type = "p",
    auto.key = list(space = "right"),
    scales = list(x = list(rot = 45)),
    ylab = "Rendement",
    main = "Rendement en fonction des espèces et de la fertilisation"
  )
}
