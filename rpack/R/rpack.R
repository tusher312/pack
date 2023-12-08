set.seed(123)
x = matrix(rpois(100, 0.1), 10, 10)

#' Remove rows with all 0s in the matrix
#'
#' @param matrix_data Numeric matrix
#' @return Matrix with rows having all 0s removed
#' @export
rm_0s_by_row <- function(matrix_data) {
  matrix_data[rowSums(matrix_data != 0, na.rm = TRUE) > 0, ]
}

#' Remove columns with all 0s in the matrix
#'
#' @param matrix_data Numeric matrix
#' @return Matrix with columns having all 0s removed
#' @export
rm_0s_by_col <- function(matrix_data) {
  matrix_data[, colSums(matrix_data != 0, na.rm = TRUE) > 0]
}
