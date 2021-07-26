#
# install.packages("tidyverse")
# install.packages("plyr")
# install.packages("plotly")
# install.packages("quantmod")
# install.packages("PerformanceAnalytics")
# install.packages("shiny")
# install.packages("shinythemes")
# install.packages("PortfolioAnalytics")
# install.packages("ROI")
# install.packages("ROI.plugin.glpk")
# install.packages("ROI.plugin.quadprog")
# install.packages("reticulate")
#
# library(TTR)
# library(stringr)
library(shiny)
library(reticulate)
library(plyr)
library(dplyr)
library(plotly)
#library(quantmod)
library(PerformanceAnalytics)
library(shinythemes)
library(PortfolioAnalytics)
library(ROI)
library(ROI.plugin.glpk)
library(ROI.plugin.quadprog)

options(digits = 7)

# load the virtual env
reticulate::virtualenv_create("python35_env", python = "python3")
reticulate::virtualenv_install("python35_env",
                               packages = c("bdshare"))
reticulate::use_virtualenv("python35_env", required = TRUE)

# read the instrument names
inst <- readr::read_csv("Inst.csv")
tt <- inst$TRADING.CODE
