
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
