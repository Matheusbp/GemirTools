#' Discrete scales to use for ggplot2
#'
#' These functions calculate the amount of Carbon in each plant +
#' the carbon sequestered after some years after cut the trees
#'
#'
#' @param dap_palmeira DAP da palmeira [cm]
#' @param dap_arvere DAP da árvore na equação geral [cm]
#' @param altura Altura da árvore [m]
#' @param densidade_madeira Densidade da madeira na equação geral [g/cm^3]
#' @param diam_base Diametro da base do café [cm]
#' @param dap DAP da arvore [cm]
#' @param carbono_biomassa_arvores O carbono total da especie [kgC or tC]
#' @param anos Anos pós corte
#' @param wwf_fraction 0.24 from Verra
#' @param slf_class 0.12 from Verra 
#' @param fo 0.86 from Verra
#' @param crown_diameter Dimetro da copa do arbusto [m]
#' @param altura_arbusto Altura do arbusto [cm]
#' 
#' @return The output returns the amount of Carbon in each plant or 
#' the carbon sequesteres after cutting trees (if using carbono_produto_madeira())
#'
#' @examples
#' arbusto_carbon(100, 0.30)

#' @export

#### Palmeira

# Em Velasco, 2009: Estimativa de sequestro de carbono em mata ciliar: projeto 
# POMAR, São Paulo (SP) / Estimate of carbon sequestration in riparian forests:
#  the POMAR project case, São Paulo (SP), foi utilizado a equação 1 para
#   Palmeiras:

palmeira_carbon <- function(dap_palmeira){
  return(0.48 * exp(-1.497 + 2.548 * log(dap_palmeira)))
}  


#' @export
#### Espécies em geral com DAP >= 5 cm


# Alves, 2010, Vieira, 2008, usaram a equação de Chave et al. 2005 (equação 4) 
# para árvores com DAP >= 5 cm (conforme artigo do Chave).


# ABG = exp (−2.977 + ln(rho * DBH^2 * H)) (4)


# Em que rho é a densidade da madeira (g/cm-3), AGB é expresses AGB in kg as 
# a function of diameter at breast height (dbh), total tree height, and average 
# wood density.
general_carbon <- function(dap_arvere, altura, densidade_madeira){
  return(0.48 * exp(−2.977 + log(densidade_madeira * dap_arvere^2 * altura)))
}

#' @export
#### Café arábica

# Já Meirelles, 2018 (CARACTERIZAÇÃO DO ESTOQUE DE CARBONO E EQUAÇÕES 
# ALOMÉTRICAS PARA ESTIMATIVA DE BIOMASSA DE CAFEEIROS ASSOCIADOS À GREVÍLEAS),
#  estudo localizado nas regiões do Planalto da Conquista e Chapada Diamantina, 
#  Bahia.

coffee_carbon <- function(diam_base){
  return(0.48 * (-1.6877 + 1.3923 * diam_base))
}

#' @export
#### Banana
#de correa, 2013a = -3,98414; b = 2,20132

banana_carbon <- function(dap){
  return(0.48 * exp(-3.98414 + 2.20132 * log(dap)))
}

#' @export
#### jussara
#de correa, 2013 a = -2,34626; b = 0,79482


jussara_carbon <- function(dap, altura){
  return(0.48 * exp(-2.34626 + 0.79482 * log(dap^2 * altura)))
}

#' @export
carbono_produto_madeira <- function(carbono_biomassa_arvores, anos, 
                                    wwf_fraction = 0.24, 
                                    slf_class = 0.12,
                                    fo = 0.86){
  # carbono_biomassa_arvores = o carbono total da especie y
  # 
  # wwf = Wood waste fraction of wood products ty immediately emitted through mill 
  #  inefficiency
  # slf = Short-lived fraction of wood products of type ty that will be emitted to the atmosphere 
  #  within 3 years of timber harvest
  # of = Oxidized fraction of wood products
  # 
  # 
  # Valores já estao tabelados na metodologia
  
  #wwf -é carbono_biomassa_arvores * wwf_fraction
  wwf = carbono_biomassa_arvores * wwf_fraction
  
  #slf class é a classe tabelada , tipo sawnwood é 0.12 (metodologia)
  slf = (carbono_biomassa_arvores - wwf) * slf_class
  
  #of é calculado por cada ano (table 1)
  #anos é anos após a criação do produto
  if(anos > 20){
    anos = 20
  }
  of = ((carbono_biomassa_arvores - wwf) - slf) * (fo * (anos/20))
  
  #equação total
  carbono_sequestrado_produtos = carbono_biomassa_arvores - wwf - slf - of
  
  return(carbono_sequestrado_produtos)
}

#' @export
#### arbustos

arbusto_carbon <- function(altura_arbusto, crown_diameter){
  return(0.47 * exp(-0.37 + (1.903 * log(crown_diameter)) + (0.652 * log(altura)) * 1.403))
}


