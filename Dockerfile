FROM rocker/r-ver:4.4.2

WORKDIR /app

RUN R -e "install.packages('ggplot2', repos='https://cloud.r-project.org')"

COPY . .

CMD ["Rscript", "main.R"]
