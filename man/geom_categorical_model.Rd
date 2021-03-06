% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_categorical_model.R
\name{geom_categorical_model}
\alias{geom_categorical_model}
\title{Regression model with one categorical explanatory/predictor variable}
\usage{
geom_categorical_model(
  mapping = NULL,
  data = NULL,
  position = "identity",
  ...,
  se = TRUE,
  level = 0.95,
  na.rm = FALSE,
  show.legend = NA,
  inherit.aes = TRUE
)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[ggplot2:aes]{aes()}} or
\code{\link[ggplot2:aes_]{aes_()}}. If specified and \code{inherit.aes = TRUE} (the
default), it is combined with the default mapping at the top level of the
plot. You must supply \code{mapping} if there is no plot mapping.}

\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[ggplot2:ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[ggplot2:fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{position}{Position adjustment, either as a string, or the result of
a call to a position adjustment function.}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}

\item{se}{Display confidence interval around model lines? \code{TRUE} by
default.}

\item{level}{Level of confidence interval to use (0.95 by default).}

\item{na.rm}{If \code{FALSE}, the default, missing values are removed with
a warning. If \code{TRUE}, missing values are silently removed.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.
It can also be a named logical vector to finely select the aesthetics to
display.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link[ggplot2:borders]{borders()}}.}
}
\description{
\code{geom_categorical_model()} fits a regression model using the categorical
x axis as the explanatory variable, and visualizes the model's fitted values
as piecewise horizontal line segments. Confidence interval bands can be
included in the visualization of the model. Like \code{\link{geom_parallel_slopes}},
this function has the same nature as \code{geom_smooth()} from
the {ggplot2} package, but provides functionality that \code{geom_smooth()}
currently doesn't have.
}
\examples{
library(dplyr)
library(ggplot2)

p <- ggplot(mpg, aes(x = drv, y = hwy)) +
  geom_point() +
  geom_categorical_model()
p

# You can use different colors for each categorical level
p \%+\% aes(color = drv)

# But mapping the color aesthetic doesn't change the model that is fit
p \%+\% aes(color = class)
}
\seealso{
\code{\link{geom_parallel_slopes}}
}
