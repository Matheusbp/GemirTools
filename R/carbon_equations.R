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

palmeira_carbon <- function(dap, porcentagem_peso_seco = 0.6,
                            porc_C = 0.47) {
  #a porcentagem de peso seco é 60% pq 40% é agua segundo higuchi e  está em velasco 2009
  return(porc_C * (exp(-1.497 + 2.548 * log(dap)) * porcentagem_peso_seco))
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


#' @rdname carbon_equations
#' @export
#### Espécies em geral com DAP >= 5 cm em mata atlantica restoration


# Nogueira Junior, L. R., Engel, V. L., Parrotta, J. A., de Melo, A. C. G., &
# Ré, D. S. (2014). Allometric equations for estimating tree biomass in restored
# mixed-species Atlantic Forest stands. Biota Neotropica, 14(2). https://doi.org/10.1590/1676-06032013008413
# BARU
# https://doi.org/10.1590/1676-06032013008413

general_carbon_mixed_atlantic_forest_abg <- function(dap, altura, densidade_madeira, porc_C = 0.47) {
  return(porc_C * exp(-1.305 + 1.055 * log(dap^2) + 0.34 * log(altura) + 1.077 * log(densidade_madeira)))
}

#' @rdname carbon_equations
#' @export
#### Espécies em geral com DAP >= 5 cm em mata atlantica restoration

# Nogueira Junior, L. R., Engel, V. L., Parrotta, J. A., de Melo, A. C. G., &
# Ré, D. S. (2014). Allometric equations for estimating tree biomass in restored
# mixed-species Atlantic Forest stands. Biota Neotropica, 14(2). https://doi.org/10.1590/1676-06032013008413
# BARU
# https://doi.org/10.1590/1676-06032013008413

general_carbon_mixed_atlantic_forest_bgb <- function(dap, altura, densidade_madeira, porc_C = 0.47) {
  return(porc_C * exp(-2.086 + 1.086 * log(dap^2 * densidade_madeira)))
}


#' @rdname carbon_equations
#' @export
#### Avocado - sem roots

# Shem Kuyah, Catherine Muthuri, Denis Wakaba, Athanase Rusanganwa Cyamweshi, Paul Kiprotich, Athanase Mukuralinda,
# Allometric equations and carbon sequestration potential of mango (Mangifera indica) and avocado (Persea americana) in Kenya,
# Trees, Forests and People, Volume 15, 2024, 100467, ISSN 2666-7193, https://doi.org/10.1016/j.tfp.2023.100467.
# (https://www.sciencedirect.com/science/article/pii/S2666719323000997)

avocado_carbon <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.0638 * (dap^2.5435))
}

#' @rdname carbon_equations
#' @export
#### Fitofisionomia da mata atlantica densa

# tiepolo, 2002 & VIEIRA S 2008 & fonseca et al 2024 Em caso de nao ter dados para a fitofisionomia de mata atlantica, usamos chave 2005
#

general_dense_atlantic_forest_carbon <- function(dap, porc_C){
  abg = 21.297 - 6.953 * dap + 0.74 * dap^2
  return(abg * porc_C)
}


#' @rdname carbon_equations
#' @export
#### Araucaria - sem roots

# http://bibliotecaflorestal.ufv.br/bitstream/handle/123456789/15746/Revista_Floresta_v39_n2_p232-237_2009.pdf?sequence=1
#

araucaria_carbon <- function(dap, h, porc_C){
  pvf = -929.564 + (-43.244 * dap) + (1.773 * dap^2) + (-0.013 * dap^2 * h) + (1220.484 * log(h))
  return(pvf * porc_C * 0.5) #multiplica-se por 0.5 devido a querermos a biomassa seca e aqui é peso verde do fuste! 50% é agua.
}

#' @rdname carbon_equations
#' @export
#### Cedro asustraliano - sem roots

# Ng. Polbina Monsang, Keshav Kumar Upadhyay, Rajdeep Chanda, Rajiv Pandey, Shri Kant Tripathi,
# Volumetric tree growth models for aboveground biomass estimation of Pinus kesiya and Toona ciliata in Northeast India,
# Ecological Frontiers,
# 2024,ISSN 2950-5097,
# https://doi.org/10.1016/j.ecofro.2024.04.010.
# (https://www.sciencedirect.com/science/article/pii/S2950509724000479)

cedro_australiano_carbon <- function(dap, h, densidade, porc_C = 0.47){
  return(porc_C * exp(-2.0311 + 1.4858 * log(dap * h * densidade)))
}

#' @rdname carbon_equations
#' @export
#### ============ AMAZÔNIA ============

#### Acacia mangium Willd. | Amazônia
# Estado: RR | Compartimento: Total (abaixo+acima) | R2: 0,97 | Syx: 1,7% | Peso: Fresco
# DBH range (cm): 8,0 a 300 | Autor: Gomes (2017)
# referência: GOMES, J. P. Equações de volume e biomassa para plantios de Acacia mangium Willd. em área de savana, em Roraima. Universidade Federal do Amazonas, 2017.
acacia_mearnsii_de_wild_pampa <- function(dap, porc_C = 0.47) {
  return(porc_C * 10^(-1.2874+2.80262*log10(dap)))
}

#' @rdname carbon_equations
#' @export
#### Aniba rosiodora Ducke | Amazônia
# Estado: AM | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,81 | Syx: - | Peso: Fresco
# DBH range (cm): 6,0 a 180 | Autor: Krainovic et al. (2017)
# referência: KRAINOVIC, P. et al. New allometric equations to support sustainable plantation management of rosewood (Aniba rosaeodora Ducke) in the central Amazon. Forests, v. 8, n. 9, p. 327, 2017.
aniba_rosiodora_ducke_amazonia <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * 0.31046*(dap^1.54806)*(altura^0.78635))
}

#' @rdname carbon_equations
#' @export
#### Bellucia spp. | Amazônia
# Estado: AM | Compartimento: Acima (tronco+galhos+folhas) | R2: 1,00 | Syx: - | Peso: Seco
# DBH range (cm): 1,2 a 268 | Autor: Nelson et al. (1999)
# referência: NELSON, B. W. et al. Allometric regressions for improved estimate of secondary forest biomass in the central Amazon. Forest Ecology e Management, v. 117, p. 149–167, 1999.
bellucia_spp_amazonia <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-2.4387+2.0751*log(dap)+0.5360*log(altura)))
}

#' @rdname carbon_equations
#' @export
#### Bertholletia excelsa Bonpl. | Amazônia
# Estado: AM | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,99 | Syx: 13,8% | Peso: Seco
# DBH range (cm): 6,0 a 180 | Autor: Lima (2011)
# referência: LIMA, R. M. B. Estimativa da biomassa aérea de castanha-do-Brasil (Bertholletia excelsa Humb. e Bonpl.) em plantios homogêneos no estado do Amazonas. Embrapa Amazônia Ocidental, n. 1, p. 57–61, 2011.
bertholletia_excelsa_bonpl_amazonia <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (11.247216 - 3.801515*dap + 0.301382*dap^2 + 0.020887*dap^2*altura))
}

