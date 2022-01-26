#' Carbon sequestred in the timber products
#'
#' These functions calculate the amount of Carbon sequestered after some years after cut the trees
#'
#'
#' @param carbono_biomassa_arvores O carbono total da especie [kgC or tC]
#' @param anos Anos pós corte
#' @param wwf_fraction 0.24 from Verra
#' @param slf_class 0.12 from Verra
#' @param fo 0.86 from Verra
#'
#' @return The output returns the carbon sequestered in the products produced with the timber
#'
#' @note { References
#' The Earth Partners LLC, 2012: Vcs Module Vmd0026 Estimation of Carbon Stocks in IN THE LONG LIVED WOOD PRODUCTS POOL. 0–26.
#' }

#' @export
wood_product_carbon <- function(carbono_biomassa_arvores,
                                anos,
                                wwf_fraction = 0.24,
                                slf_class = 0.12,
                                fo = 0.86) {
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

  # wwf -é carbono_biomassa_arvores * wwf_fraction
  wwf <- carbono_biomassa_arvores * wwf_fraction

  # slf class é a classe tabelada , tipo sawnwood é 0.12 (metodologia)
  slf <- (carbono_biomassa_arvores - wwf) * slf_class

  # of é calculado por cada ano (table 1)
  # anos é anos após a criação do produto
  if (anos > 20) {
    anos <- 20
  }
  of <- ((carbono_biomassa_arvores - wwf) - slf) * (fo * (anos / 20))

  # equação total
  carbono_sequestrado_produtos <- carbono_biomassa_arvores - wwf - slf - of

  return(carbono_sequestrado_produtos)
}
