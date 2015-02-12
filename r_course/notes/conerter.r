library(IRanges)
testC <- readChar("/Users/tcarroll/Downloads/htqc/r_course/introToR_Session2.md", file.info("/Users/tcarroll/Downloads/htqc/r_course/introToR_Session2.md")$size)
testCC <- strsplit(testC,"\n")
presBreaks <- grep("^=*=$",testCC[[1]])
presStarts <- presBreaks
presEnds <- c((presBreaks[-1]-1),length(testCC[[1]]))

slideRanges <- IRanges(presStarts,presEnds)

lefts <- grep("^left:",testCC[[1]])

pos <- grep("^type:",testCC[[1]])
sectionTypes <- testCC[[1]][grep("^type:",testCC[[1]])]

Section <- pos[grepl("Section|section",sectionTypes)]
sectionRanges <- IRanges(Section,Section)

sectionSlides <- start(slideRanges[slideRanges %over% sectionRanges])-1
otherSlides <- start(slideRanges[!slideRanges %over% sectionRanges])-1

testCC[[1]][sectionSlides] <- paste0("##",
  testCC[[1]][sectionSlides])

testCC[[1]][otherSlides] <- paste0("###",
                                     testCC[[1]][otherSlides])
testCC[[1]][pos] <- "\n"

testCC[[1]][grep("^=.*.=$",testCC[[1]])] <- "\n"


testCC[[1]][lefts] <- "\n"
unlink("/Users/tcarroll/Downloads/htqc/r_course/test.md")
lapply(testCC[[1]], cat, "\n", file="/Users/tcarroll/Downloads/htqc/r_course/test.md", append=TRUE)
getwd()

