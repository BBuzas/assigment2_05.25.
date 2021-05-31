phd_field <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-19/phd_by_field.csv")

aggdata1 <- aggregate(n_phds ~ broad_field + year, phd_field, sum)
aggdata1 %>%
  ggplot(aes(x = year, y = n_phds, fill = broad_field, color = broad_field)) +
  geom_line() +
  scale_x_continuous(breaks = pretty_breaks(n = 5)) +
  labs(title = "Number of awarded Ph.D.-s in the US by year",
       x = element_blank(),
       y = element_blank()) +
  scale_colour_discrete("Broad field")
       
