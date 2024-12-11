packageLoad <- function(x) {
  for (i in 1:length(x)) {
    if (!x[i] %in% installed.packages()) {
      install.packages(x[i])
    }
    library(x[i], character.only = TRUE)
  }
}

# create a string of package names
packages <- c('tidyverse',
              'maps',
              'velociraptr',
              'sf',
              'rgplates',
              'geojsonsf',
              'httr2',
              'RCurl',
              'tmap',
              'plotly',
              'terra',
              'akima',
              'rstatix',
              'data.table',
              'chronosphere')

# use the packageLoad function we created on those packages
packageLoad(packages)

#maps: https://www.rdocumentation.org/packages/maps/versions/3.4.2
#geojsonsf: chrome-extension://efaidnbmnnnibpcajpcglclefindmkaj/https://cran.r-project.org/web/packages/geojsonsf/geojsonsf.pdf
