getwd()
setwd("C:/Users/lenovo/Downloads")
data=read.csv("C:\\Users\\lenovo\\Downloads\\studentperformance\\StudentPerformanceFactors.csv")
View(data)
summary(data)
boxplot(Attendance~Hours_Studied, main="Boxplot of Hours Studied and Attendance", 
        xlab="Hours Studied",ylab="Attendance", col=c("lightblue","red"),data=data)
plot(data$Sleep_Hours,data$Exam_Score, main="Sleep Hours vs Exam Score", xlab="Sleep Hours"
     ,ylab="Exam Scores", pch=19, col="blue")#Scatterplot


# Generate a histogram of exam scores for students with 90%+ attendance
filtered_data <- data[data$Attendance >= 90, ]
hist(filtered_data$Exam_Score, 
     main = "Exam Scores of Students with Attendance ≥ 90%", 
     xlab = "Exam Score", 
     col = "lightblue", 
     border = "black")

# Generate a histogram of exam scores for students with 70%+ attendance
filtered_data <- data[data$Attendance >= 80, ]
hist(filtered_data$Exam_Score, 
     main = "Exam Scores of Students with Attendance ≥ 80%", 
     xlab = "Exam Score", 
     col = "lightgreen", 
     border = "black")

# Generate a histogram of exam scores for students with 60%+ attendance
filtered_data <- data[data$Attendance >= 70, ]
hist(filtered_data$Exam_Score, 
     main = "Exam Scores of Students with Attendance ≥ 70%", 
     xlab = "Exam Score", 
     col = "purple", 
     border = "black")

# Generate a histogram of exam scores for students with 50%+ attendance
filtered_data <- data[data$Attendance >= 60, ]
hist(filtered_data$Exam_Score, 
     main = "Exam Scores of Students with Attendance ≥ 60%", 
     xlab = "Exam Score", 
     col = "blue", 
     border = "black")