#' @rdname carbon_equations
#' @export
#### Cecropia sciadophylla Mart. | Amazônia
# Estado: AM | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,98 | Syx: - | Peso: Seco
# DBH range (cm): 5,1 a 382 | Autor: Nelson et al. (1999)
# referência: NELSON, B. W. et al. Allometric regressions for improved estimate of secondary forest biomass in the central Amazon. Forest Ecology e Management, v. 117, p. 149–167, 1999.
cecropia_sciadophylla_mart_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-2.5118+2.4257*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Cedrela odorata L. | Amazônia
# Estado: MT | Compartimento: Total (abaixo+acima) | R2: 0,90 | Syx: - | Peso: Seco
# DBH range (cm): 10,0 a 230 | Autor: Robortella (2010)
# referência: ROBORTELLA, H. S. Equações de biomassa e estoques de carbono de seis espécies em plantios mistos no noroeste do Mato Grosso. Instituto Nacional de Pesquisas da Amazônia (INPA), 2010.
cedrela_odorata_l_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.075*(dap^2.475))
}

#' @rdname carbon_equations
#' @export
#### Ceiba speciosa (A.St.-Hil.) Ravenna | Amazônia
# Estado: MT | Compartimento: Total (abaixo+acima) | R2: 0,97 | Syx: - | Peso: Seco
# DBH range (cm): 10,0 a 420 | Autor: Robortella (2010)
# referência: ROBORTELLA, H. S. Equações de biomassa e estoques de carbono de seis espécies em plantios mistos no noroeste do Mato Grosso. Instituto Nacional de Pesquisas da Amazônia (INPA), 2010.
ceiba_speciosa_a_st_hil_ravenna_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-1.843+1.701*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Croton matourensis Aubl. | Amazônia
# Estado: AM | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,99 | Syx: - | Peso: Seco
# DBH range (cm): 2,3 a 253 | Autor: Nelson et al. (1999)
# referência: NELSON, B. W. et al. Allometric regressions for improved estimate of secondary forest biomass in the central Amazon. Forest Ecology e Management, v. 117, p. 149–167, 1999.
croton_matourensis_aubl_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-2.7009+2.5996*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Goupia glabra Aubl. | Amazônia
# Estado: AM | Compartimento: Acima (tronco+galhos+folhas) | R2: 1,00 | Syx: - | Peso: Seco
# DBH range (cm): 1,5 a 122 | Autor: Nelson et al. (1999)
# referência: NELSON, B. W. et al. Allometric regressions for improved estimate of secondary forest biomass in the central Amazon. Forest Ecology e Management, v. 117, p. 149–167, 1999.
goupia_glabra_aubl_amazonia <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-2.4990+2.1283*log(dap)+0.5508*log(altura)))
}

#' @rdname carbon_equations
#' @export
#### Guadua weberbaueri Pilg. | Amazônia
# Estado: AC | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,81 | Syx: - | Peso: Seco
# DBH range (cm): 3,5 a 62 | Autor: Torezan e Silveira (2000)
# referência: TOREZAN, J. M. D.; SILVEIRA, M. The biomass of bamboo (Guadua weberbaueri Pilger) in open forest of the southwestern Amazon. Ecotropica, v. 6, p. 71–76, 2000.
guadua_weberbaueri_pilg_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * (2.928*(dap^3)-37.554*(dap^2)+161.23*dap-226.54))
}

#' @rdname carbon_equations
#' @export
#### Handroanthus chrysotrichus (Mart. ex DC.) Mattos | Amazônia
# Estado: MT | Compartimento: Total (abaixo+acima) | R2: 0,98 | Syx: - | Peso: Seco
# DBH range (cm): 5,0 a 120 | Autor: Robortella (2010)
# referência: ROBORTELLA, H. S. Equações de biomassa e estoques de carbono de seis espécies em plantios mistos no noroeste do Mato Grosso. Instituto Nacional de Pesquisas da Amazônia (INPA), 2010.
handroanthus_chrysotrichus_mart_ex_dc_mattos_amazonia <- function(dap, hf, altura, porc_C = 0.47) {
  return(porc_C * exp(-1.888+2.119*log(dap)-0.474*log(hf/altura)))
}

#' @rdname carbon_equations
#' @export
#### Laetia procera (Poepp.) Eichler | Amazônia
# Estado: AM | Compartimento: Acima (tronco+galhos+folhas) | R2: 1,00 | Syx: - | Peso: Seco
# DBH range (cm): 1,6 a 248 | Autor: Nelson et al. (1999)
# referência: NELSON, B. W. et al. Allometric regressions for improved estimate of secondary forest biomass in the central Amazon. Forest Ecology e Management, v. 117, p. 149–167, 1999.
laetia_procera_poepp_eichler_amazonia <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-2.6385+2.1976*log(dap)+0.4565*log(altura)))
}

#' @rdname carbon_equations
#' @export
#### Schinus terebinthifolia Raddi | Amazônia
# Estado: MT | Compartimento: Total (abaixo+acima) | R2: 0,67 | Syx: - | Peso: Seco
# DBH range (cm): 10,0 a 150 | Autor: Robortella (2010)
# referência: ROBORTELLA, H. S. Equações de biomassa e estoques de carbono de seis espécies em plantios mistos no noroeste do Mato Grosso. Instituto Nacional de Pesquisas da Amazônia (INPA), 2010.
schinus_terebinthifolia_raddi_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.253*(dap^2.324))
}

#' @rdname carbon_equations
#' @export
#### Syzygium cumini (L.) Skeels | Amazônia
# Estado: MT | Compartimento: Total (abaixo+acima) | R2: 0,92 | Syx: - | Peso: Seco
# DBH range (cm): 10,0 a 230 | Autor: Robortella (2010)
# referência: ROBORTELLA, H. S. Equações de biomassa e estoques de carbono de seis espécies em plantios mistos no noroeste do Mato Grosso. Instituto Nacional de Pesquisas da Amazônia (INPA), 2010.
syzygium_cumini_l_skeels_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-2.450+2.607*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Tabebuia aurea (Silva Manso) Benth. & Hook.f. ex S.Moore | Amazônia
# Estado: MT | Compartimento: Total (abaixo+acima) | R2: 0,98 | Syx: - | Peso: Seco
# DBH range (cm): 10,0 a 200 | Autor: Robortella (2010)
# referência: ROBORTELLA, H. S. Equações de biomassa e estoques de carbono de seis espécies em plantios mistos no noroeste do Mato Grosso. Instituto Nacional de Pesquisas da Amazônia (INPA), 2010.
tabebuia_aurea_silva_manso_benth_hook_f_ex_s_moore_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.089*(dap^2.538))
}

#' @rdname carbon_equations
#' @export
#### Várias | Amazônia
# Estado: AM | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,93 | Syx: 5,6% | Peso: Seco
# DBH range (cm): 5,0 a 1380 | Autor: Lima et al. (2012)
# referência: LIMA, A. J. N. et al. Allometric models for estimating above- e below-ground biomass in Amazonian forests at São Gabriel da Cachoeira in the upper Rio Negro, Brazil. Forest Ecology e Management, v. 277, p. 163–172, 2012.
varias_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.488*(dap^2.083))
}

