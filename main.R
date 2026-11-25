# Student Academic Performance Statistics Plot

library(ggplot2)

students <- data.frame(
  Student = paste("Student", 1:10),
  Mathematics = c(75, 80, 65, 90, 55, 85, 70, 60, 95, 78),
  English = c(80, 75, 70, 85, 60, 90, 65, 72, 88, 82),
  Statistics = c(70, 85, 60, 95, 50, 80, 75, 65, 90, 78)
)

students$Average <- rowMeans(students[, 2:4])

print(students)

cat("\nClass Average:", mean(students$Average))
cat("\nHighest Score:", max(students$Average))
cat("\nLowest Score:", min(students$Average), "\n")

dir.create("output", showWarnings = FALSE)

# Student performance chart
plot1 <- ggplot(students, aes(x = Student, y = Average)) +
  geom_col(fill = "steelblue") +
  labs(title = "Student Academic Performance",
       x = "Students", y = "Average Score") +
  theme_minimal()

ggsave("output/student_performance.png", plot1)

# Score distribution chart
plot2 <- ggplot(students, aes(x = Average)) +
  geom_histogram(binwidth = 5, fill = "orange",
                 color = "black") +
  labs(title = "Distribution of Student Scores",
       x = "Average Score", y = "Number of Students") +
  theme_minimal()

ggsave("output/score_distribution.png", plot2)

write.csv(students, "output/student_results.csv",
          row.names = FALSE)

cat("\nStatistics Plot Project Completed Successfully!\n")
