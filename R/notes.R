# Load the required library
library(rstudioapi)

# Define a function to retrieve RStudio global options and save them to a file
save_rstudio_options <- function(file_name) {
  # Get RStudio global options
  options_data <- rstudioapi::getGlobalOptions()

  # Save the options to a file in the working directory
   writeLines(paste(names(options_data), options_data, sep = " = "), file_name)
}






# Load the required library
library(rstudioapi)

# Function to set RStudio global options from a file
set_rstudio_options <- function(file_name) {
  # Read the contents of the file
  options_lines <- readLines(file_name)

 # Extract and set the options
  for (line in options_lines) {
    # Split the line into option name and value
    option_parts <- strsplit(line, " = ")[[1]]
    option_name <- option_parts[1]
    option_value <- option_parts[2]

   # Set the option using rstudioapi
    rstudioapi::setGlobalOptions(option = option_name, value = option_value)
  }
}

# Notes on what I would need to create a function that conserves package version
## I imagine that I'll need to generate two vectors: (1) that fills in the package name and (2) one that fills in the version number.

ip <- as.data.frame(installed.packages()[, c(1,3:4)])

rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority), 1:2, drop = FALSE]

print(ip, row.names = FALSE)

ip$Package <- paste0('"', ip$Package ,'"')


require(remotes)
install_version("ggplot2", version = "0.9.1", repos = "http://cran.us.r-project.org")