#' @rdname carbon_equations
#' @export
#### Vismia cayennensis (Jacq.) Pers. | Amazônia
# Estado: AM | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,99 | Syx: - | Peso: Seco
# DBH range (cm): 1,6 a 218 | Autor: Nelson et al. (1999)
# referência: NELSON, B. W. et al. Allometric regressions for improved estimate of secondary forest biomass in the central Amazon. Forest Ecology e Management, v. 117, p. 149–167, 1999.
vismia_cayennensis_jacq_pers_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-2.3706+2.5392*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Vismia japurensis Reichardt | Amazônia
# Estado: AM | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,99 | Syx: - | Peso: Seco
# DBH range (cm): 1,5 a 286 | Autor: Nelson et al. (1999)
# referência: NELSON, B. W. et al. Allometric regressions for improved estimate of secondary forest biomass in the central Amazon. Forest Ecology e Management, v. 117, p. 149–167, 1999.
vismia_japurensis_reichardt_amazonia <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-1.7829+2.3651*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### ============ CAATINGA ============

#### Anadenanthera colubrina (Vell.) Brenan | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 93,45 | Syx: 15,1% | Peso: Fresco
# DBH range (cm): 3,0 a 260 | Autor: Abreu et al. (2016)
# referência: ABREU, J. C. et al. Ajuste de modelos matemáticos lineares e não lineares para estimativa de biomassa e nutrientes de Anadenanthera colubrina var. cebil no semiárido pernambucano. Scientia Forestalis, v. 44, n. 111, p. 739–750, 2016.
anadenanthera_colubrina_vell_brenan_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * 51.63157/(1+16.05867*exp(-0.362138*dap)))
}

#' @rdname carbon_equations
#' @export
#### Anadenanthera colubrina var. cebil (Griseb.) Altschul | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,94 | Syx: - | Peso: Seco
# DBH range (cm): 2,0 a 500 | Autor: Sampaio e Silva (2005)
# referência: SAMPAIO, E. V. S. B.; SILVA, G. C. Biomass equations for Brazilian semiarid caatinga plants. Acta Botanica Brasilica, v. 19, n. 4, p. 935–943, 2005.
anadenanthera_colubrina_var_cebil_griseb_altschul_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.2482*(dap^2.1628))
}

#' @rdname carbon_equations
#' @export
#### Aspidosperma pyrifolium Mart. & Zucc. | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,75 | Syx: 26,6% | Peso: Seco
# DBH range (cm): 1,9 a 95 | Autor: Dalla Lana et al. (2018)
# referência: DALLA LANA, M. et al. Biomass equations for caatinga species. Nativa, v. 6, n. 5, p. 517, 2018.
aspidosperma_pyrifolium_mart_zucc_caatinga <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * 0.7858*((dap^2)*altura)^0.4550)
}

#' @rdname carbon_equations
#' @export
#### Astronium urundeuva (M. Allemão) Engl. | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,98 | Syx: - | Peso: Seco
# DBH range (cm): 2,0 a 500 | Autor: Sampaio e Silva (2005)
# referência: SAMPAIO, E. V. S. B.; SILVA, G. C. Biomass equations for Brazilian semiarid caatinga plants. Acta Botanica Brasilica, v. 19, n. 4, p. 935–943, 2005.
astronium_urundeuva_m_allemao_engl_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.1397*(dap^2.4659))
}

#' @rdname carbon_equations
#' @export
#### Bauhinia cheilantha (Bong.) Steud. | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,97 | Syx: 12,1% | Peso: Seco
# DBH range (cm): 1,9 a 95 | Autor: Dalla Lana et al. (2018)
# referência: DALLA LANA, M. et al. Biomass equations for caatinga species. Nativa, v. 6, n. 5, p. 517, 2018.
bauhinia_cheilantha_bong_steud_caatinga <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * 0.0699*(dap^2.2115)*(altura^0.8155))
}

#' @rdname carbon_equations
#' @export
#### Cenostigma bracteosum (Tul.) E. Gagnon & G.P. Lewis | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,85 | Syx: 23,4% | Peso: Seco
# DBH range (cm): 1,9 a 95 | Autor: Dalla Lana et al. (2018)
# referência: DALLA LANA, M. et al. Biomass equations for caatinga species. Nativa, v. 6, n. 5, p. 517, 2018.
cenostigma_bracteosum_tul_e_gagnon_g_p_lewis_caatinga <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (6.6205+0.0341*((dap^2)*altura)))
}

#' @rdname carbon_equations
#' @export
#### Cenostigma pyramidale (Tul.) E. Gagnon & G.P. Lewis | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,82 | Syx: - | Peso: Seco
# DBH range (cm): 2,0 a 500 | Autor: Sampaio e Silva (2005)
# referência: SAMPAIO, E. V. S. B.; SILVA, G. C. Biomass equations for Brazilian semiarid caatinga plants. Acta Botanica Brasilica, v. 19, n. 4, p. 935–943, 2005.
cenostigma_pyramidale_tul_e_gagnon_g_p_lewis_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.2365*(dap^2.1928))
}

#' @rdname carbon_equations
#' @export
#### Cereus jamacaru DC. | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,70 | Syx: - | Peso: Seco
# DBH range (cm): 2,0 a 500 | Autor: Sampaio e Silva (2005)
# referência: SAMPAIO, E. V. S. B.; SILVA, G. C. Biomass equations for Brazilian semiarid caatinga plants. Acta Botanica Brasilica, v. 19, n. 4, p. 935–943, 2005.
cereus_jamacaru_dc_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.0010*(dap^3.2327))
}

#' @rdname carbon_equations
#' @export
#### Cnidoscolus quercifolius Pohl | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,72 | Syx: 17,5% | Peso: Seco
# DBH range (cm): 1,9 a 95 | Autor: Dalla Lana et al. (2018)
# referência: DALLA LANA, M. et al. Biomass equations for caatinga species. Nativa, v. 6, n. 5, p. 517, 2018.
cnidoscolus_quercifolius_pohl_caatinga <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-0.6664+0.5237*log((dap^2)*altura)))
}

#' @rdname carbon_equations
#' @export
#### Croton heliotropiifolius Kunth | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,76 | Syx: 19,0% | Peso: Seco
# DBH range (cm): 1,9 a 95 | Autor: Dalla Lana et al. (2018)
# referência: DALLA LANA, M. et al. Biomass equations for caatinga species. Nativa, v. 6, n. 5, p. 517, 2018.
croton_heliotropiifolius_kunth_caatinga <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * 0.1868*(dap^1.2764)*(altura^0.9401))
}

#' @rdname carbon_equations
#' @export
#### Croton jacobinensis Baill. | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,84 | Syx: - | Peso: Seco
# DBH range (cm): 2,0 a 500 | Autor: Sampaio e Silva (2005)
# referência: SAMPAIO, E. V. S. B.; SILVA, G. C. Biomass equations for Brazilian semiarid caatinga plants. Acta Botanica Brasilica, v. 19, n. 4, p. 935–943, 2005.
croton_jacobinensis_baill_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.3569*(dap^1.8565))
}

#' @rdname carbon_equations
#' @export
#### Dalbergia cearensis Ducke | Caatinga
# Estado: CE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,67 | Syx: - | Peso: Seco
# DBH range (cm): 5,0 a 201 | Autor: Nogueira et al. (2021)
dalbergia_cearensis_ducke_caatinga <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-3.710+1.878*log(dap*altura)))
}

