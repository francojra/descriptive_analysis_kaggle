
# Estatística descritiva - Dataset Kaggle --------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 17/11/23 ---------------------------------------------------------------------------------------------------------------------------
# Fonte dos dados: https://www.kaggle.com/datasets/rxnach/student-stress-factors-a-comprehensive-analysis ----------------------------------

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
        output_file = "report.pdf", 
        output_format = "pdf_document",
        report_title = "Dataset Kaggle - Estatística Descritiva"
    )

plot_str(dados)
plot_intro(dados)
plot_missing(dados)
plot_histogram(dados)
plot_bar(dados) # Para variáveis categóricas
plot_correlation(dados)
#plot_correlation(na.omit(dados), type = "c")
#plot_correlation(na.omit(dados), type = "d")
plot_qq(dados)
plot_prcomp(dados)
df <- dados[, c("anxiety_level", "study_load", "bullying", "sleep_quality")]
plot_boxplot(df, by = "anxiety_level")
plot_scatterplot(df, by = "anxiety_level")

