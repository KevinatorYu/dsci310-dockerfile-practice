FROM quay.io/jupyter/r-notebook:2023-11-19

RUN R -e "install.packages('devtools', repos='http://cran.rstudio.com/')"
RUN R -e "library(devtools)"

RUN R -e "devtools::install_version('fortunes', version = '1.5-0', dependencies = T, repos='http://cran.rstudio.com/')"

RUN R -e "devtools::install_version('praise', version = '1.0.0', dependencies = T, repos='http://cran.rstudio.com/')"
