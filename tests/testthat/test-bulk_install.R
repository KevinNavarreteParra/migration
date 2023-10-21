test_that("bulk_install installs packages from file", {
  # Create a temporary file with package names
  temp_file <- tempfile()
  cat("ggplot2", "car", file = temp_file, sep = "\n")

  # Run bulk_install with the temporary file
  bulk_install(temp_file)

  # Check if the packages are installed
  expect_true(all(c("ggplot2", "car") %in% installed.packages()))

  # Remove the temporary file
  unlink(temp_file)
})
