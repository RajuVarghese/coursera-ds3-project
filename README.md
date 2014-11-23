# Project: Getting and Cleaning Data #

## Synopsis ##
This is the README file for Raju Varghese's [project submission](https://github.com/RajuVarghese/coursera-ds3-project) for the [Coursera DataScience 3](https://class.coursera.org/getdata-009/) course (Getting and Cleaning Data). It contains an R program named run_analysis.R that reads sensor data in the directory data and produces a tidy data table named tidyData.txt with average values over subjects and activities. The [code book](https://github.com/RajuVarghese/coursera-ds3-project/blob/master/codebook.md) has information on the data in the tidy data table.

## Manifest
* `README.md`
  This file. Contains a description of the repository.
  
* `data`
  Directory containing the relevant [raw sensor data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) collected
  from Samsung Galaxy S smartphones as described in the document [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

* `run_analysis.R`
  R program that reads the raw data in the directory `data` and produces an output table. A sample output file is `tidyData.txt`.

* `codebook.md`
  Describes the variables in the output file `tidyData.txt`.

* `tidyData.txt`
  The output of run_analysis.R when given the data in the directory `data`.

## Description
The main thing in this repository is the R program `run_analysis.R` that reads raw sensor data from the directory `data` and produces an output table (`tidyData.txt`) containing a 'narrow' form tidy data as specified in the [course project](https://class.coursera.org/getdata-009/human_grading/index).

As the 5-step set of instructions for the project are in some regard ambiguous and imprecise, the author has read through some of the forum messages and used advice given there by TAs and other course participants in order to structure the program. In particular, the [Course Project forum](https://class.coursera.org/getdata-009/forum/list?forum_id=10009) was an invaluable resource. Especially, [David's Project FAQ](https://class.coursera.org/getdata-009/forum/thread?thread_id=58).

## Usage
Fork the repository on linux system (as the R program contains file/directory specifications that may not work on other operating systems). Ensure that you R installation has the required packages such as dplyr and tidyr. Run the R program run_analysis.R. It should produce an output file named tidyData.txt in the current working directory.

## Contributors

Raju Varghese raju@intellisoft.ch

## License

The MIT License (MIT)

Copyright (c) 2014 Raju Varghese

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Contact

Raju Varghese raju@intellisoft.ch