#' @rdname carbon_equations
#' @export
#### Jatropha mollissima (Pohl) Baill. | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,83 | Syx: - | Peso: Seco
# DBH range (cm): 2,0 a 500 | Autor: Sampaio e Silva (2005)
# referência: SAMPAIO, E. V. S. B.; SILVA, G. C. Biomass equations for Brazilian semiarid caatinga plants. Acta Botanica Brasilica, v. 19, n. 4, p. 935–943, 2005.
jatropha_mollissima_pohl_baill_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.1970*(dap^1.8145))
}

#' @rdname carbon_equations
#' @export
#### Mimosa caesalpiniifolia Benth. | Caatinga
# Estado: RN | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,71 | Syx: 13,7% | Peso: Fresco
# DBH range (cm): 5,2 a 82 | Autor: Lucena et al. (2020)
mimosa_caesalpiniifolia_benth_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-0.119429+log(dap)*1.527954))
}

#' @rdname carbon_equations
#' @export
#### Mimosa hostilis (Mart.) Benth. | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,96 | Syx: - | Peso: Seco
# DBH range (cm): 2,0 a 500 | Autor: Sampaio e Silva (2005)
# referência: SAMPAIO, E. V. S. B.; SILVA, G. C. Biomass equations for Brazilian semiarid caatinga plants. Acta Botanica Brasilica, v. 19, n. 4, p. 935–943, 2005.
mimosa_hostilis_mart_benth_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.3127*(dap^2.1183))
}

#' @rdname carbon_equations
#' @export
#### Mimosa ophthalmocentra Mart. ex Benth. | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,88 | Syx: 9,0% | Peso: Seco
# DBH range (cm): 1,9 a 95 | Autor: Dalla Lana et al. (2018)
# referência: DALLA LANA, M. et al. Biomass equations for caatinga species. Nativa, v. 6, n. 5, p. 517, 2018.
mimosa_ophthalmocentra_mart_ex_benth_caatinga <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(1.1118+1.7371*log(dap)-0.9536*log(altura)))
}

#' @rdname carbon_equations
#' @export
#### Mimosa tenuiflora (Willd.) Poir. | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,92 | Syx: 10,6% | Peso: Seco
# DBH range (cm): 1,9 a 95 | Autor: Dalla Lana et al. (2018)
# referência: DALLA LANA, M. et al. Biomass equations for caatinga species. Nativa, v. 6, n. 5, p. 517, 2018.
mimosa_tenuiflora_willd_poir_caatinga <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-1.6100+0.7850*log((dap^2)*altura)))
}

#' @rdname carbon_equations
#' @export
#### Monteverdia rigida (Mart.) Biral | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,95 | Syx: - | Peso: Seco
# DBH range (cm): 2,0 a 500 | Autor: Sampaio e Silva (2005)
# referência: SAMPAIO, E. V. S. B.; SILVA, G. C. Biomass equations for Brazilian semiarid caatinga plants. Acta Botanica Brasilica, v. 19, n. 4, p. 935–943, 2005.
monteverdia_rigida_mart_biral_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.3460*(dap^2.0231))
}

#' @rdname carbon_equations
#' @export
#### Schinopsis brasiliensis Engl. | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,97 | Syx: - | Peso: Seco
# DBH range (cm): 2,0 a 500 | Autor: Sampaio e Silva (2005)
# referência: SAMPAIO, E. V. S. B.; SILVA, G. C. Biomass equations for Brazilian semiarid caatinga plants. Acta Botanica Brasilica, v. 19, n. 4, p. 935–943, 2005.
schinopsis_brasiliensis_engl_caatinga <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.2274*(dap^2.2710))
}

#' @rdname carbon_equations
#' @export
#### Várias | Caatinga
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,85 | Syx: 23,5% | Peso: Seco
# DBH range (cm): 1,9 a 95 | Autor: Dalla Lana et al. (2018)
# referência: DALLA LANA, M. et al. Biomass equations for caatinga species. Nativa, v. 6, n. 5, p. 517, 2018.
varias_caatinga <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-1.2884+1.6102*log(dap)+0.4343*log(altura)))
}

#' @rdname carbon_equations
#' @export
#### ============ CERRADO ============

#### Anadenanthera colubrina (Vell.) Brenan | Cerrado
# Estado: MG | Compartimento: Acima (tronco+galhos+folhas) | R2: 94,99 | Syx: 21,2% | Peso: Seco
# DBH range (cm): 10,0 a 400 | Autor: Scolforo et al. (2008)¹
# referência: SCOLFORO, J. R. et al. Inventário Florestal de Minas Gerais-Equações de Volume, Peso de Matéria Seca e Carbono para Diferentes Fisionomias da Flora Nativa. Editora UFLA, 2008.
anadenanthera_colubrina_vell_brenan_cerrado <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-9.995149073+2.4884117855*log(dap)+0.3203838261*log(altura))*1000)
}

#' @rdname carbon_equations
#' @export
#### Croton floribundus Spreng. | Cerrado
# Estado: SP | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,98 | Syx: 20,0% | Peso: Seco
# DBH range (cm): 5,0 a 279 | Autor: Nicodemo et al. (2016)
# referência: NICODEMO, M. L. F. et al. Modelos alométricos para estimação de biomassa aérea e alocação de biomassa de capixingui (Croton floribundus Spreng.) em um sistema silviagrícola. Revista Árvore, v. 40, n. 2, p. 279–288, 2015.
croton_floribundus_spreng_cerrado <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-2.8564+2.4771*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Eremanthus erythropappus (DC.) MacLeish | Cerrado
# Estado: MG | Compartimento: Acima (tronco+galhos+folhas) | R2: 98,48 | Syx: 20,7% | Peso: Seco
# DBH range (cm): 5,0 a 350 | Autor: Scolforo et al. (2008)¹
# referência: SCOLFORO, J. R. et al. Inventário Florestal de Minas Gerais-Equações de Volume, Peso de Matéria Seca e Carbono para Diferentes Fisionomias da Flora Nativa. Editora UFLA, 2008.
eremanthus_erythropappus_dc_macleish_cerrado <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-3.6776993+1.0141433*log((dap^2)*altura)))
}

#' @rdname carbon_equations
#' @export
#### Eucalyptus camaldulensis Dehnh. | Cerrado
# Estado: MG | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,97 | Syx: 11,5% | Peso: Seco
# DBH range (cm): 5,0 a 200 | Autor: Franco (1996)
# referência: FRANCO, E. J. Estudo dos métodos estimativos de volume, biomassa e níveis de produtividade para Eucalyptus camaldulensis. Universidade Federal de Lavras, 1996.
eucalyptus_camaldulensisdehnh_cerrado <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (0.002222-0.000062*(dap^2)+0.00002*(dap^2*altura)+0.000001405*(dap* altura^2)))
}

