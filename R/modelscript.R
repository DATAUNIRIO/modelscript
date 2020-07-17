#' Create a Modelling Template in a new .R file in RStudio
#' @importFrom rstudioapi documentNew
#' @export
modelscript <- function() {
  documentNew(
  text = "###########################################################################
##    Nome:
##
##    site:                                                                                                                                                 ##
##    Objetivo:
##    prof. Steven Dutt-Ross
##    UNIRIO
###########################################################################

# Opcoes  ---------------------------------------------------------------
#Disable scientific notation
options(scipen=999)
options(stringsAsFactors = FALSE)
options(digits = 15)
names(options())
# Projeto  ---------------------------------------------------------------
localdoprojeto<-readClipboard()
setwd(localdoprojeto)
dir.create(paste0(localdoprojeto,'/codigo_r'))
dir.create(paste0(localdoprojeto,'/rmarkdown'))
dir.create(paste0(localdoprojeto,'/rmarkdown/css'))
dir.create(paste0(localdoprojeto,'/dados'))
dir.create(paste0(localdoprojeto,'/imagem'))
dir.create(paste0(localdoprojeto,'/www'))
# Libraries ---------------------------------------------------------------
library(tidyverse)



# Dados --------------------------------------------------------------------




# Limpeza (tidy) --------------------------------------------------------------------




# Analise Exploratoria --------------------------------------------------------------





# Visualizacao ---------------------------------------------------------------


# SAVE ---------------------------------------------------------------
saveRDS(dados,file='dados.RDS')
save(dados,file='dados.RData')
minha_lista<-list(dados1,dados2,dados3)
writexl::write_xlsx(minha_lista,path = 'dados.xlsx')
write.csv2(dados,file ='dados.csv')

###########################################################################



",
  type = "r"
  )
}
