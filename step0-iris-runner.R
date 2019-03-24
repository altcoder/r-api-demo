# step0-iris-runner.R

# Make sure to specify CRAN repos to work on Rscript command line
# install.packages("plumber", repos = "http://cran.us.r-project.org")

r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)

pr <- plumber::plumb("step0-iris.R")
pr$run()