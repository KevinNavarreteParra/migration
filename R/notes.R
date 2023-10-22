# Load the required library
# library(rstudioapi)
#
# # Define a function to retrieve RStudio global options and save them to a file
# save_rstudio_options <- function(file_name) {
#   # Get RStudio global options
#   options_data <- rstudioapi::getGlobalOptions()
#
#   # Save the options to a file in the working directory
#   writeLines(paste(names(options_data), options_data, sep = " = "), file_name)
# }
#
# # Call the function with the desired file name
# save_rstudio_options("RStudio_Global_Options.txt")




# # Load the required library
# library(rstudioapi)
#
# # Function to set RStudio global options from a file
# set_rstudio_options <- function(file_name) {
#   # Read the contents of the file
#   options_lines <- readLines(file_name)
#
#   # Extract and set the options
#   for (line in options_lines) {
#     # Split the line into option name and value
#     option_parts <- strsplit(line, " = ")[[1]]
#     option_name <- option_parts[1]
#     option_value <- option_parts[2]
#
#     # Set the option using rstudioapi
#     rstudioapi::setGlobalOptions(option = option_name, value = option_value)
#   }
# }
#
# # Call the function with the file name
# set_rstudio_options("RStudio_Global_Options.txt")
