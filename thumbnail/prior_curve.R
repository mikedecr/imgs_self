library("tidyverse")
library("here")

betas <- tibble(x = seq(0, 1, .01)) %>%
    crossing(alpha = c(1, 3, 5, 7)) |>
    mutate(d = dbeta(x, alpha, exp(1))) |> 
    print()

ggplot(betas) +
    aes(x = x, y = d) +
    geom_line(aes(group = as.factor(alpha)),
              size = 3) +
    theme_void() +
    theme(
        panel.background = element_rect(fill = 'transparent', color = NA),
        plot.background = element_rect(fill = 'transparent', color = NA)
    )

ggsave(here('thumbnail', 'beta-tat.png'), height = 4, width = 6, bg = 'transparent')

