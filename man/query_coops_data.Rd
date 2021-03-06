% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_coops_data.R
\name{query_coops_data}
\alias{query_coops_data}
\title{Retrieve Tides Data From NOAA CO-OPS API}
\usage{
query_coops_data(
  station_id,
  start_date,
  end_date,
  data_product,
  units = "english",
  time_zone = "gmt",
  datum = NULL,
  interval = NULL,
  bin = NULL
)
}
\arguments{
\item{station_id}{is a character string that provides the a 7 character
station id.}

\item{start_date}{is a character string that specifies the start date for the
retrieval  period.  Dates can be specified in the following formats:
\emph{yyyyMMdd}, \emph{yyyyMMdd HH:mm}, \emph{MM/dd/yyyy}, or
\emph{MM/dd/yyyy HH:mm}.}

\item{end_date}{is a character string that specifies the end date for the
retrieval  period.  Dates can be specified in the following formats:
\emph{yyyyMMdd}, \emph{yyyyMMdd HH:mm}, \emph{MM/dd/yyyy}, or
\emph{MM/dd/yyyy HH:mm}.}

\item{data_product}{specifies the data product to be returned.  See
\href{https://api.tidesandcurrents.noaa.gov/api/prod/}{CO-OPS API Documentation} for
the available data products.}

\item{units}{a character string specifying if the data should be returned
using metric or English units.  Defaults to \code{'english'}.}

\item{time_zone}{a character string specifying what time zone information the
data should be returned with.  Options include Greenwich Mean Time
\code{'gmt'}, Local Standard Time \code{'lst'}, and Local Standard/Local
Daylight Time \code{'lst_ldt'}.  Local times refer to the local time of the
specified station.  The default is \code{'gmt'}}

\item{datum}{a character string indicating the datum that should be returned.
See \href{https://api.tidesandcurrents.noaa.gov/api/prod/}{CO-OPS API Documentation}
for the available datums.}

\item{interval}{a character string that specifies the interval for which
Meteorological data is returned. The API defaults to every six minutes and
does not need to be specified.  Other option include hourly \code{'h'} and
\code{'hilo'}.  The retrieval  time period specified by \strong{start_date}
and \strong{end_date} to create restrictions on the intervals that can be
returned. See
\href{https://api.tidesandcurrents.noaa.gov/api/prod/}{CO-OPS API Documentation} for
details}

\item{bin}{the bin number for the indicated currents station. If a bin is not
specified for a PORTS station, the data is returned using a predefined
real-time bin.}
}
\value{
a data frame.
}
\description{
Retrieve Tides Data From NOAA CO-OPS API
}
\examples{
\donttest{
# Do Not Run
a <- query_coops_data('9414290',
                      '20170101',
                      '20170201',
                      'predictions',
                       interval = 'hilo',
                       datum = 'MLLW')
}
}
