#' Process INMET data
#'
#' @param file File containing information about one station in INMET
#'

get_clima_info <- function(file){

  clima <- utils::read.csv(file = file,
         skip = 8, 
         dec = ",",
         sep = ";",
         header=TRUE,
         fileEncoding = "ISO-8859-1")

  caract <- data.table::fread(
    file = file,
    nrows = 8,
    header = FALSE,
    col.names= c("caract","value"))

  clima <- dplyr::select(clima, - X)

  names(clima) <- change_names(clima)

  clima$regiao <- caract[1,2]
  clima$uf <- caract[2,2]
  clima$estacao <- caract[3,2]
  clima$codigo <- caract[4,2]
  clima$latitude <- readr::parse_number(gsub(",","\\.",caract[5,2]))
  clima$longitude <- readr::parse_number(gsub(",","\\.",caract[6,2]))
  clima$altitude <- readr::parse_number(gsub(",","\\.",caract[7,2]))
  clima$data_fundacao <- get_data(as.character(caract[8,2]))

  clima[clima == -9999] <- NA
  clima <- dplyr::mutate(clima, data = as.character(data))
  clima[,3:19] <- clima[,3:19] %>% lapply(as.numeric)
  clima$hora <- as.numeric(substr(clima$hora, 1,2))

  return(clima)
}
