% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gets.R
\name{dnb_advanced}
\alias{dnb_advanced}
\title{Search the DNB catalogue - advanced search}
\source{
\url{http://www.dnb.de/EN/Service/DigitaleDienste/SRU/sru_node.html}
}
\usage{
dnb_advanced(query, limit = 10, clean = TRUE, print = FALSE)
}
\arguments{
\item{query}{the search query, expressed in the DNB query language; single string value.}

\item{limit}{number and (optional) starting point of results returned; single integer value (number of results), vector of two integer values (number of results and first result, >=1) or \code{"all"} for a complete list of results.}

\item{clean}{if \code{TRUE} (the default), the results are cleaned (see below for details).}

\item{print}{if \code{TRUE} the search results are printed (default is \code{FALSE}).}
}
\value{
A \code{data.frame} of results with metadata.
}
\description{
\code{dnb_search} exposes a search in the DNB catalogue, expressed in the DNB query language.
}
\details{
\emph{Cleaning of results}

To harmonise the results, some clutter is deleted and abbreviations frequently used in the dnb catalogue are replaced by full words. Here is a list of all replacements:
\tabular{lll}{
Variable \tab Searched \tab Replaced by \cr
complete dataset \tab \\u0098 \tab [deleted] \cr
complete dataset \tab \\u009c \tab [deleted] \cr
complete dataset \tab ,, \tab , \cr
complete dataset \tab .. \tab . \cr
complete dataset \tab ;; \tab ; \cr
year \tab [string] \tab [numeric] \cr
pages \tab  S. \tab [deleted] \cr
pages \tab  Seiten \tab [deleted] \cr
pages \tab [ \tab [deleted] \cr
pages \tab ] \tab [deleted] \cr
publisher \tab Verl. \tab Verlag \cr
publisher \tab verl. \tab verlag \cr
publisher \tab [ \tab [deleted] \cr
publisher \tab ] \tab [deleted] \cr
edition \tab Aufl. \tab Auflage \cr
edition \tab aufl. \tab auflage \cr
edition \tab Orig. \tab Original \cr
edition \tab Ed. \tab Edition \cr
edition \tab ed. \tab edition \cr
edition \tab Ausg. \tab Ausgabe \cr
edition \tab ausg. \tab ausgabe \cr
edition \tab Nachdr. \tab Nachdruck \cr
edition \tab Bibliogr. \tab Bibliografie \cr
edition \tab [ \tab [deleted] \cr
edition \tab ] \tab [deleted] \cr
edition \tab [x]., \tab [x]. \cr 
price \tab kart. \tab Kartoniert \cr
price \tab Gb. \tab Gebunden \cr
price \tab Spiralb. \tab Spiralbindung \cr
price \tab Pb. \tab Paperback
}
}
\examples{
\dontrun{
# german books titled with 'cat' (male or female), 
# excluding titles containing dogs, since the year 2001
cats <- dnb_advanced("(tit=katze OR tit=kater NOT tit=hund) AND jhr>2000 AND mat=books AND spr=ger")
}
}

