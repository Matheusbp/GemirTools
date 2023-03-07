#' Set of Carbon equations of ABG
#'
#' These functions calculate the amount of Carbon in each plant in kg
#' per individual.
#'
#'
#' @param dap DAP da arvore [cm]
#' @param altura Altura da árvore [m]
#' @param densidade_madeira Densidade da madeira na equação geral [g/cm^3]
#' @param diam_base Diametro da base do café [cm]
#' @param diam_30cm Diâmetro da altura de 30 cm [cm]
#' @param crown_diameter Dimetro da copa do arbusto [m]
#' @param altura_arbusto Altura do arbusto [m]
#' @param idade Idade da árvore [anos]
#' @param porc_C from IPCC Porcentagem da biomassa referente ao carbono (C)/100 = 0.47
#'
#'
#' @return The output returns the amount of Carbon in each plant [kg]
#'
#'
#' @examples
#' arbusto_carbon(100, 0.30)
#'
#' @note {
#'
#' Note que o dado da Euterpe oleracea nos dá direto os kg de carbono (C) de cada planta, nao necessitando usar porc_C.
#'
#' References
#'
#' Velasco, 2009: Estimativa de sequestro de carbono em mata ciliar: projeto POMAR, São Paulo (SP) / Estimate of carbon sequestration in riparian forests: the POMAR project case, São Paulo (SP). Ambiência, 5, 135-141.
#'
#' Vieira, S. A., Alves, L. F., Aidar, M., Araújo, L. S., Baker, T., Batista, J. L. F., Campos, M. C., Camargo, P. B., Chave, J., Delitti, W. B. C., Higuchi, N., Honorio, E., Joly, C. A., Keller, M., Martinelli, L. A., de Mattos, E. A., Metzker, T., Phillips, O., dos Santos, F. A. M., … Trumbore, S. E. (2008). Estimation of biomass and carbon stocks: The case of the Atlantic Forest. Biota Neotropica, 8(2), 21-29. https://doi.org/10.1590/S1676-06032008000200001
#'
#' Alves, L. F., S. A. Vieira, M. A. Scaranello, P. B. Camargo, F. A. M. Santos, C. A. Joly, and L. A. Martinelli, 2010: Forest structure and live aboveground biomass variation along an elevational gradient of tropical Atlantic moist forest (Brazil). For. Ecol. Manage., 260, 679-691, https://doi.org/10.1016/j.foreco.2010.05.023.
#'
#' Chave, J., and Coauthors, 2005: Tree allometry and improved estimation of carbon stocks and balance in tropical forests. Oecologia, 145, 87-99, https://doi.org/10.1007/s00442-005-0100-x.
#'
#' Meireles, 2018: CARACTERIZAÇÃO DO ESTOQUE DE CARBONO E EQUAÇÕES ALOMÉTRICAS PARA ESTIMATIVA DE BIOMASSA DE CAFEEIROS ASSOCIADOS À GREVÍLEAS. 0-155.
#'
#' Corrêa, A., 2013: AGROFLORESTA, E C O L O G I A e SOCIEDADE.
#'
#' Conti, G., and Coauthors, 2019: Developing allometric models to predict the individual aboveground biomass of shrubs worldwide. Glob. Ecol. Biogeogr., 28, 961-975, https://doi.org/10.1111/geb.12907.
#'
#' IPCC (Intergovernmental Panel on Climate Change). Forest Lands. In Intergovernmental Panel on Climate Change Guidelines for National Greenhouse Gas Inventories; Institute for Global Environmental Strategies (IGES): Hayama, Japan, 2006; p. 83. Available online: https://www.ipcc-nggip.iges.or.jp/public/2006gl/ (accessed on 22 March 2022).
#'
#' de Miranda, D. L. C., Sanquetta, C. R., Costa, L. G. da S., & Corte, A. P. D. (2012). Biomassa e carbono em Euterpe oleracea Mart., na Ilha do Marajó - PA. Floresta e Ambiente, 19(3), 336-343. https://doi.org/10.4322/floram.2012.039
#' Somarriba, E., and Coauthors, 2013: Carbon stocks and cocoa yields in agroforestry systems of Central America. Agric. Ecosyst. Environ., 173, 46-57, https://doi.org/10.1016/j.agee.2013.04.013.
#'
#'Allometric equations for estimating biomass of euterpe precatoria, the most abundant palm species in the Amazon, da Silva, 2015;
#'
#'Ètz Schroth, G., Agra, S. D., Geraldes Teixeira, W., Haag, D., & Lieberei, R. (2002). Conversion of secondary forest into agroforestry and monoculture plantations in Amazonia: consequences for biomass, litter and soil carbon stocks after 7 years. In Forest Ecology and Management (Vol. 163).
#'
#'Saha, C., Mahmood, H., Nayan, S. N. S., Siddique, M. R. H., Abdullah, S. M. R., Islam, S. M. Z., Iqbal, M. Z., & Akhter, M. (2021). Allometric biomass models for the most abundant fruit tree species of Bangladesh: A Non-destructive approach. Environmental Challenges, 3. https://doi.org/10.1016/j.envc.2021.100047
#'
#'Gomes, J. P. (2017). EQUAÇÕES DE VOLUME E BIOMASSA PARA PLANTIOS DE Acacia mangium Willd. EM ÁREA DE SAVANA, EM RORAIMA.
#'
#'Carneiro de Miranda, D. L., Galvão de Melo, A. C., & Sanquetta, C. R. (2011). Equações alométricas para estimativa de biomassa e carbono em árvores de reflorestamentos de restauração (Vol. 35).
#'
#' Malimbwi, R.E. & E., R. & Eid, Tron & Chamshama, Shabani & O., S.. (2016). Allometric volume and biomass models in Tanzania. 10.13140/RG.2.1.1891.5445.
#'
#'Araújo, L. S. (2022). TEOR DE CARBONO ESTOCADO EM PLANTIOS Khaya grandifoliola DE ORIGEM SEMINAL E CLONAL. Available in https://repositorio.uemasul.edu.br/server/api/core/bitstreams/9d4e1ff7-dc96-4062-a7c7-dc52a12a6f7f/content
#'
#'Higuchi. (1998). Biomassa da parte aérea da vegetação da floresta tropical Úmida de Terra-Firme da Amazônia Brasileira. Acta Amazonica, 28 (2), 153-166. http://www.scielo.br/pdf/aa/v28n2/1809-4392-aa-28-2-0153.pdf
#'
#' }
#' @rdname carbon_equations
#' @export
#### Palmeira

