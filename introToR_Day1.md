Introduction to R
========================================================
author: Thomas Carroll, Sanjay Khadayate
date: Februrary 8th
width: 1440
height: 1100
autosize: true
font-import: <link href='http://fonts.googleapis.com/css?family=Slabo+27px' rel='stylesheet' type='text/css'>
font-family: 'Slabo 27px', serif;
css:style.css

Overview
========================================================

- [Background to R] (#/background)
- [Data-types in R] (#/datatypes)
- [Reading and writing data in R.](#/reading)
- [Plotting in R.](#/plotting)
- [Statistics in R](#/stats)


What is R?
========================================================
id: background
**R** is scripting language and environment for **statistical computing**.


Developed by [Robert Gentleman](http://www.gene.com/scientists/our-scientists/robert-gentleman) and [Ross Ihaka](https://www.stat.auckland.ac.nz/~ihaka/). 


Inheriting much from its predecessor **S** (Bell labs).

- Open source & cross platform
- Suited to high level data analysis
- Extensive graphics capabilities
- Diverse range of add-on packages
- Active community of developers
- Thorough documentation

What is R to you?
========================================================

**R** comes with excellent "out-of-box" statistical and plotting capabilities.


**R** provides access to 1000s of packages ([CRAN](http://cran.r-project.org/)/[MRAN](http://mran.revolutionanalytics.com/)/[R-forge](https://r-forge.r-project.org/)) which extend the basic functionality of R while maintaining high quality documentation.


In particular, [Robert Gentleman](http://www.gene.com/scientists/our-scientists/robert-gentleman) developed the **[Bioconductor](http://bioconductor.org/)** project where 100's of packages are directly related to Biology and analysis of associated high-throughput experiments.
***

![alt text](imgs/RCitations.jpeg)

How to get R?
========================================================
left: 50%

Freely available from [R-project website](http://cran.ma.imperial.ac.uk/).

RStudio provides an integrated development environment (IDE) which is freely available from [RStudio site](http://www.rstudio.com/)


***We will be using RStudio and R already installed on your machines.***

***
![alt text](imgs/cran.jpeg)
![alt text](imgs/rstudio.jpeg)

A quick tour of RStudio
========================================================
left: 30%
Four main panels
- Scripting panel
- R interface
- Environment and History
- Files, directories and help


**Let's load RStudio and take a look**
***

![alt text](imgs/rstudioBlank.jpeg)


Data in R
========================================================
id: datatypes
type: section

- Simple Calculations
- Variables
- Vectors
- Lists
- Matrices
- Data frames



Simple Calculations 
========================================================
type: subsection
At its most basic, **R** can be used as a simple calculator.

```r
> 3+1
```

```
[1] 4
```

```r
> 2*2
```

```
[1] 4
```

```r
> sqrt(25)-1
```

```
[1] 4
```

Using functions.
========================================================

The **sqrt(25)** demostrates the use of functions in R.

A function performs a complex operation on it's arguments and returns the result.

In R, arguments are provided to a function within the parenthesis -- **()** -- that follows the function name.

So **sqrt(*ARGUMENT*)** will provide the square root of value of ***ARGUMENT***.

Other examples of functions include **mean()**, **sum()**, **max()**. Note multiple arguments are separated by a comma.


```r
mean(2,4,6)
```

```
[1] 2
```

```r
sum(2,4,6)
```

```
[1] 12
```

```r
max(2,4,6)
```

```
[1] 6
```

Using functions.
========================================================

R has many useful functions "built in" and ready to use as soon as R is loaded.

An incomplete, illustrative list can be seen [here](http://www.columbia.edu/~cjd11/charles_dimaggio/DIRE/resources/R/rFunctionsList.pdf) 

In addition to R standard functions, additional functionality can be loaded into R using libraries. These include specialised tools for areas such as sequence alignment, read counting etc.

If you need to see how a function works try **?** infront of function name.

```r
?sqrt
```


Lets run **?sqrt** in RStudio and look at the help.

Using functions (Arguments have names and order)
========================================================

With functions such as mean() and sqrt(), the arguments to be provided are obvious and the order of these arguments doesnt matter.


```r
mean(5,4,6)
```

```
[1] 5
```

```r
mean(6,4,5)
```

```
[1] 6
```

Many functions however have an order to their arguments.
Try and look at the arguments for the dir() function.

```
?dir
```
Using functions (Setting names for arguments)
========================================================

Often we know the names of arguments but not necessarily their order.
In cases where we want to be sure we specify the right argument, we provide names for the arguments used.


```r
dir()
dir(full.names=T)
```

This also means we don't have to copy out all the defaults for arguments preceeding it.


```r
dir(full.names=T)
# Is equivalent to...
dir(".",NULL,FALSE,T)
```


Variables (1/2)
========================================================

As with other programming languages and even graphical calculators, **R** makes use of **variables**.

A **variable** stores a value as a letter or word.

In **R**, we make use of the assignment operator **<-** 

```r
x <- 10
```
Now **x** holds the value of 10

```r
x
```

```
[1] 10
```

Variables.(2/2)
========================================================


```r
x
```

```
[1] 10
```
Variables can be altered in place

```r
x <- 20
x
```

```
[1] 20
```
Variables can be used just as the values they contain.

```r
x + sqrt(25)
```

```
[1] 25
```
Variables can be used to create new variables

```r
y <- x + sqrt(25)
y
```

```
[1] 25
```

Vectors.(1/13)
========================================================
In **R** the most basic variable or data type is a "Vector". A vector is an ordered collection of values. The x and y variable we have previously assigned is an example of a vector of length 1.


```r
x
```

```
[1] 20
```

```r
length(x)
```

```
[1] 1
```

To create a multiple value vector we use the function **c()** to *combine* the supplied arguments into one vector.


```r
x <- c(1,2,3,4,5,6,7,8,9,10)
x
```

```
 [1]  1  2  3  4  5  6  7  8  9 10
```

```r
length(x)
```

```
[1] 10
```

Vectors (2/13).
========================================================
Vectors of continuous stretches of values can be created by this shortcut.


```r
y <- 6:10
y
```

```
[1]  6  7  8  9 10
```

Another useful function to create stretchs of numeric vectors are seq() and rep()
The seq() function creates a sequence of numeric values from a specified start and end value, incrementing by a user defined amount. The rep() function repeats a variable a user-defined number of time



```r
seq(from=1,to=5,by=2)
```

```
[1] 1 3 5
```

```r
rep(c(1,5,10),3)
```

```
[1]  1  5 10  1  5 10  1  5 10
```

Vectors(3/13) - Indexing 
========================================================
Square brackets **[]** identify the position within a vector (the **index**).
These indicies can be used to extract relevant values from vectors.

A vector is an ordered collection of values. The x and y variable we have previously assigned is an example of a vector of length 1.


```r
x
```

```
 [1]  1  2  3  4  5  6  7  8  9 10
```

```r
x[1]
```

```
[1] 1
```

```r
x[8]
```

```
[1] 8
```
Vectors(4/13) - Indexing 
========================================================

Indicies can be used to extract values from a multiple positions within a vector.


```r
x[c(1,6)]
```

```
[1] 1 6
```
Negative indicies can be used to extract all positions except that specified


```r
x[-5]
```

```
[1]  1  2  3  4  6  7  8  9 10
```


Vectors(5/13) (indexing) 
========================================================

We can use indicies to modify a specific position in vector


```r
x
```

```
 [1]  1  2  3  4  5  6  7  8  9 10
```

```r
x[5] <- -5
x
```

```
 [1]  1  2  3  4 -5  6  7  8  9 10
```

Indicies can be specified using other vectors.


```r
y
```

```
[1]  6  7  8  9 10
```

```r
x[y] <- 0
x
```

```
 [1]  1  2  3  4 -5  0  0  0  0  0
```

Remember!
========================================================

Square brackets **[]**  for indexing

```r
x[1]
```

```
[1] 1
```

Parentheses **()**  for function argments.

```r
sqrt(4)
```

```
[1] 2
```

Vectors(6/13) - operations 
========================================================

Vectors in R can be used in arithmetic operations as seen with variables earlier.
When a standard arithmetic operation is applied to vector, the operation is applied to each position in a vector.


```r
x <- c(1,2,3,4,5,6,7,8,9,10)
x
```

```
 [1]  1  2  3  4  5  6  7  8  9 10
```

```r
y <- x*2
y
```

```
 [1]  2  4  6  8 10 12 14 16 18 20
```

Multiple vectors can be used within arithmetic operations. 

```r
x+y
```

```
 [1]  3  6  9 12 15 18 21 24 27 30
```
Vectors (7/13) - operations 
========================================================

When applying an arithmetic operation between two vectors of unequal length, the shorter will be recycled.


```r
x+c(1,2)
```

```
 [1]  2  4  4  6  6  8  8 10 10 12
```


```r
x+c(1,2,3)
```

```
 [1]  2  4  6  5  7  9  8 10 12 11
```

Vectors (8/13) - Character vectors.
========================================================

So far we have only looked at numeric vectors.

In R we can also create character vectors again using **c()** function. These vectors can be indexed just the same.


```r
y <- c("ICTEM","CommonWealth","Wolfson")
y[2]
```

```
[1] "CommonWealth"
```

Character vectors can be used to assign names to other vectors.


```r
x <- c(1:3)
names(x) <- y
x
```

```
       ICTEM CommonWealth      Wolfson 
           1            2            3 
```
Vectors (9/13) - Character vectors.
========================================================


These named vectors maybe indexed a positions "name".

```r
x[c("ICTEM","Wolfson")]
```

```
  ICTEM Wolfson 
      1       3 
```
Index names missing from vectors will return special value "NA"

```r
x[c("Strand")]
```

```
<NA> 
  NA 
```

A note on NA values
====================

In R, like many languages, when a value in a variable is missing, the value is assigned a **NA** value.

Similarly, when a calculation can not be perfomed, R will input a **NaN** value.

- **NA** - Not Available.
- **NaN** - Not A Number.

**NA** values allow for R to handle missing data correctly but requires different handling than standard numeric, character or logical values. We will discuss handling **NA** values later.


Vectors (10/13). Logical vectors
========================================================

Logical vectors are a special type of value made up of TRUE/T or FALSE/F


```r
z <- c(T,F,T,F,T,F,T,F,T,F) 
# z <-  c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE) 
z
```

```
 [1]  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE
```
Logical vectors can be used like an index to specify postions in a vector


```r
x <- 1:10
x[z]
```

```
[1] 1 3 5 7 9
```

Vectors (11/13). Logical vectors
========================================================

Numeric vectors may be evaluated to produce logical vectors. This can be very useful when using a logical as an index

Common examples are:

- **==**  evaluates as equal.
- **>** and **<** evaluates as greater or less than respectively.
- **>=** and **<=** evaluates as greater than or equal or less than or equal respectively.


```r
x > 5
```

```
 [1] FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
```

```r
x[x > 5]
```

```
[1]  6  7  8  9 10
```

Vectors (12/13). Logical vectors continued.
========================================================

Logical vectors can be used in combination to index vectors. To combine logical vectors we can use some common R operators.

- **&** Requires both logical evaluators to be TRUE
- **|** Requires either logical evaluator to be TRUE.
- **!** Reverses logical operator, so TRUE is FALSE and FALSE is TRUE.


```r
x <- 1:10
!x > 4
```

```
 [1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
```

```r
x > 4 & x < 7
```

```
 [1] FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE
```

```r
x > 4 | x < 7
```

```
 [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
```

Vectors (13/13). Logical vectors continued.
========================================================

Such combinations can allow for complex selection of vector's values.

```r
x <- 1:10
x[x > 4 & x < 7]
```

```
[1] 5 6
```

```r
x[x > 4 & !x < 7]
```

```
[1]  7  8  9 10
```


Time for an exercise!
========================================================

- Create a vector called "Counts" containing values 4000,2000,3008,4089,1055
- Name this vector with gene names Pax5, Oct4, Sox2, Med2, Jrd2
- Create a vector called "gene.lengths" with same names but values 2000,200,3000,201.
- Calculate counts per gene length for every gene.
- Identify gene with counts greater than the average.

Answers to exercise.
========================================================

Answers to this exercise (or at least one possible answer!) can be found here!

Matrices (1/)
========================================================

In excel we are used to tables.

All progamming languages have a concept of a table. In **R**, the most basic table type is a **Matrix**.

A **Matrix** can be created suing the ***matrix()*** function specifying the arguments of nrow and ncol specifying the number of rows and columns respectively.

```r
narrowMatrix <- matrix(1:10, nrow=5, ncol=2)
narrowMatrix
```

```
     [,1] [,2]
[1,]    1    6
[2,]    2    7
[3,]    3    8
[4,]    4    9
[5,]    5   10
```

```r
wideMatrix <- matrix(1:10, nrow=2, ncol=5)
wideMatrix
```

```
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10
```
Matrices (2/)
========================================================

To find dimensions of a matrix, the dim() function will provide dimensions as row number and column number while nrow() and ncol() will return just row number and column number respectively.

```r
dim(narrowMatrix)
```

```
[1] 5 2
```

```r
nrow(narrowMatrix)
```

```
[1] 5
```

```r
ncol(narrowMatrix)
```

```
[1] 2
```

Matrices (3/) (Joining vectors and Matrices)
========================================================

A Matrix can be created from multiple vectors or other Matrices.

**cbind()** can be used to attach data to a matrix as columns.

```r
x <- 1:10
y <- 11:20
z <- 21:22
newMatrix <- cbind(x,y)
newMatrix
```

```
       x  y
 [1,]  1 11
 [2,]  2 12
 [3,]  3 13
 [4,]  4 14
 [5,]  5 15
 [6,]  6 16
 [7,]  7 17
 [8,]  8 18
 [9,]  9 19
[10,] 10 20
```
***
**rbind()** functions to bind to a matrix as rows.

```r
newerMatrix <- rbind(newMatrix,z)
newerMatrix
```

```
   x  y
   1 11
   2 12
   3 13
   4 14
   5 15
   6 16
   7 17
   8 18
   9 19
  10 20
z 21 22
```

Matrices (4/) - Joining vectors and Matrices
========================================================

When creating a matrix using **cbind()** or **matrix()** from incompatable vectors then shorted vector is recycled. 




```r
recycledMatrix2 <- matrix(1:5,ncol=2,nrow=3)
recycledMatrix2
```

```
     [,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    1
```
***
For **rbind()** function longer vector is clipped.

```r
recycledMatrix3 <- rbind(recycledMatrix2,c(1:5))
recycledMatrix3
```

```
     [,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    1
[4,]    1    2
```

Matrices (5/) - Column names
========================================================

As with vectors, matrices can be named. For matrices the naming is done by columns and rows using **colnames()** and **rownames()** functions.


```r
namedMatrix <- matrix(1:10,ncol=5,nrow=2)
colnames(namedMatrix) <- paste("Column",1:5,sep="_")
rownames(namedMatrix) <- paste("Row",1:2,sep="_")
namedMatrix
```

```
      Column_1 Column_2 Column_3 Column_4 Column_5
Row_1        1        3        5        7        9
Row_2        2        4        6        8       10
```

Information of matrix names can also be retreived using the same functions.

```r
colnames(namedMatrix)
```

```
[1] "Column_1" "Column_2" "Column_3" "Column_4" "Column_5"
```

```r
rownames(namedMatrix)
```

```
[1] "Row_1" "Row_2"
```


Matrices (6/) - Indexing
========================================================

Selecting and replacing portions of a matrix can be done by **indexing** using square brackets **[]** much like for vectors.

When indexing Matrices,two values may be provided within the square brackets separated by a comma to retrieve information on a matrix position.

The first value corresponds to rows and the second to columns.

- ***myMatrix[rowOfInterest,columnOfInterest]***

```r
narrowMatrix
```

```
     [,1] [,2]
[1,]    1    6
[2,]    2    7
[3,]    3    8
[4,]    4    9
[5,]    5   10
```
Value of first column, second row

```r
narrowMatrix[2,1]
```

```
[1] 2
```

Matrices (7/) - Indexing
========================================================

Similarly, whole rows or columns can be extracted. Single rows and columns will return a vector. When multiple columns or row indices are specified, a matrix is returned. 


Values of second column (row index is empty!)

```r
narrowMatrix[,2]
```

```
[1]  6  7  8  9 10
```

Values of third row (column index is empty!)

```r
narrowMatrix[3,]
```

```
[1] 3 8
```

Values of second and third row (column index is empty!)

```r
narrowMatrix[c(2,3),]
```

```
     [,1] [,2]
[1,]    2    7
[2,]    3    8
```

Matrices (8/) (indexing)
========================================================

As with vectors, names can be used for indexing when present


```r
colnames(narrowMatrix) <- paste("Column",1:2,sep="_")
rownames(narrowMatrix) <- paste("Row",1:5,sep="_")
narrowMatrix[,"Column_1"]
```

```
Row_1 Row_2 Row_3 Row_4 Row_5 
    1     2     3     4     5 
```

```r
narrowMatrix["Row_1",]
```

```
Column_1 Column_2 
       1        6 
```

```r
narrowMatrix[,"Column_1"]
```

```
Row_1 Row_2 Row_3 Row_4 Row_5 
    1     2     3     4     5 
```

```r
narrowMatrix["Row_1","Column_1"]
```

```
[1] 1
```

Matrices (9/) (advanced indexing)
========================================================

As with vectors, Matrices can be subset by logical vectors

```r
narrowMatrix
```

```
      Column_1 Column_2
Row_1        1        6
Row_2        2        7
Row_3        3        8
Row_4        4        9
Row_5        5       10
```

```r
narrowMatrix[,1]
```

```
Row_1 Row_2 Row_3 Row_4 Row_5 
    1     2     3     4     5 
```

```r
narrowMatrix[,1] < 5
```

```
Row_1 Row_2 Row_3 Row_4 Row_5 
 TRUE  TRUE  TRUE  TRUE FALSE 
```
***

```r
narrowMatrix[narrowMatrix[,1] < 5,]
```

```
      Column_1 Column_2
Row_1        1        6
Row_2        2        7
Row_3        3        8
Row_4        4        9
```

Matrices (10/) - Arithmetic operations.
========================================================

As with vectors, Matrices can have arithmetic operations applied to cells,rows, columns or the whole matrix

```r
narrowMatrix
```

```
      Column_1 Column_2
Row_1        1        6
Row_2        2        7
Row_3        3        8
Row_4        4        9
Row_5        5       10
```

```r
narrowMatrix[1,1]+2
```

```
[1] 3
```

```r
narrowMatrix[1,]+2
```

```
Column_1 Column_2 
       3        8 
```

```r
mean(narrowMatrix)
```

```
[1] 5.5
```

Matrices (10/) - Replacement
========================================================

As with vectors, Matrices can have their elements replaced

```r
narrowMatrix
```

```
      Column_1 Column_2
Row_1        1        6
Row_2        2        7
Row_3        3        8
Row_4        4        9
Row_5        5       10
```

```r
narrowMatrix[1,1] <- 10
narrowMatrix[,2] <- 1
narrowMatrix
```

```
      Column_1 Column_2
Row_1       10        1
Row_2        2        1
Row_3        3        1
Row_4        4        1
Row_5        5        1
```
Matrices (11/) (Replacement)
========================================================

Matrices must be all one type (numeric or character).

Here replacing one value with character will turn numeric matrix to character matrix.


```r
narrowMatrix[,2] *2
```

```
Row_1 Row_2 Row_3 Row_4 Row_5 
    2     2     2     2     2 
```

```r
narrowMatrix[1,1] <- "Not_A_Number"
narrowMatrix
```

```
      Column_1       Column_2
Row_1 "Not_A_Number" "1"     
Row_2 "2"            "1"     
Row_3 "3"            "1"     
Row_4 "4"            "1"     
Row_5 "5"            "1"     
```


```r
narrowMatrix[,2] *2
```

```
Error in narrowMatrix[, 2] * 2: non-numeric argument to binary operator
```

Factors (1/6)
========================================================

A special case of a vector is a **factor**.

Factors are used to store data which may be grouped in categories (categorical data).
Specifying data as categorical allows R to properly handle the data and make use of functions specific to categorical data.

To create a factor from a vector we use the **factor()** function.Note that the factor now has an additional component called **"levels"** which identifies all categories within the vector.


```r
vectorExample <- c("male","female","female","female")
factorExample <- factor(vectorExample)
factorExample
```

```
[1] male   female female female
Levels: female male
```

```r
levels(factorExample)
```

```
[1] "female" "male"  
```

Factors (2/6)
========================================================

An example of the use of levels can be seen from applying the summary() function to the vector and factor examples



```r
summary(vectorExample)
```

```
   Length     Class      Mode 
        4 character character 
```

```r
summary(factorExample)
```

```
female   male 
     3      1 
```


Factors (3/6) - levels
========================================================
In our factor example the levels have been displayed in an alphabetical order. To adjust the display order of levels in a factor, we can supply the desired display order to **levels** argument in the **factor()** function call.


```r
factorExample <- factor(vectorExample,levels=c("male","female"))
factorExample
```

```
[1] male   female female female
Levels: male female
```

```r
summary(factorExample)
```

```
  male female 
     1      3 
```


Factors (4/6) - Nominal factors
========================================================
In some cases there is no natural order to the categories such that one category is greater than the other (Nominal data).
In this case we can see that R is gender neutral.


```r
factorExample <- factor(vectorExample,levels=c("male","female"))
factorExample[1] < factorExample[2]
```

```
[1] NA
```
Factors (5/6) - Ordinal factors
========================================================

In other cases there will be a natural ordering to the categories (ordinal data). A factor can be specified to be ordered using the ordered argument in combination with specified levels argument.


```r
factorExample <- factor(c("small","big","big","small"),ordered=TRUE,levels=c("small","big"))
factorExample[1] < factorExample[2]
```

```
[1] TRUE
```

Factors (6/6) Replacement
========================================================

Unlike vectors, replacing elements within a factor isn't so easy. While replacing one element with an established level is possible, replacing with a novel element will result in a warning.


```r
factorExample <- factor(c("small","big","big","small"))
factorExample[1] <- c("big")
factorExample
```

```
[1] big   big   big   small
Levels: big small
```

```r
factorExample[1] <- c("huge")
factorExample
```

```
[1] <NA>  big   big   small
Levels: big small
```

To add a new level we can use the levels argument.


```r
levels(factorExample) <- c("big","small","huge")
factorExample[1] <- c("huge")
factorExample
```

```
[1] huge  big   big   small
Levels: big small huge
```

Data.frames (1/)
=========================================================

We saw that with matrices you can only have one type of data. We tried to create a matrix with a character elelment and the entire matrix became a character.

In practice, we would want to have a table which is a mixture of types (e.g a table with samplenames (character), sampletype (factor) and survival time (numeric))

In R, we make use of the data.frame object which allows us to store tables with columns of different data types in one container. To create a data frame we can simply use the data.frame() function.


```r
patientName <- c("patient1","patient2","patient3","patient4")
patientType <- factor(rep(c("male","female"),2))
survivalTime <- c(1,30,2,20)
dfExample <- data.frame(Name=patientName, Type=patientType,Survival_Time=survivalTime)
dfExample
```

```
      Name   Type Survival_Time
1 patient1   male             1
2 patient2 female            30
3 patient3   male             2
4 patient4 female            20
```



Data.frames (2/) - Indexing and replacement
=========================================================

Data frames may be indexed just as matrices.


```r
dfExample
```

```
      Name   Type Survival_Time
1 patient1   male             1
2 patient2 female            30
3 patient3   male             2
4 patient4 female            20
```

```r
dfExample[dfExample[,"Survival_Time"] > 10,]
```

```
      Name   Type Survival_Time
2 patient2 female            30
4 patient4 female            20
```

Data.frames (3/) - Indexing and replacement
=========================================================

Unlike matrices however, certain columns can not be replaced. Numeric columns may have their values replaced but columns with character values may not.This occurs because character vectors are treated as factors by default.



```r
dfExample[dfExample[,"Survival_Time"] < 10,"Survival_Time"] <- 0
dfExample
```

```
      Name   Type Survival_Time
1 patient1   male             0
2 patient2 female            30
3 patient3   male             0
4 patient4 female            20
```


```r
dfExample[dfExample[,"Survival_Time"] < 10,"Name"] <- "patientX"
dfExample
```

```
      Name   Type Survival_Time
1     <NA>   male             0
2 patient2 female            30
3     <NA>   male             0
4 patient4 female            20
```

Data.frames (4/) (Advanced indexing)
=========================================================
Unlike matrices, it is possible to index a column by using the "$" symbol.


```r
dfExample <- data.frame(Name=patientName,Type=patientType,Survival_Time=survivalTime)

dfExample$Survival_Time
```

```
[1]  1 30  2 20
```

```r
dfExample[dfExample$Survival_Time < 10,]
```

```
      Name Type Survival_Time
1 patient1 male             1
3 patient3 male             2
```
Using the "$" allows for R to autocomplete your selection and so can speed up coding.


```r
dfExample$Surv
```

```
[1]  1 30  2 20
```
But this will not work..

```r
dfExample[,"Surv"]
```

Data.frames (Creating new column)
=========================================================

The **$** operator allows for the creation of new columns for a data frame on the fly.


```r
dfExample
```

```
      Name   Type Survival_Time
1 patient1   male             1
2 patient2 female            30
3 patient3   male             2
4 patient4 female            20
```

```r
dfExample$newColumn <- rep("newData",nrow(dfExample))
dfExample
```

```
      Name   Type Survival_Time newColumn
1 patient1   male             1   newData
2 patient2 female            30   newData
3 patient3   male             2   newData
4 patient4 female            20   newData
```

Data.frames (5/) (factors)
=========================================================
It is possible to update factors in data.frames just as with standard factorss


```r
dfExample <- data.frame(Name=patientName,Type=patientType,Survival_Time=survivalTime)

levels(dfExample[,"Name"]) <- c(levels(dfExample[,"Name"]) , "patientX")
dfExample[dfExample[,"Survival_Time"] < 10,"Name"] <- "patientX"
dfExample
```

```
      Name   Type Survival_Time
1 patientX   male             1
2 patient2 female            30
3 patientX   male             2
4 patient4 female            20
```

Data.frames (6/) (Creating data.frames without factors)
=========================================================
If you wish to avoid using factors in data.frames then the **stringsAsFactors** argument to **data.frame()** function should be set to **FALSE**


```r
dfExample <- data.frame(Name=patientName,
                        Type=patientType,
                        Survival_Time=survivalTime,
                        stringsAsFactors = F)

levels(dfExample[,"Name"]) <- c(levels(dfExample[,"Name"]) , "patientX")
dfExample[dfExample[,"Survival_Time"] < 10,"Name"] <- "patientX"
dfExample
```

```
      Name   Type Survival_Time
1 patientX   male             1
2 patient2 female            30
3 patientX   male             2
4 patient4 female            20
```

Data.frames (Ordering)
=========================================================
A useful function in R is order()

For numeric vectors, order() by default returns the indices of vector in that vector's increasing order. This behaviour can be altered by using the "decreasing" argument passed to order.


```r
testOrder <- c(2,1,3)
testOrder
```

```
[1] 2 1 3
```

```r
testOrder[order(testOrder)]
```

```
[1] 1 2 3
```

```r
testOrder[order(testOrder,decreasing=T)]
```

```
[1] 3 2 1
```
Data.frames (Ordering with NA values)
=========================================================

When a vector contains NA valuees, these NA values will by default be placed last in ordering indices. This can be controlled by na.last argument.


```r
testOrder <- c(2,1,NA,3)
testOrder[order(testOrder,decreasing=T,na.last=T)]
```

```
[1]  3  2  1 NA
```

```r
testOrder[order(testOrder,decreasing=T,na.last=F)]
```

```
[1] NA  3  2  1
```

Data.frames (Ordering data.frames)
=========================================================
Since the order argument returns an index of intended order for vector, we can use the order() function to order Data.frames by certain columns

```r
dfExample
```

```
      Name   Type Survival_Time
1 patientX   male             1
2 patient2 female            30
3 patientX   male             2
4 patient4 female            20
```

```r
dfExample[order(dfExample$Surv, decreasing=T),]
```

```
      Name   Type Survival_Time
2 patient2 female            30
4 patient4 female            20
3 patientX   male             2
1 patientX   male             1
```
***
We can also use order to arrange multiple columns in a data.frame by providing multiple vectors to order() function. Ordering will be performed in order of arguments.


```r
dfExample[order(dfExample$Type,
                dfExample$Survival,
                decreasing=T),]
```

```
      Name   Type Survival_Time
3 patientX   male             2
1 patientX   male             1
2 patient2 female            30
4 patient4 female            20
```


Data.frames (Merging data frames)
=========================================================

A common operation is to join two data frames by common values in a column.



```r
dfExample <- data.frame(Name=patientName,
                        Type=patientType,
                        Survival_Time=survivalTime)
dfExample 
```

```
      Name   Type Survival_Time
1 patient1   male             1
2 patient2 female            30
3 patient3   male             2
4 patient4 female            20
```

```r
dfExample2 <- data.frame(Name=patientName[1:3],
                        height=c(6.1,5.1,5.5))

dfExample2
```

```
      Name height
1 patient1    6.1
2 patient2    5.1
3 patient3    5.5
```
***
To do this we can use the merge() function witht he data frames as the first two arguments. We can then specify the columns to merge by with the **by** argument. To keep only data pertaining to values common to both data.frames the **all** argument is set to TRUE.


```r
mergedDF <- merge(dfExample,dfExample2,by=1,all=F)
mergedDF
```

```
      Name   Type Survival_Time height
1 patient1   male             1    6.1
2 patient2 female            30    5.1
3 patient3   male             2    5.5
```

Lists
=========================================================

Lists are the final data-type we will look. 

In R, lists provide a general container which may hold any data-types of unequal lengths as part of its elements.
To create a list we can simply use the list() function with arguments specifying the data we wish to include in the list.


```r
firstElement <- c(1,2,3,4)
secondElement <- matrix(1:10,nrow=2,ncol=5)
thirdElement <- data.frame(colOne=c(1,2,4,5),colTwo=c("One","Two","Three","Four"))
myList <- list(firstElement,secondElement,thirdElement)
myList
```

```
[[1]]
[1] 1 2 3 4

[[2]]
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10

[[3]]
  colOne colTwo
1      1    One
2      2    Two
3      4  Three
4      5   Four
```

Lists (Named List)
=========================================================

Just as with vectors, list elements can be assigned names.


```r
myNamedList <- list(First=firstElement,Second=secondElement,Third=thirdElement)
myNamedList
```

```
$First
[1] 1 2 3 4

$Second
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10

$Third
  colOne colTwo
1      1    One
2      2    Two
3      4  Three
4      5   Four
```
Lists (Indexing)
=========================================================

List, as with other data types in R can be indexed. In contrast to other types, using "[]" on a list will subset the list to another list of selected indices. To retrieve an element from a list in R , two square brackets "[[]]" must be used. 


```r
myList <- list(firstElement,secondElement,thirdElement)
myList[1]
```

```
[[1]]
[1] 1 2 3 4
```

```r
myList[[1]]
```

```
[1] 1 2 3 4
```

As with data.frames, the $ sign may be used to extract elements from a list


```r
myNamedList$First
```

```
[1] 1 2 3 4
```

Lists (Joining lists)
=========================================================

Again, similar to vectors, Lists can be joined in R using the c() function 


```r
myNamedList <- list(First=firstElement,Second=secondElement,Third=thirdElement)
myNamedList <- c(myNamedList,list(fourth=c(4,4)))
myNamedList[c(1,4)]
```

```
$First
[1] 1 2 3 4

$fourth
[1] 4 4
```

Lists (Joining lists)
=========================================================

Note that we are joining to lists. If we joined a vector to a list, all elements of the vector would become list elements.


```r
myList <- c(myList,c(4,4))
myList
```

```
[[1]]
[1] 1 2 3 4

[[2]]
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10

[[3]]
  colOne colTwo
1      1    One
2      2    Two
3      4  Three
4      5   Four

[[4]]
[1] 4

[[5]]
[1] 4
```

Lists (Flattening lists)
=========================================================

Sometimes you will wish to "flatten" out a list. When a list contains compatable objects, i.e. list of all one type, the unlist() function can be used. Note the maintenance of names with their additional sufficies.


```r
myNamedList <- list(First=c(1,2,3),Second=c(2,6,7),Third=c(1,4,7))
myNamedList
```

```
$First
[1] 1 2 3

$Second
[1] 2 6 7

$Third
[1] 1 4 7
```

```r
flatList <- unlist(myNamedList)
flatList
```

```
 First1  First2  First3 Second1 Second2 Second3  Third1  Third2  Third3 
      1       2       3       2       6       7       1       4       7 
```



Lists (Flattening lists to matrices)
=========================================================
A common step is to turn a list of standard results into matrix. This can be done in a few steps in R.


```r
myNamedList <- list(First=c(1,2,3),Second=c(2,6,7),Third=c(1,4,7))
flatList <- unlist(myNamedList)
listAsMat <- matrix(flatList,
                    nrow=length(myNamedList),
                    ncol=3,
                    byrow=T,
                    dimnames=list(names(myNamedList)))
listAsMat
```

```
       [,1] [,2] [,3]
First     1    2    3
Second    2    6    7
Third     1    4    7
```


Getting data into R
=========================================================
type:section
id: reading


Data from External sources
=========================================================

Most of the time, you will not be generating data in R but will be importing data from external files.

A standard format for this data is a table


|Gene_Name | Sample_1.hi| Sample_2.hi| Sample_3.hi| Sample_4.low| Sample_5.low| Sample_1.low|
|:---------|-----------:|-----------:|-----------:|------------:|------------:|------------:|
|Gene_a    |    3.619870|    3.565693|    2.918220|     3.192061|     4.934651|     3.908286|
|Gene_b    |    3.615613|    4.580671|    3.175597|     3.508025|     2.135248|     5.270615|
|Gene_c    |    4.304657|    3.269823|    2.785510|     5.184055|     3.342988|     3.528294|
|Gene_d    |    3.314754|    4.369782|    5.010148|     9.210037|     7.257552|     9.277683|
|Gene_e    |    9.907406|    9.964224|    9.674389|     2.586390|     2.609637|     3.327964|
|Gene_f    |   11.041257|   11.780896|   10.403029|     3.036337|     4.760157|     3.573750|
|Gene_g    |    7.385688|   10.210069|    9.308123|     9.919614|     9.377866|     7.881101|
|Gene_h    |   10.983953|   11.090267|   10.442830|     7.845099|     9.294959|    10.500772|

Data from text file
=========================================================

Tables from text files can be read with **read.table()** function


```r
Table <- read.table("readThisTable.csv",sep=",",header=T)
Table[1:4,1:3]
```

```
  Gene_Name Sample_1.hi Sample_2.hi
1    Gene_a    3.619870    3.565693
2    Gene_b    3.615613    4.580671
3    Gene_c    4.304657    3.269823
4    Gene_d    3.314754    4.369782
```

Here we have provided two arguments. 
- **sep** argument specifies how columns are separated in our text file. ("," for .csv, "\t" for .tsv)
- **header** argument specifies whether columns have headers.

Data from text file
=========================================================

Read.table() allows for significant control over reading files through its has many arguments. Have a look at options by using **?read.table**

The row.names() argument can be used to specify a column to use as rownames for the resulting data frame. Here we use the first column as row names.


```r
Table <- read.table("readThisTable.csv",sep=",",header=T,row.names=1)
Table[1:4,1:3]
```

```
       Sample_1.hi Sample_2.hi Sample_3.hi
Gene_a    3.619870    3.565693    2.918220
Gene_b    3.615613    4.580671    3.175597
Gene_c    4.304657    3.269823    2.785510
Gene_d    3.314754    4.369782    5.010148
```

Data from text files
=========================================================

As mentioned, data which is read into R through read.table() will be of data frame class.

To avoid character columns being converted into factors, we can specify the stringsAsFactors argument here.


```r
Table <- read.table("readThisTable.csv",sep=",",header=T,stringsAsFactors=F)
```

Other very useful functions for read table include:
- **skip** - To set number of lines to skip when reading.
- **comment.char** - To set the start identifier for lines not to be read.

Data from file columns
=========================================================

read.table() function will by defualt read every row and column of a file.

The **scan()** function allows for the selection of particular columns to be read into R and so can save memory when files are large. 



```r
x <- scan("readThisTable.csv",sep=",",
what = list("",NULL,NULL,NULL,NULL,NULL,NULL),skip=1)
x[1:3]
```

```
[[1]]
[1] "Gene_a" "Gene_b" "Gene_c" "Gene_d" "Gene_e" "Gene_f" "Gene_g" "Gene_h"

[[2]]
NULL

[[3]]
NULL
```

Writing data to file
=========================================================

Once we have our data analysed in R, we will want to export it to a file. 

The most common method is to use the write.table() function


```r
write.table(Table,file="writeThisTable.csv",sep=",")
```

Since our data has column names but no row names, I will provide the arguments col.names and row.names to write.table()


```r
write.table(Table,file="writeThisTable.csv", sep=",", row.names =F,col.names=T)
```



Plotting in R
========================================================
type:section



========================================================

1.  Introduction

2.  Base graphics
  + Line Charts
  + Bar Charts
  + Histograms
  + Pie Charts
  + Dot charts
  + Combining Plots
     
3.  Saving your plot

4.	Lattice R package

5.	ggplot2 R package


Introduction
========================================================
R has excellent graphics and plotting capabilities. They are mostly found in following three sources.
 + base graphics
 + the lattice package
 +  the ggplot2 package
 
Lattice and ggplot2 packages are built on grid graphics package while the base graphics routines adopt a pen and paper model for plotting.


Base Graphics
========================================================
+ Line Charts

First we'll produce a very simple graph using the values in the treatment vector:


```r
treatment <- c(0.02,1.8, 17.5, 55,75.7, 80)
```

Plot the treatment vector with default parameters


```r
plot(treatment)
```

Point Plot
========================================================

<img src="introToR_Day1-figure/unnamed-chunk-98-1.png" title="plot of chunk unnamed-chunk-98" alt="plot of chunk unnamed-chunk-98" width="1920px" />

=======================================================
Now, let's add a title, a line to connect the points, and some color:

Plot treatment using blue points overlayed by a line


```r
plot(treatment, type="o", col="blue")
```
Create a title with a red, bold/italic font

```r
title(main="Treatment", col.main="red", font.main=4)
```

Line Plot
========================================================
<img src="introToR_Day1-figure/unnamed-chunk-101-1.png" title="plot of chunk unnamed-chunk-101" alt="plot of chunk unnamed-chunk-101" width="1920px" />

========================================================
Now let's add a red line for a control vector and specify the y-axis range directly so it will be large enough to fit the data:

Define control vector

```r
control <- c(0, 20, 40, 60, 80,100)
```

Plot treatment using a y axis that ranges from 0 to 100

```r
plot(treatment, type="o", col="blue", ylim=c(0,100))
```
Plot control with red dashed line and square points

```r
lines(control, type="o", pch=22, lty=2, col="red")
```


==========================================================

Create a title with a red, bold/italic font

```r
title(main="Expression Data", col.main="red", font.main=4)
```

<img src="introToR_Day1-figure/unnamed-chunk-106-1.png" title="plot of chunk unnamed-chunk-106" alt="plot of chunk unnamed-chunk-106" width="1920px" />

==========================================================

Next let's change the axes labels to match our data and add a legend. 
We'll also compute the y-axis values using the max function 
so any changes to our data will be automatically 
reflected in our graph. 

Calculate range from 0 to max value of data

```r
g_range <- range(0, treatment, control)
```

range returns a vector containing the minimum and maximum of all the given arguments.

Plot treatment using y axis that ranges from 0 to max value in treatment or control vector.  Turn off axes and annotations (axis labels) so we can specify them ourselves.

========================================================


```r
plot(treatment, type="o", col="blue", ylim=g_range,axes=FALSE, ann=FALSE)
```

Make x axis using labels


```r
axis(1, at=1:6, lab=c("Mon","Tue","Wed","Thu","Fri","Sat"))
```

Make y axis with horizontal labels that display ticks at every 20 marks. 


```r
axis(2, las=1, at=20*0:g_range[2])
```

Create box around plot


```r
box()
```

========================================================

<img src="introToR_Day1-figure/unnamed-chunk-112-1.png" title="plot of chunk unnamed-chunk-112" alt="plot of chunk unnamed-chunk-112" width="1920px" />

========================================================
Calculate range from 0 to max value of data

```r
g_range <- range(0, treatment, control)
```

range returns a vector containing the minimum and maximum of all the given arguments.

Plot treatment using y axis that ranges from 0 to max value in treatment or control vector.  Turn off axes and annotations (axis labels) so we can specify them ourselves.


```r
plot(treatment, type="o", col="blue", ylim=g_range,axes=FALSE, ann=FALSE)
```

========================================================

Make x axis using labels

```r
axis(1, at=1:6, lab=c("Mon","Tue","Wed","Thu","Fri","Sat"))
```

Make y axis with horizontal labels that display ticks at every 20 marks. 


```r
axis(2, las=1, at=20*0:g_range[2])
```

Create box around plot

```r
box()
```

========================================================

Plot control vector with red dashed line and square points


```r
lines(control, type="o", pch=22, lty=2, col="red")
```

Create a title with a red, bold/italic font

```r
title(main="Data", col.main="red", font.main=4)
```

Label the x and y axes with dark green text

```r
title(xlab="Days", col.lab=rgb(0,0.5,0))
title(ylab="Values", col.lab=rgb(0,0.5,0))
```

========================================================

Create a legend at (1, g_range[2]) that is slightly smaller (cex) and uses the same line colors and points used by the actual plots 


```r
legend(1, g_range[2], c("treatment","control"), cex=0.8, col=c("blue","red"), pch=21:22, lty=1:2);  
```

<img src="introToR_Day1-figure/unnamed-chunk-122-1.png" title="plot of chunk unnamed-chunk-122" alt="plot of chunk unnamed-chunk-122" width="1920px" />
 	
	
========================================================	
	
Bar Charts
Let's start with a simple bar chart graphing the treatment vector: 
Plot treatment


```r
barplot(treatment)
```

<img src="introToR_Day1-figure/unnamed-chunk-124-1.png" title="plot of chunk unnamed-chunk-124" alt="plot of chunk unnamed-chunk-124" width="1920px" />

========================================================
 
Let's now read the data from the example.txt data file, add labels, blue borders around the bars, and density lines: 

Read values from tab-delimited example.txt

```r
data <- read.table("example.txt", header=T, sep="\t")
```

Plot treatment with specified labels for axes.  Use blue borders and diagonal lines in bars.


```r
barplot(data$treatment, main="Treatment", xlab="Days",ylab="values", names.arg=c("Mon","Tue","Wed","Thu","Fri","Sat"),  border="blue", density=c(10,20,30,40,50,60))
```



========================================================

names.arg  is a vector of names to be plotted below each bar or group of bars. 
density	a vector giving the density of shading lines, in lines per inch, for the bars or bar components.

<img src="introToR_Day1-figure/unnamed-chunk-127-1.png" title="plot of chunk unnamed-chunk-127" alt="plot of chunk unnamed-chunk-127" width="1920px" />

========================================================	
Now let's plot the treatment data using some color and show a legend: 

   
Graph data with adjacent bars using colors


```r
barplot(as.matrix(data), main="Data", ylab= "Total", beside=TRUE, col= c("lightblue", "mistyrose", "lightcyan","lavender", "cornsilk","maroon"))
```

Place the legend at the top-left corner with no frame


```r
legend("topleft", c("Mon","Tue","Wed","Thu","Fri","Sat"), cex=0.8,bty="n", 
fill=  c("lightblue", "mistyrose", "lightcyan","lavender", "cornsilk","maroon"));
```

========================================================

<img src="introToR_Day1-figure/unnamed-chunk-130-1.png" title="plot of chunk unnamed-chunk-130" alt="plot of chunk unnamed-chunk-130" width="1920px" />

========================================================	
Histograms
Let's start with a simple histogram plotting the distribution of the treatment vector: 

Create a histogram for treatment

```r
hist(treatment)	
```

<img src="introToR_Day1-figure/unnamed-chunk-132-1.png" title="plot of chunk unnamed-chunk-132" alt="plot of chunk unnamed-chunk-132" width="1920px" />

========================================================

Concatenate the three vectors


```r
all <- c(data$control, data$treatment)
```

Create a histogram for data in light blue with the y axis ranging from 0-10

```r
hist(all, col="lightblue", ylim=c(0,10))
```
***
<img src="introToR_Day1-figure/unnamed-chunk-135-1.png" title="plot of chunk unnamed-chunk-135" alt="plot of chunk unnamed-chunk-135" width="1920px" />

======================================================== 	

Now change the breaks so none of the values are grouped together and flip the y-axis labels horizontally. 

Compute the largest value used in the data


```r
max_num <- max(all)
```

Create a histogram for data with fire colors, set breaks so each number   is in its own group, make x axis range from 0-max_num, disable right-closing  of cell intervals, set heading, and make  y-axis labels horizontal.

========================================================


```r
hist(all, col=heat.colors(max_num), breaks=max_num, xlim=c(0,max_num), right=F, 
main="Histogram", las=1)	
```

breaks: a single number giving the number of cells for the histogram,
An open interval does not include its endpoints, and is indicated with parentheses.

For example (0,1) means greater than 0 and less than 1. 

A closed interval includes its endpoints, and is denoted with square brackets. 
For example [0,1] means greater than or equal to 0 and less than or equal to 1.



========================================================

<img src="introToR_Day1-figure/unnamed-chunk-138-1.png" title="plot of chunk unnamed-chunk-138" alt="plot of chunk unnamed-chunk-138" width="1920px" />

========================================================

Now let's create uneven breaks and graph the probability density. 

 Create uneven breaks

```r
brk <- c(0,30,40,50,60,80,100)
```

Create a histogram for all data with fire colours, set uneven breaks, make x axis range from 0-max_num, disable right-closing of cell intervals,  set heading, make y-axis labels horizontal, make axis labels smaller, make areas of each column proportional to the count

========================================================


```r
hist(all, col=heat.colors(length(brk)), breaks=brk,xlim=c(0,max_num), right=F, main="Probability Density",las=1, cex.axis=0.8, freq=F)
```

 		
freq	logical; 
if TRUE, the histogram graphic is a representation of frequencies

if FALSE, probability densities, component density, are plotted

<img src="introToR_Day1-figure/unnamed-chunk-141-1.png" title="plot of chunk unnamed-chunk-141" alt="plot of chunk unnamed-chunk-141" width="1920px" />


========================================================
Pie Charts
Let's start with a simple pie chart graphing the treatment vector: 
 Create a pie chart for treatment

```r
pie(treatment)
```

<img src="introToR_Day1-figure/unnamed-chunk-143-1.png" title="plot of chunk unnamed-chunk-143" alt="plot of chunk unnamed-chunk-143" width="1920px" />

========================================================

Now let's add a heading, change the colours, and define our own labels: 

Create a pie chart with defined heading and  custom colours and labels

```r
pie(treatment, main="Treatment", col= c("lightblue", "mistyrose", "lightcyan","lavender", "cornsilk","maroon"),
    labels=c("Mon","Tue","Wed","Thu","Fri","Sat"))	
```

<img src="introToR_Day1-figure/unnamed-chunk-145-1.png" title="plot of chunk unnamed-chunk-145" alt="plot of chunk unnamed-chunk-145" width="1920px" />

========================================================

Now let's change the colours, label using percentages, and create a legend: 
Define some colours ideal for black & white print

```r
colors <- c("white","grey70","grey90","grey50","black")
```

Calculate the percentage for each day, rounded to one decimal place

```r
treatment_labels <- round(treatment/sum(treatment) * 100, 1)
```

Concatenate a '%' char after each value

```r
treatment_labels <- paste(treatment_labels, "%", sep="")
```

========================================================

Create a pie chart with defined heading and custom colors and labels


```r
pie(treatment, main="treatment", col=colors, labels= treatment_labels,cex=0.8)
```

Create a legend at the right   

```r
legend(1.5, 0.5, c("Mon","Tue","Wed","Thu","Fri","Sat"), cex=0.8,fill=colors)	
```

========================================================

<img src="introToR_Day1-figure/unnamed-chunk-151-1.png" title="plot of chunk unnamed-chunk-151" alt="plot of chunk unnamed-chunk-151" width="1920px" />

========================================================
Dot charts
Let's start with a simple dot chart graphing the data: 

Create a dot chart for data
Function t returns the transpose of a matrix.

```r
dotchart(t(data))	
```
<img src="introToR_Day1-figure/unnamed-chunk-153-1.png" title="plot of chunk unnamed-chunk-153" alt="plot of chunk unnamed-chunk-153" width="1920px" />

========================================================

Let's make the dotchart a little more colorful: 

Create a colored dotchart for autos with smaller labels

```r
dotchart(t(data), color=c("red","blue","darkgreen"),main="Dotchart", cex=0.8)	
```
<img src="introToR_Day1-figure/unnamed-chunk-155-1.png" title="plot of chunk unnamed-chunk-155" alt="plot of chunk unnamed-chunk-155" width="1920px" />

Combining Plots
======================================================== 


R makes it easy to combine multiple plots into one overall graph, using either the par( ) or layout( ) function. 
With the par( ) function, you can include the option mfrow=c(nrows, ncols) to create a matrix of nrows x ncols plots that are filled in by row.
mfcol=c(nrows, ncols) fills in the matrix by columns.

Define a layout with 2 rows and 2 columns


```r
par(mfrow=c(2,2))
```


========================================================

Here, we will use different dataset with two columns each for treated and untreated samples.


```r
data1 <- read.table("gene_data.txt", header=T, sep="\t")
head(data1)
```

```
     ensembl_gene_id Untreated1 Untreated2  Treated1   Treated2
1 ENSDARG00000093639  0.8616832  1.9311442 0.1041508 0.14055604
2 ENSDARG00000094508  0.9857575  2.0256352 0.1549917 0.20301609
3 ENSDARG00000095893  0.8498889  1.9875580 0.2317969 0.20925123
4 ENSDARG00000095252  0.9242996  2.0857620 0.2562264 0.24669079
5 ENSDARG00000078878  0.3571734  0.4653908 0.1167221 0.09710237
6 ENSDARG00000079403  1.0604071  1.2581398 0.3884836 0.31567299
```

========================================================

Plot histograms for different columns in the data frame separately. This is not very efficient. you would see how to do it more efficiently using for loop later on.


```r
hist(data1$Untreated1)
hist(data1$Treated2)
hist(data1$Untreated2)
boxplot(data1$Treated1)
```

========================================================

 
<img src="introToR_Day1-figure/unnamed-chunk-159-1.png" title="plot of chunk unnamed-chunk-159" alt="plot of chunk unnamed-chunk-159" width="1920px" />

========================================================

<img src="introToR_Day1-figure/unnamed-chunk-160-1.png" title="plot of chunk unnamed-chunk-160" alt="plot of chunk unnamed-chunk-160" width="1920px" />

========================================================

<img src="introToR_Day1-figure/unnamed-chunk-161-1.png" title="plot of chunk unnamed-chunk-161" alt="plot of chunk unnamed-chunk-161" width="1920px" />

========================================================

<img src="introToR_Day1-figure/unnamed-chunk-162-1.png" title="plot of chunk unnamed-chunk-162" alt="plot of chunk unnamed-chunk-162" width="1920px" />

Saving your plots
========================================================


There are many different ways of saving your plots in R. 

The only argument you would need is name of file in which you want to save the plot.

Plotting commands then can be entered as usual.
The output would be redirected to the file. 

When you're done with your plotting commands, enter the dev.off() command. 




```r
bmp(filename, width = 480, height = 480, units = "px", point-size = 12)
jpeg(filename, width = 480, height = 480, units = "px", point-size = 12, quality = 75)
```

========================================================

Saving in bitmap format

```r
bmp(file = "control.bmp")
plot(control)
dev.off()
```

Saving in jpeg format

```r
jpeg(file = "control.jpg", quality = 20)
plot(control)
dev.off()
```

========================================================

Saving in postscript format


```r
postscript(file = "control.ps")
plot(control)
dev.off()
```


```r
saving in pdf format
pdf(file = "control.pdf", paper = "A4")
plot(control)
dev.off()
```

Lattice R package
========================================================



Lattice is an excellent package for visualizing multivariate data. 
It has great set of routines for quickly displaying complex data sets with ease. 

Advantages of using lattice package are as following.

Plots with lattice package usually look better.

They can be extended in powerful ways.

The resulting output can be annotated, edited and saved.

========================================================

Basic form for lattice function call is function.name (formula).

The general arrangement of a formula in a lattice function is:
           vertical.axis.variable ~ horizontal.axis.variable
           
Note that the tilde operator (i.e., ~) must be used in a lattice function call, even if the graph only   uses a single variable.

For e.g., histogram(~data$x),  xyplot(data$y ~ data$x)

========================================================

Some of the functions available in lattice package are as following:
Graphs for univariate data

histogram(), densityplot(),bwplot()

Graphs for showing quantiles of one or more distributions

qqmath(),qq()

Two-dimensional data

xyplot() for creating scatterplots

========================================================

Let’s start by loading the lattice package. 


```r
library(lattice)
```

Read the data from file named gene_data.txt

```r
data <- read.table("gene_data.txt", header=T, sep="\t")
```

A simple scatter plot can be produced as,

```r
xyplot(Untreated2~Treated2, data=data)
```

========================================================

<img src="introToR_Day1-figure/unnamed-chunk-171-1.png" title="plot of chunk unnamed-chunk-171" alt="plot of chunk unnamed-chunk-171" width="1920px" />



========================================================

or the output can be redirected to an object as, 

```r
tplot<-xyplot(Untreated2~Treated2, data=data)
```

and then printed as, 

```r
print(tplot)
```

<img src="introToR_Day1-figure/unnamed-chunk-174-1.png" title="plot of chunk unnamed-chunk-174" alt="plot of chunk unnamed-chunk-174" width="1920px" />
***
The object containing the plot can further be modified. for e.g.

```r
tplot2<-update(tplot, main="Drug treatment  in Cells" )
               
print(tplot2)
```

<img src="introToR_Day1-figure/unnamed-chunk-175-1.png" title="plot of chunk unnamed-chunk-175" alt="plot of chunk unnamed-chunk-175" width="1920px" />

========================================================

Box and whisker plot can be produced with bwplot function. Here, we are again using a singer data frame which is bundled with lattice package. You would have to load lattice package first before using this database.


```r
head(singer)
```

```
  height voice.part
1     64  Soprano 1
2     62  Soprano 1
3     66  Soprano 1
4     65  Soprano 1
5     60  Soprano 1
6     61  Soprano 1
```



```r
bwplot(voice.part ~ height, data=singer, xlab="Height (inches)")
```

========================================================

A density plot can be drawn with densityplot function.

```r
densityplot( ~ height | voice.part, data = singer, layout = c(2, 4), xlab = "Height (inches)", bw = 5)
```


qqmath function is used to draw quantile-Quantile plots of a sample against a theoretical distribution.

```r
qqmath(~ rnorm(100), distribution = function(p) qt(p, df = 10))
```

ggplot2 R package
========================================================

Let's look at how to create a scatterplot in ggplot2. We'll use the iris data frame that's automatically loaded into R.
What does the data frame contain? We can use the head function to look at the first few rows

```r
head(iris, n = 3)  
```

```
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
```

========================================================

 by default, head displays the first 6 rows. 

```r
head(iris, n = 10)    
```

 we can also explicitly set the number of rows to display

(The data frame actually contains three types of species: setosa, versicolor, and virginica.)

========================================================
Let's plot Sepal.Length against Petal.Length using ggplot2's qplot() function.

```r
qplot(Sepal.Length, Petal.Length, data = iris)
```

Plot Sepal.Length vs. Petal.Length, using data from the `iris` data frame.
First argument `Sepal.Length` goes on the x-axis.
Second argument `Petal.Length` goes on the y-axis.
 `data = iris` means to look for this data in the `iris` data frame.    

 

To see where each species is located in this graph, we can color each point by adding a color = Species argument.

```r
qplot(Sepal.Length, Petal.Length, data = iris, color = Species) 
```

========================================================
 
Similarly, we can let the size of each point denote petal width, by adding a size = Petal.Width argument.

```r
qplot(Sepal.Length, Petal.Length, data = iris, color = Species, size = Petal.Width)
```

We see that Iris setosa flowers have the narrowest petals.
 
Finally, let's fix the axis labels and add a title to the plot.

```r
qplot(Sepal.Length, Petal.Length, data = iris, color = Species, xlab = "Sepal Length", ylab = "Petal Length", main = "Sepal vs. Petal Length in Fisher's Iris data")
```




Other common geoms
========================================================



In the scatterplot examples above, we implicitly used a point geom, the default when you supply two arguments to qplot().
These two invocations are equivalent.


```r
qplot(Sepal.Length, Petal.Length, data = iris, geom = "point")
qplot(Sepal.Length, Petal.Length, data = iris)
```

But we can also easily use other types of geoms to create more kinds of plots.
Barcharts: geom = "bar"


========================================================

Let’s construct a data frame called movies.

```r
movies = data.frame(
    director = c("spielberg", "spielberg", "spielberg", "jackson", "jackson"),
    movie = c("jaws", "avatar", "schindler's list", "lotr", "king kong"),
    minutes = c(124, 163, 195, 600, 187)
)
```

Plot the number of movies each director has.

```r
qplot(director, data = movies, geom = "bar", ylab = "# movies")
```

========================================================
By default, the height of each bar is simply a count. But we can also supply a different weight.
Here the height of each bar is the total running time of the director's movies.


```r
qplot(director, weight = minutes, data = movies, geom = "bar", ylab = "total length (min.)")
```

Line charts: geom = "line"
========================================================


```r
qplot(Sepal.Length, Petal.Length, data = iris, geom = "line", color = Species) 
```

`Orange` is another built-in data frame that describes the growth of orange trees.


```r
qplot(age, circumference, data = Orange, geom = "line", colour = Tree,
    main = "How does orange tree circumference vary with age?")
```

We can also plot both points and lines.

```r
qplot(age, circumference, data = Orange, geom = c("point", "line"), colour = Tree)
```

Simple statistics in R
=========================================================
type:section
id: stats



Statistics in R
=========================================================

R has a powerful set of in built statistical methods.
Including:
- Standard statistical tests
- Statistical modelling
- Further methods available in add on packages

Tables and Frequencies
=========================================================

One of the simplest statistical tools we have already seen in the function summary() and table(). These functions provide descriptive statistics for data.frames and character vectors or factors.


```r
patientName <- c("patient1","patient2","patient3","patient4")
patientType <- factor(rep(c("male","female"),2))
survivalTime <- c(1,30,2,20)
dfExample <- data.frame(Name=patientName,Type=patientType,Survival_Time=survivalTime)
```
table() provides a breakdown of occurrence of all unique values in vector.

```r
table(patientType)
```

```
patientType
female   male 
     2      2 
```

Tables and Frequencies
=========================================================

**summary()** provides a breakdown of occurrence of all character or factor columns and min,max,mean and quantiles for numeric columns.


```r
summary(dfExample)
```

```
       Name       Type   Survival_Time  
 patient1:1   female:2   Min.   : 1.00  
 patient2:1   male  :2   1st Qu.: 1.75  
 patient3:1              Median :11.00  
 patient4:1              Mean   :13.25  
                         3rd Qu.:22.50  
                         Max.   :30.00  
```

Tables and Frequencies (continued)
=========================================================

The table() function can be used to generate frequency tables across data.frames.

```r
table(dfExample)
```

```
, , Survival_Time = 1

          Type
Name       female male
  patient1      0    1
  patient2      0    0
  patient3      0    0
  patient4      0    0

, , Survival_Time = 2

          Type
Name       female male
  patient1      0    0
  patient2      0    0
  patient3      0    1
  patient4      0    0

, , Survival_Time = 20

          Type
Name       female male
  patient1      0    0
  patient2      0    0
  patient3      0    0
  patient4      1    0

, , Survival_Time = 30

          Type
Name       female male
  patient1      0    0
  patient2      1    0
  patient3      0    0
  patient4      0    0
```

Tables and Frequencies (continued)
=========================================================

ftable() function provides a method to generate or print the results from table()
in a neater format.


```r
ftable(dfExample)
```

```
                Survival_Time 1 2 20 30
Name     Type                          
patient1 female               0 0  0  0
         male                 1 0  0  0
patient2 female               0 0  0  1
         male                 0 0  0  0
patient3 female               0 0  0  0
         male                 0 1  0  0
patient4 female               0 0  1  0
         male                 0 0  0  0
```
Correlation
=========================================================

Another common task in statistical analysis is to investigate the relationship between pairs of numeric vectors.

This can be done by identifying the correlation between numeric vectors using the cor() function in R.

In this example we use cor() to identify the pearson or spearman correlation between two variables. 

Perfectly posively correlated vectors will return 1, perfectly negatively correlated vectors will return -1, vectors showing no or little correlation will be close to 0.
Correlation
=========================================================


```r
x <- rnorm(100,10,2)
z <- rnorm(100,10,2)
y <- x
cor(x,y) # 
```

```
[1] 1
```

```r
cor(x,-y)
```

```
[1] -1
```

```r
cor(x,z)
```

```
[1] -0.02939373
```
***
![plot of chunk unnamed-chunk-199](introToR_Day1-figure/unnamed-chunk-199-1.png) 


Correlation (Continued)
=========================================================
left: 70%
Often we wish to apply correlation analysis to all columns or rows in a matrix in a pair-wise mammer. To do this in R, we can simply pass the **cor()** function a single argument of the numeric matrix of interest. The **cor()** function will then perform all pair-wise correlations between columns.


```r
cor(minRep)[1:2,2:5]
```

```
            Sample_2.hi Sample_3.hi Sample_4.low Sample_5.low
Sample_1.hi     0.95251   0.9405676  -0.07638418    0.2553476
Sample_2.hi     1.00000   0.9847168   0.09476644    0.3956323
```

Correlation (Continued)
=========================================================


```r
image(cor(minRep),axes=F)
axis(1,at=seq(0,1,length.out=6), colnames(minRep))
axis(2,at=seq(0,1,length.out=6), colnames(minRep))
```
***
<img src="introToR_Day1-figure/unnamed-chunk-203-1.png" title="plot of chunk unnamed-chunk-203" alt="plot of chunk unnamed-chunk-203" width="1920px" />

Distributions
=========================================================

R comes with functions for extracting information from most common distibutions types.
An example of standard R functions for dealing with distibution can be seen here using the normal distributions.

- pnorm - cumulative distribution for x
- qnorm - inverse of pnorm (from probability gives x)
- dnorm - distribution density
- rnorm - random number from normal distribution

***

![alt text](Dist.jpg)

Distributions
=========================================================

Similar functions are available for other distibution types including:
- pbinom (binomial)
- pnbinom (negative binomial),
- phyper (hyper-geometric)
- pt (T distribution)

Distributions (Examples)
=========================================================

We can use rnorm to generate random values following a nromal distribution. Here we produce 10 normally distributed values numeric values with mean 8 and standard deviation of 3

```r
rnorm(10,mean=8,sd=3)
```

```
 [1] 13.566939  6.841681  1.462447  7.510449 10.058070  8.939773  6.425140
 [8]  6.076919  9.765401  6.638530
```
We can also use these functions to interrogate values assuming a normal distribution for the data.

The probablity of a value being exactly 8 for a distribution of mean 8 and standard deviation 3. 


```r
dnorm(8,mean=8,sd=3)
```

```
[1] 0.1329808
```

Distributions (Examples)
=========================================================

The probablity of a value being less than 8 for a distribution of mean 8 and standard deviation 3. 


```r
pnorm(8,mean=8,sd=3)
```

```
[1] 0.5
```

The value for which i have a 50 percent being greater than given a normal distribution of mean 8 and standard deviation 3. 


```r
qnorm(0.5,mean=8,sd=3)
```

```
[1] 8
```

Statistical tests
=========================================================

On top of descriptive statistics, R has several statistical tests covering a range of problems and data types.

Some of the most used tests of two samples include: 

- var.test() - Comparing 2 variances (Fisher's F test)

- t.test() - Comparing 2 sample means with normal errors (Student's t-test)

- wilcox.test() - Comparing 2 means with non-normal errors (Wilcoxon's rank test)

- fisher.test() - Testing for independence of 2 variables in a contingency table (Fisher's exact test)


T-test example
=========================================================

To perform a t-test we will generate some datasets, test that the variances of the datasets are equal and then perform the actual t-tests.

First lets produce the data using rnorm()


```r
groupA <- rnorm(10,mean=26,sd=1)
groupB <- rnorm(10,mean=40,sd=1)
groupC <- rnorm(10,mean=40,sd=4)
```
***

```r
tTestExample <- data.frame(A=groupA, B=groupB, C=groupC)

tTestExample
```

```
          A        B        C
1  24.75483 41.12365 46.93174
2  25.98775 40.15326 40.21677
3  26.78524 42.41936 41.94928
4  24.81573 40.78934 37.11954
5  25.13702 38.58646 47.11825
6  27.57820 39.98469 38.30106
7  26.08530 39.78725 41.16086
8  25.94675 40.08311 40.85919
9  26.32954 39.77195 37.11244
10 25.10886 39.87803 33.47771
```

T-test example
=========================================================

First lets retrieve the variance of columns using var().


```r
var(tTestExample$A)
```

```
[1] 0.8335172
```

```r
var(tTestExample$B)
```

```
[1] 1.023961
```

```r
var(tTestExample$C)
```

```
[1] 18.32323
```
 
Now we can test for any differences in variance between A and B and A and C.


```r
var.test(tTestExample$A,tTestExample$B)
```

```

	F test to compare two variances

data:  tTestExample$A and tTestExample$B
F = 0.814, num df = 9, denom df = 9, p-value = 0.7642
alternative hypothesis: true ratio of variances is not equal to 1
95 percent confidence interval:
 0.2021892 3.2772096
sample estimates:
ratio of variances 
         0.8140125 
```

```r
var.test(tTestExample$A,tTestExample$C)
```

```

	F test to compare two variances

data:  tTestExample$A and tTestExample$C
F = 0.0455, num df = 9, denom df = 9, p-value = 8.724e-05
alternative hypothesis: true ratio of variances is not equal to 1
95 percent confidence interval:
 0.01129898 0.18314101
sample estimates:
ratio of variances 
        0.04548964 
```

T-test example
=========================================================

Now we have ascertained that GroupA and GroupB have similar variances. We can therefore perform a standard t-test to assess the significance of differences betweem the groups.


```r
Result <- t.test(tTestExample$A,tTestExample$B,alternative ="two.sided",
                 var.equal = T)
Result
```

```

	Two Sample t-test

data:  tTestExample$A and tTestExample$B
t = -33.423, df = 18, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -15.31025 -13.49932
sample estimates:
mean of x mean of y 
 25.85292  40.25771 
```

T-test example (Unequal variance)
=========================================================

To compare groups of unequal variance then the var.equal argument may be set to FALSE (which is the default).

```r
Result <- t.test(tTestExample$A,tTestExample$C,alternative ="two.sided",
                 var.equal = F)
Result
```

```

	Welch Two Sample t-test

data:  tTestExample$A and tTestExample$C
t = -10.5281, df = 9.817, p-value = 1.153e-06
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -17.66349 -11.48004
sample estimates:
mean of x mean of y 
 25.85292  40.42468 
```

T-test example 
=========================================================

The same result to that shown could be achieved by specify a formula for the comparison.
Here we wish to compare column A versus B so we could simply specify the formula and the data to be used.


```r
longFrame <- data.frame(Group = c(rep("A",nrow(tTestExample)),rep("B",nrow(tTestExample))), Value=c(tTestExample$A,tTestExample$B))

result <- t.test(Value~Group,longFrame,alternative ="two.sided",
                 var.equal = T)
result$statistic
```

```
        t 
-33.42297 
```


Regression and linear models
=========================================================

We have seem how we can find the correlation between two sets of variables using cor() function.

R also provides a comprehensive set of tools for regression analysis including the well used linear modelling function lm()

To fit a linear regression we use a similar set of arguments as passed to the t-test fuction in the previous slide.



```r
> x=rnorm(100,70,10)
> y <- jitter(x,amount=40)+20
> lmExample <- data.frame(X=x,Y=y)
```

```r
> lmResult <- lm(Y~X,data=lmExample)
> plot(Y~X,data=lmExample,main="Line of best fit with lm()",
+      xlim=c(0,150),ylim=c(0,150))
> abline(lmResult,col="red",lty=3,lwd=3)
```

![plot of chunk unnamed-chunk-216](introToR_Day1-figure/unnamed-chunk-216-1.png) 

The lm() function
=========================================================

The lm() function fits a linear regression to your data and provides useful information on the generated fit.

In the example below we fit a linear model using  lm() on the lmExample dataset with column Y as the dependent variable and column X as the explanatory variable.


```r
> lmResult <- lm(Y~X,data=lmExample)
> lmResult
```

```

Call:
lm(formula = Y ~ X, data = lmExample)

Coefficients:
(Intercept)            X  
    30.1801       0.8546  
```

Printing the result from lm() shows the call to lm() and the coefficients including the intercept.

From this we know the formula for the line.

**Y = -9.09 + 1.14*X**


```r
> plot(Y~X,data=lmExample,main="Line of best fit with lm()",
+      xlim=c(0,100),ylim=c(0,100))
> abline(lmResult,col="red",lty=3,lwd=3)
```

![plot of chunk unnamed-chunk-218](introToR_Day1-figure/unnamed-chunk-218-1.png) 

Interpreting output of lm()
=========================================================
As we have seen, printing the model result provides the intercept and slope of line.

To get some more information on the model we can use the summary() function


```r
> summary(lmResult)
```

```

Call:
lm(formula = Y ~ X, data = lmExample)

Residuals:
    Min      1Q  Median      3Q     Max 
-40.732 -20.303  -0.417  18.632  40.075 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)   
(Intercept)  30.1801    17.8323   1.692  0.09374 . 
X             0.8546     0.2578   3.315  0.00129 **
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 24.28 on 98 degrees of freedom
Multiple R-squared:  0.1008,	Adjusted R-squared:  0.09163 
F-statistic: 10.99 on 1 and 98 DF,  p-value: 0.001288
```


Interpreting output of lm() (Residuals...)
=========================================================


```

Call:
lm(formula = Y ~ X, data = lmExample)

Residuals:
    Min      1Q  Median      3Q     Max 
-40.732 -20.303  -0.417  18.632  40.075 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)   
(Intercept)  30.1801    17.8323   1.692  0.09374 . 
X             0.8546     0.2578   3.315  0.00129 **
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 24.28 on 98 degrees of freedom
Multiple R-squared:  0.1008,	Adjusted R-squared:  0.09163 
F-statistic: 10.99 on 1 and 98 DF,  p-value: 0.001288
```

***
The **residuals** are the difference between the predicted line.
To retrieve the residuals we can access the slot or use the resid() function.


```r
> summary(resid(lmResult))
```

```
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-40.7300 -20.3000  -0.4165   0.0000  18.6300  40.0700 
```

```r
> summary(lmResult$residual)
```

```
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-40.7300 -20.3000  -0.4165   0.0000  18.6300  40.0700 
```
Ideally you would want your residuals to be normally distributed around 0 indicating a good correspondence between predicted and actual values.

Interpreting output of lm() (R-squared...)
=========================================================


```

Call:
lm(formula = Y ~ X, data = lmExample)

Residuals:
    Min      1Q  Median      3Q     Max 
-40.732 -20.303  -0.417  18.632  40.075 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)   
(Intercept)  30.1801    17.8323   1.692  0.09374 . 
X             0.8546     0.2578   3.315  0.00129 **
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 24.28 on 98 degrees of freedom
Multiple R-squared:  0.1008,	Adjusted R-squared:  0.09163 
F-statistic: 10.99 on 1 and 98 DF,  p-value: 0.001288
```

The **R-squared** value represents the proportion of variability in the response variable that is explained by the explanatory variable.

A high **R-squared** value indicates a good correspondence between the predictor and dependent variables.

Interpreting output of lm() (Per variable p-values and the F-statistic)
=========================================================


```r
> summary(lmResult)
```

```

Call:
lm(formula = Y ~ X, data = lmExample)

Residuals:
    Min      1Q  Median      3Q     Max 
-40.732 -20.303  -0.417  18.632  40.075 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)   
(Intercept)  30.1801    17.8323   1.692  0.09374 . 
X             0.8546     0.2578   3.315  0.00129 **
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 24.28 on 98 degrees of freedom
Multiple R-squared:  0.1008,	Adjusted R-squared:  0.09163 
F-statistic: 10.99 on 1 and 98 DF,  p-value: 0.001288
```

The results from linear models also provides a measure of significance for a variable not being relevant in **Pr(>|t|)** column. A low p-value suggests the variable is useful in prediction of the dependent variable.


Notes!
=========================================================
http://rstudio-pubs-static.s3.amazonaws.com/23247_8af1a386e4184c95bb36ba7a6ea0f699.html

Good example for reproducibility!

https://support.rstudio.com/hc/en-us/articles/200552086-Using-R-Markdown


Add part of making notebooks from r scripts 
http://rmarkdown.rstudio.com/r_notebook_format.html


http://quadroideas.com/great-google-font-combinations-ready-use/


2. Importing data files using the scan function

The scan function is an extremely flexible tool for importing data.  Unlike the read.table function, however, which returns a data frame, the scan function returns a list or a vector. This makes the scan function less useful for inputting "rectangular" data such as the car data set that will been seen in later examples. In the previous example we input first numeric data and then string data directly from the console; in the following example, we input a text file. For the what option, we use list and then list the variables, and after each variable, we tell R what type of variable (e.g., numeric, string) it is. In the first example, the first variable is age, and we tell R that age is a numeric variable by setting it equal to 0. The second variable is called name, and it is denoted as a string variable by the empty quote marks.  In the second example, we list NULL first, indicating that we do not want the first variable to be read. After using the scan function, we use the sapply function, which makes a list out of a vector of names in x.

# inputting a text file and outputting a list
(x <- scan("http://www.ats.ucla.edu/stat/data/scan.txt", what = list(,
    name = "")))
## $age
## [1] 12 24 35 20
## 
## $name
## [1] "bobby"   "kate"    "david"   "michael"

Maybe talk about using  

The **F-statistic** is the result on an F-test on the model where the model is compared to a model with fewer parameters.

If the p-value from F-statistic is small, the model can be considered a good fit of the data.


Could have noice bit on 1 - pf(sm$fstatistic[1]?

http://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf

https://gist.github.com/hanbzu/6864862

http://cran.r-project.org/doc/contrib/Baggott-refcard-v2.pdf

You can make comments in notes

You can speed up by using certain order..

Data from clipboard
=========================================================

from Rstudio
=========================================================

Data from XLS
=========================================================

Data from dput
=========================================================

