#Getting irfinder files nondir.txt

TP1 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535826irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP1 <- subset(TP1, Warnings %in% c("-","LowCover"))
TP1$EVENT <- paste(TP1$Chr,TP1$Start,TP1$End,TP1$Name,TP1$Strand,sep = "_")
rownames(TP1) = TP1$EVENT
TP1 <- subset(TP1,select = c(22,8,9,19,20))
names(TP1)[names(TP1) == 'Coverage'] <- 'Coverage_TP1'
names(TP1)[names(TP1) == 'IntronDepth'] <- 'IntronDepth_TP1'
names(TP1)[names(TP1) == 'SpliceExact'] <- 'SpliceExact_TP1'
names(TP1)[names(TP1) == 'IRratio'] <- 'IRratio_TP1'



TP2 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535828irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP2 <- subset(TP2, Warnings %in% c("-","LowCover"))
TP2$EVENT <- paste(TP2$Chr,TP2$Start,TP2$End,TP2$Name,TP2$Strand,sep = "_")
rownames(TP2) = TP2$EVENT
TP2 <- subset(TP2,select = c(22,8,9,19,20))
names(TP2)[names(TP2) == 'Coverage'] <- 'Coverage_TP2'
names(TP2)[names(TP2) == 'IntronDepth'] <- 'IntronDepth_TP2'
names(TP2)[names(TP2) == 'SpliceExact'] <- 'SpliceExact_TP2'
names(TP2)[names(TP2) == 'IRratio'] <- 'IRratio_TP2'

TP3 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535830irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP3 <- subset(TP3, Warnings %in% c("-","LowCover"))
TP3$EVENT <- paste(TP3$Chr,TP3$Start,TP3$End,TP3$Name,TP3$Strand,sep = "_")
rownames(TP3) = TP3$EVENT
TP3 <- subset(TP3,select = c(22,8,9,19,20))
names(TP3)[names(TP3) == 'Coverage'] <- 'Coverage_TP3'
names(TP3)[names(TP3) == 'IntronDepth'] <- 'IntronDepth_TP3'
names(TP3)[names(TP3) == 'SpliceExact'] <- 'SpliceExact_TP3'
names(TP3)[names(TP3) == 'IRratio'] <- 'IRratio_TP3'

TP4 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535832irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP4 <- subset(TP4, Warnings %in% c("-","LowCover"))
TP4$EVENT <- paste(TP4$Chr,TP4$Start,TP4$End,TP4$Name,TP4$Strand,sep = "_")
rownames(TP4) = TP4$EVENT
TP4 <- subset(TP4,select = c(22,8,9,19,20))
names(TP4)[names(TP4) == 'Coverage'] <- 'Coverage_TP4'
names(TP4)[names(TP4) == 'IntronDepth'] <- 'IntronDepth_TP4'
names(TP4)[names(TP4) == 'SpliceExact'] <- 'SpliceExact_TP4'
names(TP4)[names(TP4) == 'IRratio'] <- 'IRratio_TP4'

TP5 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535834irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP5 <- subset(TP5, Warnings %in% c("-","LowCover"))
TP5$EVENT <- paste(TP5$Chr,TP5$Start,TP5$End,TP5$Name,TP5$Strand,sep = "_")
rownames(TP5) = TP5$EVENT
TP5 <- subset(TP5,select = c(22,8,9,19,20))
names(TP5)[names(TP5) == 'Coverage'] <- 'Coverage_TP5'
names(TP5)[names(TP5) == 'IntronDepth'] <- 'IntronDepth_TP5'
names(TP5)[names(TP5) == 'SpliceExact'] <- 'SpliceExact_TP5'
names(TP5)[names(TP5) == 'IRratio'] <- 'IRratio_TP5'

TP6 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535835irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP6 <- subset(TP6, Warnings %in% c("-","LowCover"))
TP6$EVENT <- paste(TP6$Chr,TP6$Start,TP6$End,TP6$Name,TP6$Strand,sep = "_")
rownames(TP6) = TP6$EVENT
TP6 <- subset(TP6,select = c(22,8,9,19,20))
names(TP6)[names(TP6) == 'Coverage'] <- 'Coverage_TP6'
names(TP6)[names(TP6) == 'IntronDepth'] <- 'IntronDepth_TP6'
names(TP6)[names(TP6) == 'SpliceExact'] <- 'SpliceExact_TP6'
names(TP6)[names(TP6) == 'IRratio'] <- 'IRratio_TP6'

