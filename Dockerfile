FROM trestletech/plumber
MAINTAINER James Faeldon <jamesf@zliftsolutions.com>

# Add all files available at current location to /app directory
COPY . /app

# Set working directory
WORKDIR /app

EXPOSE 8080

# You can pre-install some needed R packages here
# RUN R -e "install.packages('broom')"

ENTRYPOINT ["Rscript", "main.R"]
