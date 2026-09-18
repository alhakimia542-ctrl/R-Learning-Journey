# R Programming Learning Journey 

Welcome to my R programming learning repository! This repository documents my progress and the codes I write while studying R at the Community College of Sana'a.

##  Repository Structure (Week 1)

This section contains the foundational concepts covered in the first three lectures:

### 1. `Lecture_1_Basics.R`
Focuses on the absolute basics of R:
* Defining variables using different assignment operators (`<-`, `->`, `assign()`).
* Creating numeric sequences (`1:12`, `seq()`).
* Performing basic arithmetic operations on variables.

### 2. `Lecture_2_Vectors.R`
Explores vectors and data manipulation:
* Repeating values using `rep()`.
* Merging vectors and handling different data types.
* Indexing elements and filtering data using logical conditions.

### 3. `Lecture_3_Matrices.R`
Moves into two-dimensional and multi-dimensional data structures:
* Creating matrices and naming rows/columns (`matrix()`, `dimnames`).
* Direct and conditional data modification (e.g., replacing specific values).
* Binding columns using `cbind()` and creating multi-dimensional arrays using `array()`.

##  Repository Structure (Week 2)

This section introduces lists, handling external data, and practical exercises:

### 4. `Lecture_4_Lists_Files.R`
Covers working with heterogeneous data and files:
* Naming matrix dimensions using lists.
* Creating and accessing elements within lists, and adding new elements dynamically.
* Managing the working directory (`getwd()`, `setwd()`) and reading external tables.

### 5. `Exercises/` Folder
Contains solutions for applied exercises:
* Creating vectors with labels and applying logical conditions for data filtering.
* Object management and manipulation including listing, removing, and sorting variables.
* Importing external text files (e.g., `etudiants.txt`) and extracting basic descriptive statistics like `min`, `max`, and frequency tables.

## Repository Structure (Weeks 3 & 4)

This section covers advanced control structures, custom functions, and comprehensive data visualization in R:

### 6. `R5.R`
Focuses on control flow and functional programming:
* Creating custom functions (`function()`) with default and calculated return values (e.g., returning a `list`).
* Implementing control structures like `for` and `while` loops.
* Utilizing the `apply` family (`apply` for matrix row/column operations, `lapply` for lists).

### 7. `R6.R`
Introduces Base R Graphics for data visualization:
* Creating scatter plots using `plot()` and customizing points with `col`, `pch`, and `cex`.
* Enhancing plots by adding connecting `lines()`, dynamic `text()`, and a framing `box()`.
* Real-world example: Visualizing the effect of study hours on AI model accuracy.

### 8. `R7.R`
Explores advanced visualization techniques tailored for AI concepts:
* Plotting mathematical functions directly using `curve()` (applied to the Sigmoid Activation Function).
* Adding threshold lines (`abline()`) and shading specific areas using `polygon()`.
* Structuring professional charts by adding a `legend()` to explain data mappings.

##  Continuous Updates
This repository will be updated weekly with new scripts, concepts, and statistical operations as I progress through my course. Stay tuned!