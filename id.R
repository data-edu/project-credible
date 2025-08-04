library(tidyverse)

fb <- read_csv("~/Downloads/fb_filtered.csv")

fb %>% 
    glimpse()

fb %>% 
    select(url, page_name, page_description) %>% 
    arrange(desc(page_name)) %>% 

 o