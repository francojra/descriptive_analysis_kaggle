
# Estatística descritiva - Dataset Kaggle --------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 17/11/23 ---------------------------------------------------------------------------------------------------------------------------

# Carregar pacotes -------------------------------------------------------------------------------------------------------------------------

library(tidyverse)
library(stringi)
library(hrbrthemes)
library(viridis)
library(psych)
library(Hmisc)
library(pastecs)
library(DataExplorer)

# Carregar dados ---------------------------------------------------------------------------------------------------------------------------

stringi::stri_enc_detect('StressLevelDataset.csv')
dados <- read.csv('StressLevelDataset.csv') # Para datasets separados por ",".

# Visualizar o banco de dados --------------------------------------------------------------------------------------------------------------

View(dados)
glimpse(dados)
names(dados)

# Estatística descritiva com a função summary() --------------------------------------------------------------------------------------------

summary(dados$anxiety_level)
summary(dados$self_esteem)
summary(dados$depression)
summary(dados$sleep_quality)
summary(dados$noise_level)
summary(dados$living_conditions)
summary(dados$basic_needs)
summary(dados$study_load)
summary(dados$academic_performance)
summary(dados$teacher_student_relationship)
summary(dados$social_support)
summary(dados$bullying)
summary(dados$stress_level)

# Estatística descritiva com a função describe() -------------------------------------------------------------------------------------------

describe(dados)
describe(dados$anxiety_level)
describe(dados$self_esteem)
describe(dados$depression)
describe(dados$sleep_quality)
describe(dados$noise_level)
describe(dados$living_conditions)
describe(dados$basic_needs)
describe(dados$study_load)
describe(dados$academic_performance)
describe(dados$teacher_student_relationship)
describe(dados$social_support)
describe(dados$bullying)
describe(dados$stress_level)

# Estatística descritiva com o pacote Hmisc ------------------------------------------------------------------------------------------------

describe(dados)

### Gmd:

### Quando não são utilizados pesos, a diferença média de Gini é calculada 
### para variáveis numéricas. Isto é um medida robusta de dispersão que é 
### a diferença média absoluta entre quaisquer pares de observações.

### When weights are not used, Gini’s mean difference is computed for n
### numeric variables. This is a robust measure of dispersion that is the
### mean absolute difference between any pairs of observations.
### In simple output Gini’s difference is labeled Gmd.

# Estatística descritiva com o pacote pastecs ----------------------------------------------------------------------------------------------

stat.desc(dados)

# Relatório completo com análises exploratórias --------------------------------------------------------------------------------------------

relatorio <- 
  dados %>%
    create_report(
        output_file = paste("Relatorio_Estatística_Descritiva"),
        report_title = "Dataset Kaggle - Estatística Descritiva"
    )

# Gráficos ---------------------------------------------------------------------------------------------------------------------------------

data <- dados %>%
  gather(key = "text", value = "value") %>%
  mutate(text = gsub("\\.", " ",text)) %>%
  mutate(value = as.integer(value)) %>%
  mutate(value = round(as.numeric(value),0)) %>%
  mutate(text = fct_reorder(text, value)) 
view(data)

ggplot(data, aes(x = as.integer(value), color = text, fill = text)) +
  geom_histogram(alpha = 0.6) +
  scale_fill_viridis(discrete = TRUE) +
  scale_color_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position = "none",
    panel.spacing = unit(0.1, "lines"),
    strip.text.x = element_text(size = 8)) +
  xlab("") +
  ylab("Frequência") +
  facet_wrap(~text, scales = "free")


