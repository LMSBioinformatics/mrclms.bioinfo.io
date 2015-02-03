#' Read in all expression results from Expression Results directory.
filesToRead <- dir("../ExpressionResults/",pattern = "*\\.txt",full.names=T)
fileRead <- vector("list",length=length(filesToRead))
for(i in 1:length(filesToRead)){
  fileRead[[i]] <- read.delim(filesToRead[i],header=F,sep="\t")
  colnames(fileRead[[i]]) <- c("GeneNames",basename(filesToRead[i]))
}
#' Merge all results into a single table
mergedTable <- NULL
for(i in fileRead){
  if(is.null(mergedTable)){
    mergedTable <- i
  }else{
    mergedTable <- merge(mergedTable,i,by=1,all=T)
  }
  
  print(nrow(mergedTable))
}

#' First 3 lines of the table
# Just showing the first three lines
mergedTable[1:3,] 

#' Merge all results into a single table
Annotation <- read.table("../ExpressionResults/Annotation.ann",sep="\t",h=T)
annotatedExpression <- merge(Annotation,mergedTable,by=1,all.x=F,all.y=T)
#' First 2 lines of the annotated table
annotatedExpression[1:2,]

#' Some summary statistics of the pathway in question
table(Annotation$Pathway)
summary(Annotation$Pathway)
#' Correlation across samples
cor(annotatedExpression[,grep("ExpressionResults",colnames(annotatedExpression))])

#' Gather index of groups (Samples 1 to 5 group 1, Samples 6 to 10 group 2)
indexGroupOne <- grep("[1-5].txt",colnames(annotatedExpression))
indexGroupTwo <- grep("[6-9,0].txt",colnames(annotatedExpression))
ttestResults <- apply(annotatedExpression,1,function(x) t.test(as.numeric(x[indexGroupOne]),as.numeric(x[indexGroupTwo])))

#' Structure of t-test result

str(ttestResults[[1]])

#' Build annotated result
testResult <- sapply(ttestResults,function(x) c(log2(x$estimate[2]) - log2(x$estimate[1]), x$statistic,x$p.value))
testResult <- t(testResult)
colnames(testResult) <- c("logFC","tStatistic","pValue")
annotatedResult <- cbind(annotatedExpression[,1:3],testResult)
annotatedResult <- annotatedResult[order(annotatedResult$tStatistic),]
#' First few lines of result
annotatedResult[1:2,]
#write.table(annotatedResult,file="annotatedResults.csv",sep=",",row.names=F,col.names=F)
