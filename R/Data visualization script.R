#Data Visualization
install.packages("tidyverse")
library(tidyverse)

install.packages("ggthemes")
library(ggthemes)

install.packages("palmerpenguins")
library(palmerpenguins)
palmerpenguins::penguins
view(penguins)
head(penguins)
str(penguins)
glimpse(penguins)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()

num <- 1:100
squares <- num * num
customdata <- data.frame(cbind(num,squares))
class(customdata)
ggplot(data = customdata,
       mapping = aes(x=num,y=squares)
)+
  geom_point()
