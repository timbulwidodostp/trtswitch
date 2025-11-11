# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Rank Preserving Structural Failure Time Model (RPSFTM) for Treatment Switching Use rpsftm (trtswitch) With (In) R Software
install.packages("trtswitch")
install.packages("dplyr")
library("trtswitch")
library("dplyr")
trtswitch = read.csv("https://raw.githubusercontent.com/timbulwidodostp/trtswitch/main/trtswitch/trtswitch.csv",sep = ";")
# Estimation Rank Preserving Structural Failure Time Model (RPSFTM) for Treatment Switching Use rpsftm (trtswitch) With (In) R Software
trtswitch <- trtswitch %>% mutate(rx = 1-xoyrs/progyrs)
rpsftm <- rpsftm(trtswitch, id = "id", time = "progyrs", event = "prog", treat = "imm", rx = "rx", censor_time = "censyrs", boot = FALSE)
rpsftm$psi
rpsftm$psi_CI
rpsftm$logrank_pvalue
rpsftm$cox_pvalue
rpsftm$hr
rpsftm$hr_CI
rpsftm$fit_outcome
# Rank Preserving Structural Failure Time Model (RPSFTM) for Treatment Switching Use rpsftm (trtswitch) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished