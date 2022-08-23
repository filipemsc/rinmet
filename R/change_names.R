#' Function destined to change names of the INMET dataset
#'
#' @param data A INMET dataset
#'

change_names <- function(data){
  names(data) = tolower(names(data))
  names(data) = stringi::stri_trans_general(str = names(data),
                                            id = "Latin-ASCII")
  names(data) = new_names(data,"data","data")
  names(data) = new_names(data,"^hora","hora")
  names(data) = new_names(data,"precipitacao.*total","precipitacao_total")
  names(data) = new_names(data,"pressao.*nivel","pressao_atm_nivel")
  names(data) = new_names(data,"pressao.*max","pressao_atm_max")
  names(data) = new_names(data,"pressao.*min","pressao_atm_min")
  names(data) = new_names(data,"radiacao","radiacao_global")
  names(data) = new_names(data,"temperatura.*bulbo.*horaria","temp_bulbo_hora")
  names(data) = new_names(data,"temperatura.*maxima","temp_max")
  names(data) = new_names(data,"temperatura.*minima","temp_min")
  names(data) = new_names(data,"temperatura.*ponto.*orvalho","temp_orvalho")
  names(data) = new_names(data,"temperatura.*orvalho.*min","temp_orv_min")
  names(data) = new_names(data,"temperatura.*orvalho.*max","temp_orv_max")
  names(data) = new_names(data,"umidade.*relativa.*horaria","umid_rel_hora")
  names(data) = new_names(data,"umidade.*rel.*max","umid_rel_max")
  names(data) = new_names(data,"umidade.*rel.*min","umid_rel_min")
  names(data) = new_names(data,"vento.*direcao","vento_direcao")
  names(data) = new_names(data,"vento.*rajada.*maxima","vento_rajada_max")
  names(data) = new_names(data,"vento.*velocidade","vento_velocidade")
  
  return(names(data))
}