TP7 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535836irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP7 <- subset(TP7, Warnings %in% c("-","LowCover"))
TP7$EVENT <- paste(TP7$Chr,TP7$Start,TP7$End,TP7$Name,TP7$Strand,sep = "_")
rownames(TP7) = TP7$EVENT
TP7 <- subset(TP7,select = c(22,8,9,19,20))
names(TP7)[names(TP7) == 'Coverage'] <- 'Coverage_TP7'
names(TP7)[names(TP7) == 'IntronDepth'] <- 'IntronDepth_TP7'
names(TP7)[names(TP7) == 'SpliceExact'] <- 'SpliceExact_TP7'
names(TP7)[names(TP7) == 'IRratio'] <- 'IRratio_TP7'

TP8 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535837irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP8 <- subset(TP8, Warnings %in% c("-","LowCover"))
TP8$EVENT <- paste(TP8$Chr,TP8$Start,TP8$End,TP8$Name,TP8$Strand,sep = "_")
rownames(TP8) = TP8$EVENT
TP8 <- subset(TP8,select = c(22,8,9,19,20))
names(TP8)[names(TP8) == 'Coverage'] <- 'Coverage_TP8'
names(TP8)[names(TP8) == 'IntronDepth'] <- 'IntronDepth_TP8'
names(TP8)[names(TP8) == 'SpliceExact'] <- 'SpliceExact_TP8'
names(TP8)[names(TP8) == 'IRratio'] <- 'IRratio_TP8'

TP9 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535838irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP9 <- subset(TP9, Warnings %in% c("-","LowCover"))
TP9$EVENT <- paste(TP9$Chr,TP9$Start,TP9$End,TP9$Name,TP9$Strand,sep = "_")
rownames(TP9) = TP9$EVENT
TP9 <- subset(TP9,select = c(22,8,9,19,20))
names(TP9)[names(TP9) == 'Coverage'] <- 'Coverage_TP9'
names(TP9)[names(TP9) == 'IntronDepth'] <- 'IntronDepth_TP9'
names(TP9)[names(TP9) == 'SpliceExact'] <- 'SpliceExact_TP9'
names(TP9)[names(TP9) == 'IRratio'] <- 'IRratio_TP9'

TP10 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535839irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP10 <- subset(TP10, Warnings %in% c("-","LowCover"))
TP10$EVENT <- paste(TP10$Chr,TP10$Start,TP10$End,TP10$Name,TP10$Strand,sep = "_")
rownames(TP10) = TP10$EVENT
TP10 <- subset(TP10,select = c(22,8,9,19,20))
names(TP10)[names(TP10) == 'Coverage'] <- 'Coverage_TP10'
names(TP10)[names(TP10) == 'IntronDepth'] <- 'IntronDepth_TP10'
names(TP10)[names(TP10) == 'SpliceExact'] <- 'SpliceExact_TP10'
names(TP10)[names(TP10) == 'IRratio'] <- 'IRratio_TP10'

TP11 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535840irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP11 <- subset(TP11, Warnings %in% c("-","LowCover"))
TP11$EVENT <- paste(TP11$Chr,TP11$Start,TP11$End,TP11$Name,TP11$Strand,sep = "_")
rownames(TP11) = TP11$EVENT
TP11 <- subset(TP11,select = c(22,8,9,19,20))
names(TP11)[names(TP11) == 'Coverage'] <- 'Coverage_TP11'
names(TP11)[names(TP11) == 'IntronDepth'] <- 'IntronDepth_TP11'
names(TP11)[names(TP11) == 'SpliceExact'] <- 'SpliceExact_TP11'
names(TP11)[names(TP11) == 'IRratio'] <- 'IRratio_TP11'

TP12 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535841irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP12 <- subset(TP12, Warnings %in% c("-","LowCover"))
TP12$EVENT <- paste(TP12$Chr,TP12$Start,TP12$End,TP12$Name,TP12$Strand,sep = "_")
rownames(TP12) = TP12$EVENT
TP12 <- subset(TP12,select = c(22,8,9,19,20))
names(TP12)[names(TP12) == 'Coverage'] <- 'Coverage_TP12'
names(TP12)[names(TP12) == 'IntronDepth'] <- 'IntronDepth_TP12'
names(TP12)[names(TP12) == 'SpliceExact'] <- 'SpliceExact_TP12'
names(TP12)[names(TP12) == 'IRratio'] <- 'IRratio_TP12'

