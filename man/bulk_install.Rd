% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/my_summaries.R
\name{bulk_install}
\alias{bulk_install}
\title{Bulk install packages from txt file}
\usage{
bulk_install(file_path)
}
\arguments{
\item{file_path}{Character, name or file path for the text document generated by \code{get.packages} function}
}
\value{
Runs a bulk installation of all the packages pulled using \code{get.packages} function
}
\description{
Bulk install packages from txt file
}
\examples{
get_packages("package_list.txt")
}
