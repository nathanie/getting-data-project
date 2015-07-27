This is the code book for the course project

I downloaded the raw data files from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

the files contain  time series raw measurments of galaxy s2 accelerometer and gyroscope 
measured upon 30 volunteers performing 6 actions: 
"WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" & "LAYING"

the measurements were divided to train & test data folders

each contain 3 processed files(in addition to the raw data): Xtrain / Xtest, ytrain / ytest, subject_train / subject_test

the x files contains 561 unlabled measures, the y files contains the action that was performed during these mesurements
& the subject files contains the subject code for these measures

in addition there is a file named "features.txt" that contains the column names for each of the above measures

all above files are text files

I read all train & test data into relevant data table variables

I addigned a relevant action description for each of the action codes using sqldf library

I merged each of the train/test data rows with its corresponding action description & subject code

Then I merged both train & test data to one variable.

I named all columns with the labels given by the features.txt file (for optional future use)

I extracted only the needed data for this project (mean & std. values only) 
along with the subject code & action that is being performed, and gave each column a full description (unabreviated)

lastly I extracted only the averages for the mean and std. measures (of the x,y,z axis) for each subject & action

The data is saved in the tidyData.txt file



