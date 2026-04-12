# library("readxl", "ggplot2", "rstatix", "dplyr")

here::i_am(
  "code/PE_code/01_PE_code.R"
)

data <- read_excel(here::here("data/nba_data.xlsx"))

table(data$Team, useNA = "ifany")

PFbT_anova <- aov(PF ~ Team,
                  data = data)
summary(PFbT_anova)

oneway.test(PF ~ Team, 
            data = data, 
            var.equal = FALSE)

games_howell_test(data, PF ~ Team)

PFbT_table <- data %>%
  group_by(Team) %>%
  summarise(
    mean_PF = mean(PF, na.rm = TRUE),
    sd_PF = sd(PF, na.rm = TRUE),
    n = n()
  )

PFbT_table

PFbT_boxplot <- ggplot(data, 
               aes(x = Team, 
                   y = PF)) +
  geom_boxplot(outlier.shape = NA) +
  geom_jitter(width = 0.2, alpha = 0.4) +
  theme(axis.text = element_text(angle = 45, hjust = 1))

PFbT_boxplot

PFbT_bar <- ggplot(PFbT_table, 
                   aes(x = reorder(Team, mean_PF),
                       y = mean_PF)) +
  geom_col() +
  coord_flip()

PFbT_bar