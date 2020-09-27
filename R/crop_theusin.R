#' @title Function for cropping spatial files.
#'
#' @description Function that crops a raster/rasterstack using a shapefile.
#'
#' @param dataset Raster* object or SpatialPolygons*, SpatialLines*, or SpatialPoints* object
#' @param shape a Extent object, or any object from which an Extent object can be extracted.
#' (shapefile)
#' @return RasterLayer or RasterBrick object; or SpatialLines or SpatialPolygons object.
#'
#' @note Remember to Check if dataset and shape have the same crs.
#'
#' @export
#' @examples
#'
#' r <- raster::raster(nrow=45, ncol=90)
#' num_cells <- raster::ncell(r)
#' raster::values(r) <- 1:num_cells
#' e <- raster::extent(-160, 10, 30, 60)
#' crop_theusin(r, e)

crop_theusin <- function(dataset, shape){

  cropado4 <- raster::crop(dataset, shape, snap = 'out')
  cropado3 <- raster::setValues(cropado4, NA)
  shpAux <- raster::rasterize(shape, cropado3)
  finaldata <- raster::mask(x = cropado4, mask = shpAux)
  rm(cropado4)
  rm(cropado3)
  rm(shpAux)
  return(finaldata)
}
