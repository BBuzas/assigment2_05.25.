phd_field <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-19/phd_by_field.csv")

glimpse(phd_field)
sum_broad_field <- phd_field %>%
  summarize(broad_field)

aggdata <- phd_field %>%
  aggregate(by = sum_broad_field, 
