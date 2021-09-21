#' Function destined to get climate information for all meteorological stations in Brazil
#'
#' @param year Year of interest
#'
#' @export

get_base_inmet <- function(year){

  suppressWarnings({
  url = paste0("https://portal.inmet.gov.br/uploads/dadoshistoricos/", year,".zip")
  temp = tempfile()
  utils::download.file(url, temp)
  temp = utils::unzip(temp)
  base = furrr::future_map_dfr(temp, get_clima_info)
  unlink(temp)
  unlink(year, recursive =T)
  })
  #name = paste0("Bases/clima/clima", year,".rds")
  #saveRDS(base, name)

  return(base)
}
