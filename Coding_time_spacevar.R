#Coding time and space factor variables as well as running initial regressions
Merged_data$time_factor <- factor(Merged_data$year)
Merged_data$country_factor <- factor(Merged_data$country)

#Initial Test Regression
Just_enpp1 <- lm(tier1_EffElecThrsh ~ enpp1, data = Merged_data)
Reg_with_factors <- lm(tier1_EffElecThrsh ~ enpp1 +time_factor +country_factor,data = Merged_data)

#Trying with plm
install.packages("plm")
library(plm)
plm_regression1 <- plm(tier1_EffElecThrsh ~ enpp1, data = Merged_data, index = c("year", "country"),
                       model = "within")
summary(plm_regression1)

#Now adding Controls

install.packages("modelsummary")
library(modelsummary)
msummary(plm_regression1, stars = c('*' = .1, '**' = .05, '***' = .01))


