library(dplyr, zoo)

risk <- read.csv('./data/prepped/risk-factors.csv')

risk$average.risk <- rowMeans(risk[7:ncol(risk)], na.rm = TRUE)

# Which risk-disease combination has the highest relative risk?

# For each risk factor, which disease is the greatest risk for?

# For each disease, what is the greatest risk factor?

# Which diseases have different risks for men and women?