#' @rdname carbon_equations
#' @export
#### Eucalyptus grandis W.Hill | Cerrado
# Estado: MG | Compartimento: Acima (tronco+galhos+folhas) | R2: - | Syx: 6,7% | Peso: Seco
# DBH range (cm): 10,0 a 187 | Autor: Ribeiro et al. (2015)
# referência: RIBEIRO, S. C. et al. Biomassa acima e abaixo do solo e estimativas de carbono para um plantio clonal de eucalipto no Sudeste do Brasil. Revista Árvore, v. 39, n. 2, p. 353–363, 2015.
eucalyptus_grandis_w_hill_cerrado <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * 0.0249*(((dap^2)*altura)^0.9679))
}

#' @rdname carbon_equations
#' @export
#### Kielmeyera oriácea Mart. & Zucc. | Cerrado
# Estado: MG | Compartimento: Acima (tronco+galhos+folhas) | R2: 96,09 | Syx: 21,2% | Peso: Seco
# DBH range (cm): 5,0 a 250 | Autor: Scolforo et al. (2008)¹
kielmeyera_10oriaceamart_zucc_cerrado <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-11.2626907253+2.428844827*log(dap)+0.8160943744*log(altura))*1000)
}

#' @rdname carbon_equations
#' @export
#### Kielmeyera coriacea Mart. & Zucc. | Cerrado
# Estado: MG | Compartimento: Acima (tronco+galhos+folhas) | R2: 97,64 | Syx: 12,7% | Peso: Seco
# DBH range (cm): 5,0 a 250 | Autor: Scolforo et al. (2008)¹
kielmeyera_coriacea_mart_zucc_cerrado <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-10.454935288+2.1243668209*log(dap)+0.4846364811*log(altura))*1000)
}

#' @rdname carbon_equations
#' @export
#### Stryphnodendron adstringens (Mart.) Coville | Cerrado
# Estado: MG | Compartimento: Acima (tronco+galhos+folhas) | R2: 96,48 | Syx: 24,0% | Peso: Seco
# DBH range (cm): 5,0 a 250 | Autor: Scolforo et al. (2008)¹
stryphnodendron_adstringens_mart_coville_cerrado <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-11.2875746052+2.3822964052*log(dap)+0.9086217316*log(altura))*1000)
}

#' @rdname carbon_equations
#' @export
#### Stryphnodendron adstringens (Mart.) Coville | Cerrado (variant)
# Estado: MG | Compartimento: Acima (tronco+galhos+folhas) | R2: 98,68 | Syx: 10,8% | Peso: Seco
# DBH range (cm): 5,0 a 250 | Autor: Scolforo et al. (2008)¹
stryphnodendron_adstringens_mart_coville_cerrado_v2 <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-11.3841308978+2.9100586552*log(dap)+0.1989771767*log(altura))*1000)
}

#' @rdname carbon_equations
#' @export
#### Várias | Cerrado
# Estado: MG | Compartimento: Acima (tronco+galhos+folhas) | R2: 98,48 | Syx: 12,3% | Peso: Seco
# DBH range (cm): 5,0 a 400 | Autor: Scolforo et al. (2008)¹
varias_cerrado <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-10.1966777197+2.4240650757*log(dap)+0.5413156008*log(altura))*1000)
}

#' @rdname carbon_equations
#' @export
#### ============ MATA ATLÂNTICA ============

#### Anadenanthera colubrina (Vell.) Brenan | Mata Atlântica
# Estado: MG | Compartimento: Acima (tronco+galhos+folhas) | R2: 94,50 | Syx: 28,8% | Peso: Seco
# DBH range (cm): 10,0 a 400 | Autor: Scolforo et al. (2008)¹
anadenanthera_colubrina_vell_brenan_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-9.341381587+2.27623091*log(dap)+0.3954337202*log(altura))*1000)
}

#' @rdname carbon_equations
#' @export
#### Araucaria angustifolia (Bertol.) Kuntze | Mata Atlântica
# Estado: PR | Compartimento: Total (abaixo+acima) | R2: 0,97 | Syx: 1,7% | Peso: Seco
# DBH range (cm): 20,0 a 440 | Autor: Schumacher et al. (2011)
# referência: SCHUMACHER, M. V. et al. Produção de biomassa no corte raso em plantio de Araucaria angustifolia (Bertol.) Kuntze de 27 anos de idade em Quedas do Iguaçu, PR. Ciência Florestal, v. 21, n. 1, p. 53–62, 2011.
araucaria_angustifolia_bertol_kuntze_mata_atlantica <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-2.12394+2.46033*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Ateleia glazioveana Baill. | Mata Atlântica
# Estado: RS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,85 | Syx: 31,4% | Peso: Seco
# DBH range (cm): 2,0 a 167 | Autor: Fontoura et al. (2017)
# referência: FONTOURA, M. R. et al. Modelos alométricos para estimativa de biomassa em área de regeneração natural de Ateleia glazioviana Baill. Floresta, v. 47, n. 4, p. 469–478, 2017.
ateleia_glazioveana_baill_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (-5.6260+1.2986*log(dap^2*altura)))
}

#' @rdname carbon_equations
#' @export
#### Avicennia schaueriana Stapf & Leechm. ex Moldenke | Mata Atlântica
# Estado: RJ | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,99 | Syx: 17,4% | Peso: Seco
# DBH range (cm): 0,7 a 373 | Autor: Estrada et al. (2014)
# referência: ESTRADA, G. C. D. et al. Allometric models for aboveground biomass estimation of the mangrove Avicennia schaueriana. Hydrobiologia, v. 734, n. 1, p. 171–185, 2014.
avicennia_schaueriana_stapf_leechm_ex_moldenke_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * 68.8881*((dap^2)*altura)^0.9397/1000)
}

#' @rdname carbon_equations
#' @export
#### Bambusa oldhamii Munro | Mata Atlântica
# Estado: SP | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,78 | Syx: 14,6% | Peso: Seco
# DBH range (cm): 5,6 a 103 | Autor: Sanquetta et al. (2015a)
# referência: SANQUETTA, C. R. et al. Biomassa Individual De Bambusa oldhamii Munro E Bambusa vulgaris Schrad. Ex J.C. Wendl. Cerne, v. 21, n. 1, p. 151–159, 2015a.
bambusa_oldhamii_munro_mata_atlantica <- function(dap, porc_C = 0.47) {
  return(porc_C * (-13.4200+3.9572*dap))
}

#' @rdname carbon_equations
#' @export
#### Bambusa vulgaris Schrad. ex J.C.Wendl. | Mata Atlântica
# Estado: SP | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,76 | Syx: 16,5% | Peso: Seco
# DBH range (cm): 5,7 a 100 | Autor: Sanquetta et al. (2015a)
# referência: SANQUETTA, C. R. et al. Biomassa Individual De Bambusa oldhamii Munro E Bambusa vulgaris Schrad. Ex J.C. Wendl. Cerne, v. 21, n. 1, p. 151–159, 2015a.
bambusa_vulgaris_schrad_ex_j_c_wendl_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (4.9887+0.0144*((dap^2)*altura)))
}

