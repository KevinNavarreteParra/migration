test_that("get_packages generates a list of installed packages", {
  # Create a temporary file for testing
  temp_file <- tempfile(fileext = ".txt")

  # Run get_packages with the temporary file
  get_packages(temp_file)

  # Check if the temporary file exists
  expect_true(file.exists(temp_file))

  # Read the contents of the temporary file
  package_list <- readLines(temp_file)

  # Check if the number of lines in the file matches the number of installed packages
  expect_equal(length(package_list), length(installed.packages()[,1]))

  # Remove the temporary file
  file.remove(temp_file)
})
