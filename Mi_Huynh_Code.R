
## 1. Element Variances, Sampling Variances, and Desired Sample Size

dataframe <- data_frame("Condition" = c("Ever smoked one cigarette", "Ever smoked marijuana", "Age when first approach to smoke cigarettes or marijuana"),
                        "Proportion/Age" = c(0.25, 0.18, 14),
                        "Std dev" = c("","",10))
dataframe$element_var <- dataframe$`Proportion/Age`*(1-dataframe$`Proportion/Age`)
dataframe$element_var[3] <- 10^2
dataframe$sampling_var <- (0.05*dataframe$`Proportion/Age`)^2
dataframe$desired_n <- ceiling(dataframe$element_var/dataframe$sampling_var)


sampling_frame <- read.csv(file = 
                             "/Users/mihuynh/Library/Mobile Documents/com~apple~CloudDocs/Michigan Program in Survey and Data Science/WN 2026/SURVMETH 625/Sampling Project/MI_school_frame_head_counts.csv")
unique(sampling_frame)
