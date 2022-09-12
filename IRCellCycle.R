library(pheatmap)
library(dplyr)


IR = read.csv("/nas/longleaf/home/kwamek/CellCycleIR/Intron-Retentention-introndepth-nonorm.csv",header = T,sep = ",")
names(IR)[names(IR) == "X"] <- "EVENT"

IRScore1 = read.csv("/nas/longleaf/home/kwamek/CellCycleIR/IRFinderScore1.csv",sep = ",",header = T)
IRScore1 = subset(IRScore1,select = c(-1))
names(IRScore1)[names(IRScore1) == 'SCORE'] <- 'SEED1'
names(IRScore1)[names(IRScore1) == 'FDR'] <- 'FDR1'

IRScore2 = read.csv("/nas/longleaf/home/kwamek/CellCycleIR/IRFinderScore2.csv",sep = ",",header = T)
IRScore2 = subset(IRScore2,select = c(-1))
names(IRScore2)[names(IRScore2) == 'SCORE'] <- 'SEED2'
names(IRScore2)[names(IRScore2) == 'FDR'] <- 'FDR2'

IRScore3 = read.csv("/nas/longleaf/home/kwamek/CellCycleIR/IRFinderScore3.csv",sep = ",",header = T)
IRScore3 = subset(IRScore3,select = c(-1))
names(IRScore3)[names(IRScore3) == 'SCORE'] <- 'SEED3'
names(IRScore3)[names(IRScore3) == 'FDR'] <- 'FDR3'

IRScore4 = read.csv("/nas/longleaf/home/kwamek/CellCycleIR/IRFinderScore4.csv",sep = ",",header = T)
IRScore4 = subset(IRScore4,select = c(-1))
names(IRScore4)[names(IRScore4) == 'SCORE'] <- 'SEED4'
names(IRScore4)[names(IRScore4) == 'FDR'] <- 'FDR4'

IRScore5 = read.csv("/nas/longleaf/home/kwamek/CellCycleIR/IRFinderScore5.csv",sep = ",",header = T)
IRScore5 = subset(IRScore5,select = c(-1))
names(IRScore5)[names(IRScore5) == 'SCORE'] <- 'SEED5'
names(IRScore5)[names(IRScore5) == 'FDR'] <- 'FDR5'

IRScore6 = read.csv("/nas/longleaf/home/kwamek/CellCycleIR/IRFinderScore6.csv",sep = ",",header = T)
IRScore6 = subset(IRScore6,select = c(-1))
names(IRScore6)[names(IRScore6) == 'SCORE'] <- 'SEED6'
names(IRScore6)[names(IRScore6) == 'FDR'] <- 'FDR6'

IRScore7 = read.csv("/nas/longleaf/home/kwamek/CellCycleIR/IRFinderScore7.csv",sep = ",",header = T)
IRScore7 = subset(IRScore7,select = c(-1))
names(IRScore7)[names(IRScore7) == 'SCORE'] <- 'SEED7'
names(IRScore7)[names(IRScore7) == 'FDR'] <- 'FDR7'

IRScore1 <- subset(IRScore1, FDR1 <=0.25)
IRScore2 <- subset(IRScore2, FDR2 <=0.25)
IRScore3 <- subset(IRScore3, FDR3 <=0.25)
IRScore4 <- subset(IRScore4, FDR4 <=0.25)
IRScore5 <- subset(IRScore5, FDR5 <=0.25)
IRScore6 <- subset(IRScore6, FDR6 <=0.25)
IRScore7 <- subset(IRScore7, FDR7 <=0.25)

IRSeed <- merge(IRScore1,IRScore2, by="EVENT", all.x = T,all.y = T)
IRSeed <- merge(IRSeed,IRScore3,by="EVENT", all.x = T,all.y = T)
IRSeed <- merge(IRSeed,IRScore4,by="EVENT", all.x = T,all.y = T)
IRSeed <- merge(IRSeed,IRScore5,by="EVENT", all.x = T,all.y = T)
IRSeed <- merge(IRSeed,IRScore6,by="EVENT", all.x = T,all.y = T)
IRSeed <- merge(IRSeed,IRScore7,by="EVENT", all.x = T,all.y = T)
IRSeed <- subset(IRSeed, select = c(1,2,4,6,8,10,12,14,3,5,7,9,11,13,15))

IRSeed[is.na(IRSeed)] = 1000
IRSeed$SCORE <- apply(IRSeed[,c(2:8)], 1, FUN=min)
IRSeed$seed <- colnames(IRSeed[,c(2:8)])[apply(IRSeed[,c(2:8)], 1, FUN=which.min)] 
IRSeed = subset(IRSeed,select=c(1,16,17))
IRSeed = subset(IRSeed,SCORE < 999)

IRTable = merge(IR,IRSeed,by="EVENT")
IRTable <- IRTable[order(IRTable$seed,IRTable$SCORE),]

#write.csv(IRTable,"Intron-Retention-SeedsandScore.csv")

anno3 <- data.frame(SEED=IRTable$seed,SCORE=IRTable$SCORE)


rownames(IRTable) <- IRTable$EVENT
rownames(anno3) <- IRTable$EVENT

cat_df = data.frame("CellStage" = c("G1-S","S","S-G2","G2-M","M-G1","M-G1","G1","G1-S","S-G2","G2-M",
                                    "M-G1","M-G1","G1","G1-S"))
rownames(cat_df) = colnames(IRTable[2:15])

IRTable2 <- subset(IRTable,SCORE <=2.5)
#write.csv(IRTable2,"Intron-Retention-SeedsandScore-under2_5.csv")

IRTable3 <- subset(IRTable,SCORE <=3)

#write.csv(IRTable3,"Intron-Retention-SeedsandScore-under3.csv")

pheatmap(IRTable2[2:15], show_rownames=F,cluster_cols= F,cluster_rows = F,scale = "row",
         annotation_row = anno3,annotation_col = cat_df, cellwidth = 10,color=colorRampPalette(c("red", "white", "blue"))(150),
         border_color = NA)


library(ggplot2)


matplot(t(cenpe_table[2:15]),type="l")

