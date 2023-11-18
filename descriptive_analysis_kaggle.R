
# Estatística descritiva - Dataset Kaggle --------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 17/11/23 ---------------------------------------------------------------------------------------------------------------------------

# Carregar pacotes -------------------------------------------------------------------------------------------------------------------------

library(dplyr)
library(psych)
library(stringi)

# Carregar dados ---------------------------------------------------------------------------------------------------------------------------

stringi::stri_enc_detect('StressLevelDataset.csv')
dados <- read.csv('StressLevelDataset.csv') # Para datasets separados por ",".

# Visualizar o banco de dados --------------------------------------------------------------------------------------------------------------

View(dados)
glimpse(dados)
names(dados)

# Descrição com função summary() -----------------------------------------------------------------------------------------------------------

summary(dados$anxiety_level)
summary(dados$self_esteem)
summary(dados$depression)
sleep_quality
noise_level
living_conditions
basic_needs
study_load
academic_performance
teacher_student_relationship
social_support
bullying
stress_level