TP13 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535842irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP13 <- subset(TP13, Warnings %in% c("-","LowCover"))
TP13$EVENT <- paste(TP13$Chr,TP13$Start,TP13$End,TP13$Name,TP13$Strand,sep = "_")
rownames(TP13) = TP13$EVENT
TP13 <- subset(TP13,select = c(22,8,9,19,20))
names(TP13)[names(TP13) == 'Coverage'] <- 'Coverage_TP13'
names(TP13)[names(TP13) == 'IntronDepth'] <- 'IntronDepth_TP13'
names(TP13)[names(TP13) == 'SpliceExact'] <- 'SpliceExact_TP13'
names(TP13)[names(TP13) == 'IRratio'] <- 'IRratio_TP13'

TP14 =read.csv("/pine/scr/k/w/kwamek/pengda_collab/irfiles/SRR3535843irfinder/IRFinder-IR-nondir.txt",sep ="\t")
#TP14 <- subset(TP14, Warnings %in% c("-","LowCover"))
TP14$EVENT <- paste(TP14$Chr,TP14$Start,TP14$End,TP14$Name,TP14$Strand,sep = "_")
rownames(TP14) = TP14$EVENT
TP14 <- subset(TP14,select = c(22,8,9,19,20))
names(TP14)[names(TP14) == 'Coverage'] <- 'Coverage_TP14'
names(TP14)[names(TP14) == 'IntronDepth'] <- 'IntronDepth_TP14'
names(TP14)[names(TP14) == 'SpliceExact'] <- 'SpliceExact_TP14'
names(TP14)[names(TP14) == 'IRratio'] <- 'IRratio_TP14'


IntronRetentionTable2 <- merge(TP1,TP2, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP3, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP4, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP5, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP6, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP7, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP8, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP9, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP10, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP11, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP12, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP13, by="EVENT", all.x = T,all.y = T)
IntronRetentionTable2 <- merge(IntronRetentionTable2,TP14, by="EVENT", all.x = T,all.y = T)
IntronRetentionTableOrdered2 <- subset(IntronRetentionTable2,select=c(1,
                                                                    2,6,10,14,18,22,26,30,34,38,42,46,50,54,
                                                                    3,7,11,15,19,23,27,31,35,39,43,47,51,55,
                                                                    4,8,12,16,20,24,28,32,36,40,44,48,52,56,
                                                                    5,9,13,17,21,25,29,33,37,41,45,49,53,57))
# write.csv(IntronRetentionTableOrdered,"Intron-Retention-Organize-wNAs.csv")
IntronRetentionIntronDepth2 = subset(IntronRetentionTableOrdered2,select =c(1,16:29))
IntronRetentionIntronDepth2 <- na.omit(IntronRetentionIntronDepth2)
rownames(IntronRetentionIntronDepth2) = IntronRetentionIntronDepth2$EVENT
IntronRetentionIntronDepth2 = subset(IntronRetentionIntronDepth2, select = c(-1))
#write.csv(IntronRetentionIntronDepth2,"Intron-Retentention-introndepth-nonorm.csv")
#Row wise normalization
IntronRetentionIntronDepthScaled2 = t(apply(IntronRetentionIntronDepth2, 1, function(x)(x-min(x))/(max(x))))
IntronRetentionIntronDepthScaled2 = as.data.frame(IntronRetentionIntronDepthScaled2)
IntronRetentionIntronDepthScaled2 = na.omit(IntronRetentionIntronDepthScaled2)
#write.csv(IntronRetentionIntronDepthScaled2,"Intron-Retentention-introndepth-rownorm.csv")

# IRtp = rbind(TP1,TP2,TP3,TP4,TP5,TP6,TP7,TP8,TP9,TP10,TP11,TP12,TP13,TP14)
# #write.csv(IRtp,"Intron-Retention-TimePoints.csv")
# IRtp_goodCover <- subset(IRtp,(IntronDepth+SpliceExact)>=10&SpliceExact>=4)
# #IRtp_clean <- select(IRtp,Warnings["-"])
# IRtp_clean <- subset(IRtp, Warnings %in% c("-"))
# # write.csv(IRtp_clean,"Intron-Retention-NoWarnings.csv")















