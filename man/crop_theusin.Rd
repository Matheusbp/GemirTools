% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crop_theusin.R
\name{crop_theusin}
\alias{crop_theusin}
\title{Function for cropping spatial files.}
\usage{
crop_theusin(dataset, shape)
}
\arguments{
\item{dataset}{Raster* object or SpatialPolygons*, SpatialLines*, or SpatialPoints* object}

\item{shape}{a Extent object, or any object from which an Extent object can be extracted.
(shapefile)}
}
\value{
RasterLayer or RasterBrick object; or SpatialLines or SpatialPolygons object.
}
\description{
Function that crops a raster/rasterstack using a shapefile.
}
\note{
Remember to Check if dataset and shape have the same crs.
}
\examples{

r <- raster::raster(nrow=45, ncol=90)
num_cells <- raster::ncell(r)
raster::values(r) <- 1:num_cells
e <- raster::extent(-160, 10, 30, 60)
crop_theusin(r, e)
}