#' @rdname carbon_equations
#' @export
#### Cecropia glaziovii Snethl. | Mata Atlântica
# Estado: SC | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,98 | Syx: 7,7 kg | Peso: Seco
# DBH range (cm): 7,7 a 339 | Autor: Uller et al. (2021)²
# referência: ULLER, H. F. et al. Biomass models for three species with different growth forms e geographic distribution in the Brazilian Atlantic forest. Canadian Journal of Forest Research, v. 51, n. 10, p. 1419–1431, 2021.
cecropia_glaziovii_snethl_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * 295.6/(1+exp(6.1366-0.1161*dap-0.1522*altura)))
}

#' @rdname carbon_equations
#' @export
#### Cryptomeria japonica (Thunb. Ex L.f.) D.Don | Mata Atlântica
# Estado: PR | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,96 | Syx: 11,1% | Peso: Seco
# DBH range (cm): 14,7 a 354 | Autor: Coutinho et al. (2017)
# referência: COUTINHO, V. M. et al. Equações tradicionais e simultâneas para biomassa de compartimentos aéreos de Cryptomeria japonica (L.F.) D. DON. Brazilian Journal of Biometrics, v. 35, n. 1, p. 58–75, 2017.
cryptomeria_japonica_thunb_ex_l_f_d_don_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (5.81707+0.01679*dap^2*altura))
}

#' @rdname carbon_equations
#' @export
#### Cyathea delgadii Sternb. | Mata Atlântica
# Estado: SC | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,92 | Syx: 3,6 kg | Peso: Seco
# DBH range (cm): 6,3 a 195 | Autor: Uller et al. (2021)
# referência: ULLER, H. F. et al. Biomass models for three species with different growth forms e geographic distribution in the Brazilian Atlantic forest. Canadian Journal of Forest Research, v. 51, n. 10, p. 1419–1431, 2021.
cyathea_delgadii_sternb_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * 0.1523*dap^1.1254*altura^1.0338)
}

#' @rdname carbon_equations
#' @export
#### Euterpe edulis Mart. | Mata Atlântica
# Estado: SC | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,84 | Syx: 7,1 kg | Peso: Seco
# DBH range (cm): 3,9 a 158 | Autor: Uller et al. (2021)
# referência: ULLER, H. F. et al. Biomass models for three species with different growth forms e geographic distribution in the Brazilian Atlantic forest. Canadian Journal of Forest Research, v. 51, n. 10, p. 1419–1431, 2021.
euterpe_edulis_mart_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * 0.0175*dap^1.5288*altura^1.66)
}

#' @rdname carbon_equations
#' @export
#### Guadua chacoensis (Rojas) Londoño | Mata Atlântica
# Estado: PR | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,86 | Syx: 20,5% | Peso: Seco
# DBH range (cm): 5,6 a 140 | Autor: Mognon et al. (2014)
# referência: MOGNON, F. et al. Estimativas de biomassa para plantas de bambu do gênero Guadua. Revista Ceres, v. 61, n. 6, p. 900–906, 2014.
guadua_chacoensis_rojas_londo_o_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(0.62186+0.35049*log(altura^2)))
}

#' @rdname carbon_equations
#' @export
#### Guadua chacoensis (Rojas) Londoño | Mata Atlântica (variant)
# Estado: PR | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,93 | Syx: 15,0% | Peso: Seco
# DBH range (cm): 5,6 a 140 | Autor: Mognon et al. (2014)
guadua_chacoensis_rojas_londo_o_mata_atlantica_v2 <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (-27.53382+2.80989*dap+1.91081*altura))
}

#' @rdname carbon_equations
#' @export
#### Laguncularia racemosa (L.) C.F.Gaertn. | Mata Atlântica
# Estado: PE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,97 | Syx: - | Peso: Seco
# DBH range (cm): 2,1 a 178 | Autor: Medeiros e Sampaio (2008)
# referência: MEDEIROS, T. C. C.; SAMPAIO, E. V. S. B. Allometry of aboveground biomasses in mangrove species in Itamaracá, Pernambuco, Brazil. Wetlands Ecology e Management, v. 16, n. 4, p. 323–330, 2008.
laguncularia_racemosa_l_c_f_gaertn_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * 0.1214*((dap^2)*altura)^0.8615)
}

#' @rdname carbon_equations
#' @export
#### Leucaena leucocephala (Lam.) de Wit | Mata Atlântica
# Estado: PR | Compartimento: Total (abaixo+acima) | R2: 0,94 | Syx: - | Peso: Seco
# DBH range (cm): 1,3 a 150 | Autor: Aleixo et al. (2008)²
# referência: ALEIXO, V. et al. Relações Alométricas para Leucaena leucocephala (Lam.) De Wit. Ciência Florestal, v. 18, n. 3, p. 329–338, 2008.
leucaena_leucocephala_lam_de_wit_mata_atlantica <- function(dap, altura, hf, cap, porc_C = 0.47) {
  return(porc_C * exp(3.4756+0.22*altura-0.028*hf+1.4425*log(cap))/1000)
}

#' @rdname carbon_equations
#' @export
#### Mimosa scabrella Benth. | Mata Atlântica
# Estado: PR | Compartimento: Total (abaixo+acima) | R2: 0,99 | Syx: 0,2% | Peso: Seco
# DBH range (cm): 4,3 a 230 | Autor: Mello et al. (2012)
# referência: MELLO, A. A. et al. Individual Biomass e Carbon Equations for Mimosa scabrella Benth. (Bracatinga) in Southern Brazil. Silva Fennica, v. 46, n. 3, p. 333–343, 2012.
mimosa_scabrella_benth_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (-0.49361+0.034865*(dap^2)*altura))
}

#' @rdname carbon_equations
#' @export
#### Nectandra grandiflora Nees | Mata Atlântica
# Estado: PR | Compartimento: Total (abaixo+acima) | R2: 98,44 | Syx: 13,7% | Peso: Seco
# DBH range (cm): 9,0 a 350 | Autor: Barbeiro et al. (2009)
nectandra_grandiflora_nees_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-2.08721+0.0364642*dap+0.71874*log(dap^2*altura)))
}

#' @rdname carbon_equations
#' @export
#### Phyllostachys aurea Rivière & C. Rivière. | Mata Atlântica
# Estado: PR | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,65 | Syx: 30,2% | Peso: Seco
# DBH range (cm): 1,4 a 46 | Autor: Monastier et al. (2015)
phyllostachys_aurea_riviere_c_riviere_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (572.612+0.155*((dap*10)^2)*altura)/1000)
}

#' @rdname carbon_equations
#' @export
#### Pimenta pseudocaryophyllus (Gomes) Landrum | Mata Atlântica
# Estado: PR | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,98 | Syx: 5,7% | Peso: Seco
# DBH range (cm): 6,0 a 120 | Autor: Girard (2005)
pimenta_pseudocaryophyllus_gomes_landrum_mata_atlantica <- function(dap, hf, porc_C = 0.47) {
  return(porc_C * (0.08562+5.147161*hf+0.364603*(dap^2)-0.08531*((dap^2)*hf)))
}

#' @rdname carbon_equations
#' @export
#### Pinus caribaea var. hondurensis (Sénécl.) W. H. Barrett & Golfari | Mata Atlântica
# Estado: BA | Compartimento: Acima (tronco+galhos+folhas) | R2: 84,42 | Syx: 25,6% | Peso: Seco
# DBH range (cm): 5,8 a 238 | Autor: Lima et al. (2016)
pinus_caribaea_var_hondurensis_senecl_w_h_barrett_golfari_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (5.19+0.03*((dap^2)*altura)))
}

