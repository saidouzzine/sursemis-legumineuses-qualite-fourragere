#' Charger l'ensemble des jeux de données du projet
#'
#' Cette fonction importe toutes les bases nécessaires à l'analyse :
#' données brutes, données légumineuses et jeux annuels (2012–2014).
#'
#' @param root Chemin racine du répertoire.
#' @param folder Sous-dossier contenant les fichiers CSV.
#'
#' @return Une liste nommée contenant les data.frames importés.
#' @examples
#' data <- load_datasets("C:/Users/souzzine/Desktop/", "ouzzine/StageINRA/Database/")
#'
#' @export
load_datasets <- function(root, folder) {
  path <- paste0(root, folder)

  read <- function(file) read.csv2(paste0(path, file))

  list(
    Mydata   = read("DonneesBrutes.csv"),
    dataleg  = read("datalegum.csv"),
    Mydata1  = read("database2012.csv"),
    dataleg1 = read("dataleg2012.csv"),
    Mydata2  = read("database2013.csv"),
    dataleg2 = read("dataleg2013.csv"),
    Mydata3  = read("database2014.csv"),
    dataleg3 = read("dataleg2014.csv")
  )
}
