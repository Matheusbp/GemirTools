#' Set of Carbon equations of ABG
#'
#' These functions calculate the amount of Carbon in each plant +
#' the carbon sequestered after some years after cut the trees
#'
#'
#' @param dap DAP da arvore [cm]
#' @param altura Altura da árvore [m]
#' @param densidade_madeira Densidade da madeira na equação geral [g/cm^3]
#' @param diam_base Diametro da base do café [cm]
#' @param crown_diameter Dimetro da copa do arbusto [m]
#' @param altura_arbusto Altura do arbusto [cm]
#'
#' @return The output returns the amount of Carbon in each plant
#'
#' @note References
#' Velasco, 2009: Estimativa de sequestro de carbono em mata ciliar: projeto POMAR, São Paulo (SP) / Estimate of carbon sequestration in riparian forests: the POMAR project case, São Paulo (SP). Ambiência, 5, 135–141.
#' Vieira, S. A., and Coauthors, 2008: Estimation of biomass and carbon stocks: The case of the Atlantic Forest. Biota Neotrop., 8, 21–29, https://doi.org/10.1590/S1676-06032008000200001.
#' Alves, L. F., S. A. Vieira, M. A. Scaranello, P. B. Camargo, F. A. M. Santos, C. A. Joly, and L. A. Martinelli, 2010: Forest structure and live aboveground biomass variation along an elevational gradient of tropical Atlantic moist forest (Brazil). For. Ecol. Manage., 260, 679–691, https://doi.org/10.1016/j.foreco.2010.05.023.
#' Chave, J., and Coauthors, 2005: Tree allometry and improved estimation of carbon stocks and balance in tropical forests. Oecologia, 145, 87–99, https://doi.org/10.1007/s00442-005-0100-x.
#' Meireles, 2018: CARACTERIZAÇÃO DO ESTOQUE DE CARBONO E EQUAÇÕES ALOMÉTRICAS PARA ESTIMATIVA DE BIOMASSA DE CAFEEIROS ASSOCIADOS À GREVÍLEAS. 0–155.
#' Corrêa, A., 2013: AGROFLORESTA, E C O L O G I A e SOCIEDADE.
#' Conti, G., and Coauthors, 2019: Developing allometric models to predict the individual aboveground biomass of shrubs worldwide. Glob. Ecol. Biogeogr., 28, 961–975, https://doi.org/10.1111/geb.12907.
#'
#'
#'
#'
#'
#' @examples
#' arbusto_carbon(100, 0.30)
#' @rdname carbon_equations
#' @export
#### Palmeira

# Em Velasco, 2009: Estimativa de sequestro de carbono em mata ciliar: projeto
# POMAR, São Paulo (SP) / Estimate of carbon sequestration in riparian forests:
#  the POMAR project case, São Paulo (SP), foi utilizado a equação 1 para
#   Palmeiras:

palmeira_carbon <- function(dap) {
  return(0.48 * exp(-1.497 + 2.548 * log(dap)))
  return(0.48 * exp(-1.497 + 2.548 * log(dap)))
}


#' @rdname carbon_equations
#' @export
#### Espécies em geral com DAP >= 5 cm


# Alves, 2010, Vieira, 2008, usaram a equação de Chave et al. 2005 (equação 4)
# para árvores com DAP >= 5 cm (conforme artigo do Chave).


# ABG = exp (-2.977 + ln(rho * DBH^2 * H)) (4)


# Em que rho é a densidade da madeira (g/cm-3), AGB é expresses AGB in kg as
# a function of diameter at breast height (dbh), total tree height, and average
# wood density.
general_carbon <- function(dap, altura, densidade_madeira) {
  return(0.48 * exp(-2.977 + log(densidade_madeira * dap^2 * altura)))
}

#' @rdname carbon_equations
#' @export
#### Café arábica

# Já Meirelles, 2018 (CARACTERIZAÇÃO DO ESTOQUE DE CARBONO E EQUAÇÕES
# ALOMÉTRICAS PARA ESTIMATIVA DE BIOMASSA DE CAFEEIROS ASSOCIADOS À GREVÍLEAS),
#  estudo localizado nas regiões do Planalto da Conquista e Chapada Diamantina,
#  Bahia.

coffee_carbon <- function(diam_base) {
  return(0.48 * (-1.6877 + 1.3923 * diam_base))
}

#' @rdname carbon_equations
#' @export
#### Banana
# de correa, 2013a = -3,98414; b = 2,20132

banana_carbon <- function(dap) {
  return(0.48 * exp(-3.98414 + 2.20132 * log(dap)))
}

#' @rdname carbon_equations
#' @export
#### jussara
# de correa, 2013 a = -2,34626; b = 0,79482


jussara_carbon <- function(dap, altura) {
  return(0.48 * exp(-2.34626 + 0.79482 * log(dap^2 * altura)))
}


#' @rdname carbon_equations
#' @export
#### arbustos
# conti, 2019
arbusto_carbon <- function(altura_arbusto, crown_diameter) {
  return(0.47 * exp(-0.37 + (1.903 * log(crown_diameter)) + (0.652 * log(altura)) * 1.403))
}