#' @rdname carbon_equations
#' @export
#### Pinus spp. | Mata Atlântica
# Estado: PR | Compartimento: Total (abaixo+acima) | R2: 0,97 | Syx: 15,4% | Peso: Seco
# DBH range (cm): 3,6 a 359 | Autor: Schikowski et al. (2013)
pinus_spp_mata_atlantica <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * (-12.9265+1.4294*dap+0.0185*(dap^2)*altura))
}

#' @rdname carbon_equations
#' @export
#### Pinus taeda L. | Mata Atlântica
# Estado: RS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,98 | Syx: 1,5% | Peso: Seco
# DBH range (cm): 18,1 a 508 | Autor: Witschoreck (2008)
pinus_taeda_l_mata_atlantica <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(7.854652-63.900403*(dap^-1)))
}

#' @rdname carbon_equations
#' @export
#### Rhizophora mangle L. | Mata Atlântica
# Estado: SE | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,99 | Syx: 27,4% | Peso: Seco
# DBH range (cm): 1,0 a 392 | Autor: Santos et al. (2017)
rhizophora_mangle_l_mata_atlantica <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(5.360943+2.380682*log(dap))/1000)
}

#' @rdname carbon_equations
#' @export
#### Tabebuia cassinoides (Lam.) DC. | Mata Atlântica
# Estado: PR | Compartimento: Total (abaixo+acima) | R2: 0,96 | Syx: 7,9% | Peso: Seco
# DBH range (cm): 8,0 a 159 | Autor: Melo et al. (2014)
tabebuia_cassinoides_lam_dc_mata_atlantica <- function(dap, porc_C = 0.47) {
  return(porc_C * (-25.095+4.858*dap))
}

#' @rdname carbon_equations
#' @export
#### Tabebuia cassinoides (Lam.) DC. | Mata Atlântica (variant)
# Estado: PR | Compartimento: Total (abaixo+acima) | R2: 0,90 | Syx: 12,0% | Peso: Seco
# DBH range (cm): 8,0 a 159 | Autor: Melo et al. (2014)
tabebuia_cassinoides_lam_dc_mata_atlantica_v2 <- function(dap, porc_C = 0.47) {
  return(porc_C * (11.399+0.011*(dap^3)))
}

#' @rdname carbon_equations
#' @export
#### Várias | Mata Atlântica
# Estado: RS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,98 | Syx: 8,0% | Peso: Seco
# DBH range (cm): 3,2 a 550 | Autor: Vogel et al. (2006)
varias_mata_atlantica <- function(dap, porc_C = 0.47) {
  return(porc_C * 10^(-0.882390231+2.409594057*log10(dap)))
}

#' @rdname carbon_equations
#' @export
#### ============ OUTRO ============

#### Attalea phalerata Mart. ex Spreng. | Outro
# Estado: Outro | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,86 | Syx: - | Peso: Seco
# DBH range (cm): 17,0 a 500 | Autor: Goodman et al. (2013)
# referência: GOODMAN, R. C. et al. Amazon palm biomass e allometry. Forest Ecology e Management, v. 310, p. 994–1004, 2013.
attalea_phalerata_mart_ex_spreng_outro <- function(hf, porc_C = 0.47) {
  return(porc_C * exp(3.2579+1.1249*log(hf+1)))
}

#' @rdname carbon_equations
#' @export
#### Euterpe precatoria Mart. | Outro
# Estado: Outro | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,97 | Syx: - | Peso: Seco
# DBH range (cm): 12,0 a 190 | Autor: Goodman et al. (2013)
# referência: GOODMAN, R. C. et al. Amazon palm biomass e allometry. Forest Ecology e Management, v. 310, p. 994–1004, 2013.
euterpe_precatoria_mart_outro <- function(hf, porc_C = 0.47) {
  return(porc_C * (-108.81+13.589*hf))
}

#' @rdname carbon_equations
#' @export
#### Iriartea deltoidea Ruiz & Pav. | Outro
# Estado: Outro | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,97 | Syx: - | Peso: Seco
# DBH range (cm): 6,0 a 330 | Autor: Goodman et al. (2013)
# referência: GOODMAN, R. C. et al. Amazon palm biomass e allometry. Forest Ecology e Management, v. 310, p. 994–1004, 2013.
iriartea_deltoidea_ruiz_pav_outro <- function(dap, hf, porc_C = 0.47) {
  return(porc_C * exp(-3.483+0.94371*log((dap^2)*hf)))
}

#' @rdname carbon_equations
#' @export
#### Mauritia flexuosa L.f. | Outro
# Estado: Outro | Compartimento: Abaixo (raízes) | R2: 0,93 | Syx: - | Peso: Seco
# DBH range (cm): 19,0 a 360 | Autor: Goodman et al. (2013)
# referência: GOODMAN, R. C. et al. Amazon palm biomass e allometry. Forest Ecology e Management, v. 310, p. 994–1004, 2013.
mauritia_flexuosa_l_f_outro <- function(hf, porc_C = 0.47) {
  return(porc_C * exp(-0.3688+2.0106*log(hf)))
}

#' @rdname carbon_equations
#' @export
#### Mauritiella aculeata (Kunth) Burret | Outro
# Estado: Outro | Compartimento: Abaixo (raízes) | R2: 0,95 | Syx: - | Peso: Seco
# DBH range (cm): 8,0 a 150 | Autor: Goodman et al. (2013)
# referência: GOODMAN, R. C. et al. Amazon palm biomass e allometry. Forest Ecology e Management, v. 310, p. 994–1004, 2013.
mauritiella_aculeata_kunth_burret_outro <- function(hf, porc_C = 0.47) {
  return(porc_C * exp(1.0945+0.11086*hf))
}

#' @rdname carbon_equations
#' @export
#### Oenocarpus bataua Mart. | Outro
# Estado: Outro | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,78 | Syx: - | Peso: Seco
# DBH range (cm): 21,0 a 410 | Autor: Goodman et al. (2013)
# referência: GOODMAN, R. C. et al. Amazon palm biomass e allometry. Forest Ecology e Management, v. 310, p. 994–1004, 2013.
oenocarpus_bataua_mart_outro <- function(hf, porc_C = 0.47) {
  return(porc_C * exp(4.5496+0.1387*hf))
}

#' @rdname carbon_equations
#' @export
#### Socratea exorrhiza (Mart.) H.Wendl. | Outro
# Estado: Outro | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,98 | Syx: - | Peso: Seco
# DBH range (cm): 4,0 a 240 | Autor: Goodman et al. (2013)
# referência: GOODMAN, R. C. et al. Amazon palm biomass e allometry. Forest Ecology e Management, v. 310, p. 994–1004, 2013.
socratea_exorrhiza_mart_h_wendl_outro <- function(dap, hf, porc_C = 0.47) {
  return(porc_C * exp(-3.7965+1.0029*log((dap^2)*hf)))
}

