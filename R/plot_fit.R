library(ggplot2)

dat = read.csv("data/sim_data.csv")

p = ggplot(dat, aes(x = x, y = y)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "loess", formula = y ~ x, span = 0.3) +
  labs(title = "Scatter plot with LOESS fit") +
  theme_minimal()

print(p)