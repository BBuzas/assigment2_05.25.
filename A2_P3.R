commute_mode <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-11-05/commute.csv")

aggdata <- aggregate(n ~ state + mode, commute_mode, sum)

theme_set(theme_light)

aggdata <-
  ggplot(aes)