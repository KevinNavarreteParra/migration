git_active <- function() {
  result <- system("git rev-parse --is-inside-work-tree", intern = TRUE)
  if (length(result) > 0 && result[1] == "true") {
    return(TRUE)
  } else {
    return(FALSE)
  }
}
