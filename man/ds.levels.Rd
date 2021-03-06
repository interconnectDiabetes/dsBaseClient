% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/ds.levels.R
\name{ds.levels}
\alias{ds.levels}
\title{Returns the levels attribute of a factor}
\usage{
ds.levels(x = NULL, datasources = NULL)
}
\arguments{
\item{x}{a character, the name of a factor variable}

\item{datasources}{a list of opal object(s) obtained after login in to opal servers;
these objects hold also the data assign to R, as \code{dataframe}, from opal datasources.}
}
\value{
levels of x
}
\description{
This function is similar to R function \code{levels}
}
\details{


This is just a wrapper function for the server side function.
}
\examples{
{

  # load that contains the login details
  data(logindata)

  # login
  opals <- datashield.login(logins=logindata,assign=TRUE)

  # Example 1: Get the levels of the PM_BMI_CATEGORICAL variable
  ds.levels(x='D$PM_BMI_CATEGORICAL')

  # Example 2: Get the levels of the LAB_TSC   SHOULD NOT WORK AS IT IS A CONTINUOUS VARIABLE
  \dontrun{ ds.levels(x='D$LAB_TSC') }

  # clear the Datashield R sessions and logout
  datashield.logout(opals)

}
}
\author{
Gaye, A.; Isaeva, J.
}