#' @rdname carbon_equations
#' @export
#### Várias | Outro
# Estado: Outro | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,87 | Syx: 14,0% | Peso: Seco
# DBH range (cm): 60,0 a 1050 | Autor: Segura e Kanninen (2005)¹
# referência: SEGURA, M.; KANNINEN, M. Allometric models for tree volume e total aboveground biomass in a tropical humid forest in Costa Rica. Biotropica, v. 37, n. 1, p. 2–8, 2005.
varias_outro <- function(dap, altura, porc_C = 0.47) {
  return(porc_C * exp(-6.93+1.86*log(dap)+0.0045*log(dap)*altura)*1000)
}

#' @rdname carbon_equations
#' @export
#### ============ PAMPA ============

#### Acacia mearnsii De Wild. | Pampa
# Estado: RS | Compartimento: Total (abaixo+acima) | R2: 0,99 | Syx: 3,4% | Peso: Seco
# DBH range (cm): 3,6 a 196 | Autor: Caldeira et al. (2011)
# referência: CALDEIRA, M. V. W. et al. Biomassa de povoamento de Acacia mearnsii De Wild., Rio Grande do Sul, Brasil. Scientia Forestalis, v. 39, n. 90, p. 133–141, 2011.
acacia_mearnsii_de_wild_pampa <- function(dap, porc_C = 0.47) {
  return(porc_C * 10^(-1.2874+2.80262*log10(dap)))
}

#' @rdname carbon_equations
#' @export
#### ============ PANTANAL ============

#### Anadenanthera colubrina (Vell.) Brenan | Pantanal
# Estado: MS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,97 | Syx: - | Peso: Seco
# DBH range (cm): 6,0 a 270 | Autor: Padilha (2011)
# referência: PADILHA, D. R. C. Fitossociologia e estimativas da biomassa aérea e de carbono em chaco florestado no Brasil. Universidade Federal de Mato Grosso do Sul, 2011.
anadenanthera_colubrina_vell_brenan_pantanal <- function(dap, porc_C = 0.47) {
  return(porc_C * (-76.809+14.899*dap))
}

#' @rdname carbon_equations
#' @export
#### Coccoloba guaranitica Hassler | Pantanal
# Estado: MS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,99 | Syx: - | Peso: Seco
# DBH range (cm): 5,0 a 240 | Autor: Padilha (2011)
# referência: PADILHA, D. R. C. Fitossociologia e estimativas da biomassa aérea e de carbono em chaco florestado no Brasil. Universidade Federal de Mato Grosso do Sul, 2011.
coccoloba_guaranitica_hassler_pantanal <- function(dap, porc_C = 0.47) {
  return(porc_C * 6.717*exp(dap*0.139))
}

#' @rdname carbon_equations
#' @export
#### Diplokeleba floribunda N.E.Br. | Pantanal
# Estado: MS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,98 | Syx: - | Peso: Seco
# DBH range (cm): 7,0 a 270 | Autor: Padilha (2011)
# referência: PADILHA, D. R. C. Fitossociologia e estimativas da biomassa aérea e de carbono em chaco florestado no Brasil. Universidade Federal de Mato Grosso do Sul, 2011.
diplokeleba_floribunda_n_e_br_pantanal <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.306*(dap^2.145))
}

#' @rdname carbon_equations
#' @export
#### Diptychandra aurantiaca Tul. | Pantanal
# Estado: MS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,99 | Syx: - | Peso: Seco
# DBH range (cm): 5,0 a 350 | Autor: Salis et al. (2006)
# referência: SALIS, R. et al. Biomassa e carbono em fragmentos florestais do Pantanal Mato-Grossense. Revista Árvore, v. 30, n. 2, p. 315-324, 2006.
diptychandra_aurantiaca_tul_pantanal <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-2.119+2.38*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Licania minutiflora (Sagot) Fritsch | Pantanal
# Estado: MS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,91 | Syx: - | Peso: Seco
# DBH range (cm): 10,0 a 360 | Autor: Salis et al. (2006)
# referência: SALIS, S. M. et al. Estimating the aboveground biomass e wood volume of savanna woodlands in Brazil's Pantanal wetlands based on allometric correlations. Forest Ecology e Management, v. 228, n. 1–3, p. 61–68, 2006.
licania_minutiflora_sagot_fritsch_pantanal <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-2.265+2.386*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Magonia pubescens A.St.-Hil. | Pantanal
# Estado: MS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,99 | Syx: - | Peso: Seco
# DBH range (cm): 7,0 a 350 | Autor: Salis et al. (2006)
# referência: SALIS, S. M. et al. Estimating the aboveground biomass e wood volume of savanna woodlands in Brazil's Pantanal wetlands based on allometric correlations. Forest Ecology e Management, v. 228, n. 1–3, p. 61–68, 2006.
magonia_pubescens_a_st_hil_pantanal <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-2.888+2.795*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Phyllostylon rhamnoides (Poiss.) Taub. | Pantanal
# Estado: MS | Compartimento: Acima (tronco+galhos+folhas) | R2: 1,00 | Syx: - | Peso: Seco
# DBH range (cm): 6,0 a 280 | Autor: Padilha (2011)
# referência: PADILHA, D. R. C. Fitossociologia e estimativas da biomassa aérea e de carbono em chaco florestado no Brasil. Universidade Federal de Mato Grosso do Sul, 2011.
phyllostylon_rhamnoides_poiss_taub_pantanal <- function(dap, porc_C = 0.47) {
  return(porc_C * 5.886*exp(dap*0.127))
}

#' @rdname carbon_equations
#' @export
#### Protium heptaphyllum (Aubl.) Marchand | Pantanal
# Estado: MS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,97 | Syx: - | Peso: Seco
# DBH range (cm): 8,0 a 360 | Autor: Salis et al. (2006)
# referência: SALIS, S. M. et al. Estimating the aboveground biomass e wood volume of savanna woodlands in Brazil's Pantanal wetlands based on allometric correlations. Forest Ecology e Management, v. 228, n. 1–3, p. 61–68, 2006.
protium_heptaphyllum_aubl_marchand_pantanal <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-2.083+2.536*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Terminalia argentea Mart. & Zucc. | Pantanal
# Estado: MS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,99 | Syx: - | Peso: Seco
# DBH range (cm): 6,0 a 310 | Autor: Salis et al. (2006)
# referência: SALIS, S. M. et al. Estimating the aboveground biomass e wood volume of savanna woodlands in Brazil's Pantanal wetlands based on allometric correlations. Forest Ecology e Management, v. 228, n. 1–3, p. 61–68, 2006.
terminalia_argentea_mart_zucc_pantanal <- function(dap, porc_C = 0.47) {
  return(porc_C * exp(-1.915+2.409*log(dap)))
}

#' @rdname carbon_equations
#' @export
#### Várias | Pantanal
# Estado: MS | Compartimento: Acima (tronco+galhos+folhas) | R2: 0,98 | Syx: - | Peso: Seco
# DBH range (cm): 6,0 a 250 | Autor: Padilha (2011)²
# referência: PADILHA, D. R. C. Fitossociologia e estimativas da biomassa aérea e de carbono em chaco florestado no Brasil. Universidade Federal de Mato Grosso do Sul, 2011.
varias_pantanal <- function(dap, porc_C = 0.47) {
  return(porc_C * 0.188*(dap^2.266))
}


