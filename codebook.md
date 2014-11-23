# Codebook for output produced by run_analysis.R #

## Setup
The original data for this analysis comes from sensors in a smartphone. The transducers are accelerometers and gyroscopes in a Samsung Galaxy S as described in the article on [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). That input data is processed further in run_analysis.R producing average values grouped by subjects and activities.

## Input Data
All input data are in the directory `data`. The variables are described in `data/features_info.txt` (please refer to that file for information on each of the signals). The variables are data measured and calculated from the smartphones worn by 30 subjects performing 6 different activities (eg, sitting, walking, laying, etc).

## Processed Data
The processed data are average of the some of the input data grouped by subject and activity. The input data that were selected are those that have the words 'mean' or 'std' in them as specified by the course project specification. It does not explicitly say whether that refers to functions and/or measured values and hence both of them have been included. The values in the table are, therefore, the average of the indicated signal grouped by subject and activity.

The input signals have been given more descriptive names than in the input data. For this the following conversions were made:

1. R's builtin make.names function was used to clean out the punctuation characters such as '(', ')', '-', etc.
2. The words 'mean', 'std'(standard deviation) and 'gravity' were camel-cased.
3. Initial 't and 'f' were converted to 'time' and 'freq', respectively.
4. Miscellaneous cleanup: Occurrences of 'BodyBody' were changed to 'Body' and embedded 'tBody' to 'TimeBody'

  Variables:

    Subject                             
    Activity                            
    timeBodyAccMeanX                    
    timeBodyAccMeanY                    
    timeBodyAccMeanZ                    
    timeBodyAccStdX                     
    timeBodyAccStdY                     
    timeBodyAccStdZ                     
    timeGravityAccMeanX                 
    timeGravityAccMeanY                 
    timeGravityAccMeanZ                 
    timeGravityAccStdX                  
    timeGravityAccStdY                  
    timeGravityAccStdZ                  
    timeBodyAccJerkMeanX                
    timeBodyAccJerkMeanY                
    timeBodyAccJerkMeanZ                
    timeBodyAccJerkStdX                 
    timeBodyAccJerkStdY                 
    timeBodyAccJerkStdZ                 
    timeBodyGyroMeanX                   
    timeBodyGyroMeanY                   
    timeBodyGyroMeanZ                   
    timeBodyGyroStdX                    
    timeBodyGyroStdY                    
    timeBodyGyroStdZ                    
    timeBodyGyroJerkMeanX               
    timeBodyGyroJerkMeanY               
    timeBodyGyroJerkMeanZ               
    timeBodyGyroJerkStdX                
    timeBodyGyroJerkStdY                
    timeBodyGyroJerkStdZ                
    timeBodyAccMagMean                  
    timeBodyAccMagStd                   
    timeGravityAccMagMean               
    timeGravityAccMagStd                
    timeBodyAccJerkMagMean              
    timeBodyAccJerkMagStd               
    timeBodyGyroMagMean                 
    timeBodyGyroMagStd                  
    timeBodyGyroJerkMagMean             
    timeBodyGyroJerkMagStd              
    freqBodyAccMeanX                    
    freqBodyAccMeanY                    
    freqBodyAccMeanZ                    
    freqBodyAccStdX                     
    freqBodyAccStdY                     
    freqBodyAccStdZ                     
    freqBodyAccMeanFreqX                
    freqBodyAccMeanFreqY                
    freqBodyAccMeanFreqZ                
    freqBodyAccJerkMeanX                
    freqBodyAccJerkMeanY                
    freqBodyAccJerkMeanZ                
    freqBodyAccJerkStdX                 
    freqBodyAccJerkStdY                 
    freqBodyAccJerkStdZ                 
    freqBodyAccJerkMeanFreqX            
    freqBodyAccJerkMeanFreqY            
    freqBodyAccJerkMeanFreqZ            
    freqBodyGyroMeanX                   
    freqBodyGyroMeanY                   
    freqBodyGyroMeanZ                   
    freqBodyGyroStdX                    
    freqBodyGyroStdY                    
    freqBodyGyroStdZ                    
    freqBodyGyroMeanFreqX               
    freqBodyGyroMeanFreqY               
    freqBodyGyroMeanFreqZ               
    freqBodyAccMagMean                  
    freqBodyAccMagStd                   
    freqBodyAccMagMeanFreq              
    freqBodyAccJerkMagMean              
    freqBodyAccJerkMagStd               
    freqBodyAccJerkMagMeanFreq          
    freqBodyGyroMagMean                 
    freqBodyGyroMagStd                  
    freqBodyGyroMagMeanFreq             
    freqBodyGyroJerkMagMean             
    freqBodyGyroJerkMagStd              
    freqBodyGyroJerkMagMeanFreq         
    angleTimeBodyAccMeanGravity         
    angleTimeBodyAccJerkMeanGravityMean 
    angleTimeBodyGyroMeanGravityMean    
    angleTimeBodyGyroJerkMeanGravityMean
    angleXGravityMean                   
    angleYGravityMean                   
    angleZGravityMean

Please refer to the original information on the signals in `data/features_info.txt` for more information on each of the data points.
