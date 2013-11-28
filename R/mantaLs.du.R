# Roxygen Comments mantaLs.du
#' mantaLs.du Returns disk used in bytes of directory listings, NOT counting
#' redundancy levels  
#'
#' Used for getting number of bytes occupied by objects matching directory query
#'
#' @param mantapath string, required. Object/subdir in current subdirectory
#' or full Manta path to stored object or subdirectory
#'
#' @param grepfor string optional. Regular expression passed to R grep for name search 
#' 
#' @param items string optional. 'a' for all, 'd' for directory, 'o' for object. 
#' 
#' @param ignore.case logical, optional. Argument passed to R grep for searching.
#' 
#' @param perl logical, optional. Argument passed to R grep for searching. 
#' 
#' @param verbose logical, optional. Verbose HTTP data output on Unix.
#'
#' @param json, optional. Input saved JSON data from mantaLs(format='json') 
#' used for reprocessing previously retrieved listings with specified
#' mantapath if you wish to recover true 'paths'.
#'
#' @keywords Manta, manta
#'
#' @export
mantaLs.du <-
function(mantapath, grepfor, json,  items = 'a',
          ignore.case = FALSE, perl = FALSE, verbose = FALSE) {

  return(mantaLs(mantapath, l='du', grepfor = grepfor, json = json, items = items,
                 sortby = 'none', decreasing = FALSE, ignore.case = ignore.case,
                 perl = perl, verbose = verbose))
}