# Em Velasco, 2009: Estimativa de sequestro de carbono em mata ciliar: projeto
# POMAR, São Paulo (SP) / Estimate of carbon sequestration in riparian forests:
#  the POMAR project case, São Paulo (SP), foi utilizado a equação 1 para
#   Palmeiras:

palmeira_carbon <- function(dap,
                            porc_C = 0.47) {
  return(porc_C * exp(-1.497 + 2.548 * log(dap)))
}


#' @rdname carbon_equations
#' @export
#### Espécies em geral com DAP >= 5 cm


# Alves, 2010, Vieira, 2008, usaram a equação de Chave et al. 2005 (equação 4)
# para árvores com DAP >= 5 cm (conforme artigo do Chave).


# Em que rho é a densidade da madeira (g/cm-3), AGB é expresses AGB in kg as
# a function of diameter at breast height (dbh), total tree height, and average
# wood density.
general_carbon <- function(dap, altura, densidade_madeira,
                           porc_C = 0.47) {
  return(porc_C * exp(-2.977 + log(densidade_madeira * dap^2 * altura)))
}

#' @rdname carbon_equations
#' @export
#### Café arábica

# Já Meirelles, 2018 (CARACTERIZAÇÃO DO ESTOQUE DE CARBONO E EQUAÇÕES
# ALOMÉTRICAS PARA ESTIMATIVA DE BIOMASSA DE CAFEEIROS ASSOCIADOS À GREVÍLEAS),
#  estudo localizado nas regiões do Planalto da Conquista e Chapada Diamantina,
#  Bahia.

