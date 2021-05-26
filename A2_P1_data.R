members <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-22/members.csv')
expeditions <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-22/expeditions.csv')
peaks <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-22/peaks.csv')

expeditions %>%
  mutate(new_peak_name = fct_lump(peak_name, n = 15)) %>%
  drop_na(new_peak_name) %>%
  filter(new_peak_name != "Other") %>%
  ggplot(aes(x = fct_rev(fct_infreq(new_peak_name)), color = season)) +
  coord_flip() +
  geom_bar()



  