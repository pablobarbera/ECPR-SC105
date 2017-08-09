doInstall <- TRUE  # Change to FALSE if you don't want packages installed.
toInstall <- c("streamR", "ggplot2", "stringr", "readr",
	"devtools", "quanteda", "dplyr", "igraph",  "readtext",
	"stringi", "ghit", "SuperLearner", "e1071", "glmnet",
	"xgboost", "randomForest")
if (doInstall) install.packages(toInstall)
if (doInstall) devtools::install_github("netdem-usc/netdemR")