coffee_carbon <- function(diam_base,
                          porc_C = 0.47) {
  return(porc_C * (-1.6877 + 1.3923 * diam_base))
}

#' @rdname carbon_equations
#' @export
#### Banana
# de correa, 2013a = -3,98414; b = 2,20132

banana_carbon <- function(dap,
                          porc_C = 0.47) {
  return(porc_C * exp(-3.98414 + 2.20132 * log(dap)))
}

#' @rdname carbon_equations
#' @export
#### jussara
# de correa, 2013 a = -2,34626; b = 0,79482


jussara_carbon <- function(dap, altura,
                           porc_C = 0.47) {
  return(porc_C * exp(-2.34626 + 0.79482 * log(dap^2 * altura)))
}


#' @rdname carbon_equations
#' @export
#### arbustos
# conti, 2019
arbusto_carbon <- function(altura_arbusto, crown_diameter,
                           porc_C = 0.47) {
  return(porc_C * exp(-0.37 + (1.903 * log(crown_diameter)) + (0.652 * log(altura_arbusto)) * 1.403))
}

#' @rdname carbon_equations
#' @export

#### cacau
# Somarriba, 2013
cacau_carbon <- function(altura, diam_30cm,
                         porc_C = 0.47) {
  return(porc_C * 10^(-1.684 + 2.158 * log10(diam_30cm) + 0.892 * log10(altura)))
}

#' @rdname carbon_equations
#' @export
#### Euterpe oleracea Mart.
# de De miranda D. et al 2012
euterpe_oleracea_carbon <- function(dap) {
  return(-2.22017  +  (2.29353 * dap) + (0.0148155 * dap^2))
}


#' @rdname carbon_equations
#' @export
#### Euterpe precatoria.
# de da Silva, et al. 2015, porém a equação vem de goodman et.al 2013
# pois teve menor erro para amazonia
euterpe_precatoria_carbon <- function(altura, porc_C = 0.47) {
  return(porc_C * ( (13.59 * altura) - 108.8) )
}


#' @rdname carbon_equations
#' @export
#### citrus sp
# schroth 2002 mas está no no anexo 4.2 do IPCC Good Practice Guidance
# for Land Use, Land-Use Change and Forestry.
# Neste doc tem equações de biomassa de VÁRIAS espécies
citrus_carbon <- function(diam_30cm, porc_C = 0.47){
  ab = pi * ((diam_30cm^2) / 4) #area basal BA = basal area, cm2
  return(porc_C * ( -6.64 + (0.279 * ab) + (0.000514 * ab^2) ))
}


#' @rdname carbon_equations
#' @export
#### jaqueira - Artocarpus heterophyllus sp
# saha et. al 2021 nos dá o total aboveground biomass kg/tree
jaqueira_carbon <- function(dap, porc_C = 0.47) {
   return(porc_C * ( exp(-0.8971 + 1.9908 * log(dap))) )
}


#' @rdname carbon_equations
#' @export
#### acacia - Acacia mangium
# gomes J, 2017
acacia_carbon <- function(dap, porc_C = 0.47) {
  return(porc_C * (0.4103 * (dap^2.3315)) )
}


#' @rdname carbon_equations
#' @export
#### especies com crecimento lento descrito em
# Carneiro D miranda, 2011
crescimento_lento_carbon <- function(dap, altura, porc_C = 0.47) {

  if(length(dap == 1)){
    dq <- dap
  }else{
    dq <- sqrt(sum(dap^2))
               }

  return(porc_C * ( 3.78824 + 0.0474763 * (dq^2 * altura) ))
}


