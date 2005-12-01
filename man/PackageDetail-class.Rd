\name{PackageDetail-class}
\docType{class}
\alias{PackageDetail-class}
\alias{htmlDoc,PackageDetail-method}
\alias{htmlFilename,PackageDetail-method}
\alias{htmlValue,PackageDetail-method}

\title{Class "PackageDetail"}
\description{Representation of R package metadata.  Most slots
correspond to fields in a package's DESCRIPTION file.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("PackageDetail", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{Package}:}{Object of class \code{"character"} see DESCRIPTION }
    \item{\code{Version}:}{Object of class \code{"character"}  see
      DESCRIPTION }
    \item{\code{Title}:}{Object of class \code{"character"}  see
      DESCRIPTION }
    \item{\code{Description}:}{Object of class \code{"character"}  see
      DESCRIPTION }
    \item{\code{Author}:}{Object of class \code{"character"} see DESCRIPTION }
    \item{\code{Maintainer}:}{Object of class \code{"character"} see
      DESCRIPTION }
    \item{\code{Depends}:}{Object of class \code{"character"} see DESCRIPTION }
    \item{\code{Suggests}:}{Object of class \code{"character"} see DESCRIPTION }
    \item{\code{Imports}:}{Object of class \code{"character"} see DESCRIPTION }
    \item{\code{SystemRequirements}:}{Object of class \code{"character"}
      see DESCRIPTION }
    \item{\code{License}:}{Object of class \code{"character"} see DESCRIPTION }
    \item{\code{URL}:}{Object of class \code{"character"} see DESCRIPTION }
    \item{\code{biocViews}:}{Object of class \code{"character"} see
      DESCRIPTION }
    \item{\code{vignettes}:}{Object of class \code{"character"} giving
    paths to vignette pdf files in the repository }
    \item{\code{source.ver}:}{Object of class \code{"character"} version
    string for the source package}
    \item{\code{win.binary.ver}:}{Object of class \code{"character"}
    version string for the Windows binary package }
    \item{\code{mac.binary.ver}:}{Object of class \code{"character"}
    version string for the OS X binary package }
    \item{\code{manuals}:}{Object of class \code{"character"} Not used.
    Intended to hold paths to pdf manuals in the repository}
    \item{\code{dependsOnMe}:}{Object of class \code{"character"} giving
    packages found in the repository that depend on this package}
    \item{\code{suggestsMe}:}{Object of class \code{"character"} giving
    packages found in the repository that suggest this package}
    \item{\code{functionIndex}:}{Object of class \code{"character"} Not
    used.  Intended to hold function index data. }
    \item{\code{reposRoot}:}{Object of class \code{"character"} The URL
    for the root of the repository. }
  }
}
\section{Extends}{
Class \code{"Htmlized"}, directly.
}
\section{Methods}{
  \describe{
    \item{htmlDoc}{\code{signature(object = "PackageDetail")}: Return an
    \code{XMLNode} instance containg a complete HTML document
    representation of the package.}
    \item{htmlFilename}{\code{signature(object = "PackageDetail")}:
    Return a filename appropriate for the HTML document representation. }
    \item{htmlValue}{\code{signature(object = "PackageDetail")}: Return
    \code{XMLNode} instance containing an HTML representation of the package. }
	 }
}
\author{ Seth Falcon}

\seealso{
  \code{\link{pdAuthorMaintainerInfo-class}},
  \code{\link{pdVignetteInfo-class}},
  \code{\link{pdDownloadInfo-class}},
  \code{\link{pdDetailsInfo-class}},
  \code{\link{pdDescriptionInfo-class}}
}

\examples{
pd <- new("PackageDetail",
          Package="MyFancyPackage",
          Version="1.2.3",
          Title="A Fancy Package",
          Description="This package does fancy things",
          Author="A. Coder",
          Maintainer="A. Coder <acoder@foo.bar.net>",
          Depends="methods",
          vignettes=c("vignettes/MyFancyPackage/inst/doc/MFP1.pdf",
            "vignettes/MyFancyPackage/inst/doc/MFP2.pdf"),
          source.ver="src/contrib/MyFancypackage_1.2.3.tar.gz",
          win.binary.ver="bin/windows/contrib/2.3/MyFancyPackge_1.2.2.zip",
          dependsOnMe="AnEvenFancierPackage",
          reposRoot="http://foo.bar.org")

html <- htmlValue(pd)
pd

}
      
\keyword{classes}