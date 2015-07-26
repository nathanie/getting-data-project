require(dplyr)

setwd("E:/Dropbox/Nati-study-material/data science/coursera/getting_data/UCI HAR Dataset")

xTrain<-read.table("./train/x_train.txt")
xTest<-read.table("./test/x_test.txt")
subjectTrain<-read.table("./train/subject_train.txt")
subjectTest<-read.table("./test/subject_test.txt")
yTrain<-read.table("./train/y_train.txt")
yTest<-read.table("./test/y_test.txt")
names(yTrain)<-"actionCode"
names(yTest)<-"actionCode"

actions<-c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
actionsDf<-data.frame(1:6,actions)
names(actionsDf)<-data.frame(c("actionCode","action"))[,1]
trainActions<-inner_join(yTrain,actionsDf)
testACtions<-inner_join(yTest,actionsDf)
train<-cbind(subjectTrain,xTrain,trainActions)
test<-cbind(subjectTest,xTest,testACtions)

data<-rbind(train,test)

varNames<-read.table("features.txt")

names(data)<-data.frame(c("subject",as.character(varNames[,2]),"actionCode","action"))[,1]

selectedData<-data[,c(1:7,564)]
names(selectedData)<-data.frame(c("subject","xMeanAcceleration","yMeanAcceleration","zMeanAcceleration",
                                "xAccelerationStd","yAccelerationStd","zAccelerationStd","action"))[,1]