#' @rdname carbon_equations
#' @export
#### especies com crecimento medio descrito em
# Carneiro D miranda, 2011
crescimento_medio_carbon <- function(dap, idade, altura, porc_C = 0.47) {

  if(length(dap == 1)){
    g = pi * ( (dap^2) / 4) #area transversal
  }else{
    g <- sum(pi * ( (dap^2) / 4))
  }

  dm = max(dap)

  return(porc_C * ( 30.1977 - 494.53 * (g^2) * dm + 1346.73 * (g^2) * idade + 24.563 * (altura^2) * g ))

}


#' @rdname carbon_equations
#' @export
#### especies com crecimento rapido descrito em
# Carneiro D miranda, 2011
crescimento_rapido_carbon <- function(dap, idade, altura, porc_C = 0.47) {

  if(length(dap == 1)){
    g <- pi * ( (dap^2) / 4) #area transversal
  }else{
    g <- sum(pi * ( (dap^2) / 4))
  }

  return(porc_C * ( -3.99732 + 353.976 * g * altura + 0.0168609 * (idade^2) * altura))

}


#' @rdname carbon_equations
#' @export
#### pupunha
# schroth 2002 mas está no no anexo 4.2 do IPCC Good Practice Guidance for Land Use, Land-Use Change and Forestry
pupunha_carbon <- function(dap, porc_C = 0.47) {

  ab = pi * ((dap^2) / 4) #area basal BA = basal area, cm2

  return(porc_C * ( 0.97 + 0.078 * ab - 0.00094 * ab^2 + 0.0000064 * ab^3 ))

}


#' @rdname carbon_equations
#' @export
#### castanheira do brasil
# schroth 2002 mas está no no anexo 4.2 do IPCC Good Practice Guidance for Land Use, Land-Use Change and Forestry
castanheira_carbon <- function(dap, porc_C = 0.47) {

  ab = pi * ((dap^2) / 4) #area basal BA = basal area, cm2

  return(porc_C * ( -18.1 + 0.663 * ab + 0.000384 * ab^2 ))

}


#' @rdname carbon_equations
#' @export
### coco gigante
### Malimbwi, R.E. & E., R. & Eid, Tron & Chamshama, Shabani & O., S.. (2016). Allometric volume and biomass models in Tanzania. 10.13140/RG.2.1.1891.5445.
coco_carbon <- function(altura,
                        porc_C = 0.47) {
  return(porc_C * (3.7964 * altura^1.8130))
}


#' @rdname carbon_equations
#' @export
### eucalipto
### (4) Senelwa and Sims, 1998 mas está no no anexo 4.2 do IPCC Good Practice Guidance for Land Use, Land-Use Change and Forestry
eucalipto_carbon <- function(dap, altura,
                             porc_C = 0.47) {
  return(porc_C * (1.22 * dap^2 * altura * 0.01))
}


#' @rdname carbon_equations
#' @export
### teca
### Pérez and Kanninen, 2003 mas está no no anexo 4.2 do IPCC Good Practice Guidance for Land Use, Land-Use Change and Forestry
teca_carbon <- function(dap,
                        porc_C = 0.47) {
  return(porc_C * (0.153 * (dap^2.382)))
}


#' @rdname carbon_equations
#' @export
### cupuacu
###  schroth 2002 mas está no no anexo 4.2 do IPCC Good Practice Guidance for Land Use, Land-Use Change and Forestry
cupuacu_carbon <- function(diam_30cm,
                        porc_C = 0.47) {

  ab = pi * ((diam_30cm^2) / 4) #area basal BA = basal area, cm2

  return(porc_C * (-3.9 + 0.23 * ab + 0.0015 * (ab^2)))
}


#' @rdname carbon_equations
#' @export
### general_tropical umida amazonia
### Higuchi, 1998 e araujo 2022
### https://repositorio.uemasul.edu.br/server/api/core/bitstreams/9d4e1ff7-dc96-4062-a7c7-dc52a12a6f7f/content
general_carbon_higuchi <- function(dap, altura,
                             porc_C = 0.47) {
  return(porc_C * ( -2.694 + 2.038 * log(dap) + 0.902 * log(altura)))
}

