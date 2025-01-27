##Importing Data##

VDEM_Electoral_Data <- read.csv("/Users/matthewrisley/Desktop/Senior Thesis /V-Dem-CY-FullOthers-v14_csv_YyKfizl/cleaned_VDEM_data.csv")


Merged_data <-  read.csv("/Users/matthewrisley/Desktop/Senior Thesis /Cleaning Dataframes/MergedDES-VDEMData.csv")
 
head(Merged_data)

#experimenting with regressions
test1 <- lm(tier1_EffElecThrsh ~ enep + e_area + e_gdppc + e_wb_pop, data = Merged_data, na.action = na.omit)

summary(test1)

help(lm)

