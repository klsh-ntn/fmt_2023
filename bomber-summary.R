library(dplyr)

bomber = readODS::read_ods('~/Documents/klsh-ntn/fmt_2023/fmt_results_2023.ods', sheet=3)

bomber_summary = group_by(bomber, team, bombardier) %>% 
  summarise(points = sum(points)) %>% arrange(-points)

head(bomber_summary, n=7)
