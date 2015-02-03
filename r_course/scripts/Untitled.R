filesToRead <- dir("../ExpressionResults/",pattern = "*\\.txt",full.names=T)
print(filesToRead)
fileRead <- vector("list",length=length(filesToRead))
for(i in 1:length(filesToRead)){
  fileRead[[i]] <- read.delim(filesToRead[i],header=F,sep="\t")
  colnames(fileRead[[i]]) <- c("GeneNames",basename(filesToRead[i]))
}

