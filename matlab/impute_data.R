# Dependencies
library("mice")

# Get data
filepath = "C:\\Users\\andre\\Dropbox\\Phd\\SleepAge\\Scripts\\data\\data_missing.csv"
data_missing = read.table(filepath, sep=',')

# Data imputation
imp <- mice(data_missing ,m=5, maxit=50, meth='pmm', seed = 260794)
data_imputed = complete(imp)

# Write table out
filepath_out = "C:\\Users\\andre\\Dropbox\\Phd\\SleepAge\\Scripts\\data\\data_imputed.csv"
write.table(data_imputed, filepath_out, sep=',')
