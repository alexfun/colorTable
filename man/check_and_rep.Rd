% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_and_rep.R
\name{check_and_rep}
\alias{check_and_rep}
\title{Checks that a vector has a given lengths, if x is null or NA, the default is repeated a given amount}
\usage{
check_and_rep(x, req_size, default = "white", name = "x")
}
\arguments{
\item{x}{a vector, a matrix, or a data.frame}

\item{req_size}{a required size of x (a single value for a vector or a vector of 2 values)}

\item{default}{default values if x is NULL/NA}

\item{name}{a name of x (for the error message only)}
}
\value{
a vector of size req_size or a matrix (if req_size has length 2)
}
\description{
Checks that a vector has a given lengths, if x is null or NA, the default is repeated a given amount
}
\examples{

# vector
check_and_rep(NA, 3, "red")
check_and_rep("green", 3, "red")
\dontrun{
    # produces an error
    check_and_rep(c("red", "green"), 3, "red")
    # change the name of x
    check_and_rep(c("red", "green"), 3, "red", "fancy_vector")
}
check_and_rep(c("red", "green", "blue"), 3, "red")

# Matrix
check_and_rep("green", c(2, 3), "white")

x <- matrix(c("red", "green", "blue", "yellow"), 2, 2)

check_and_rep(x, c(2, 2), "white")
}
\keyword{internal}
