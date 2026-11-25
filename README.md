
# Student Statistics Plot

## 1. Project Overview
This project is a Student Academic Performance Statistics Plot developed using R programming and Docker.

It analyzes students' academic scores and generates statistical visualizations to help understand student performance.

## 2. Technologies Used
- R Programming Language
- Docker
- ggplot2 Package

## 3. Project Features
- Calculates students' average scores.
- Identifies the highest and lowest scores.
- Generates student performance charts.
- Generates score distribution charts.
- Exports student results into CSV format.

## 4. Project Structure
- main.R: Contains the R programming code.
- Dockerfile: Defines the Docker environment.
- output/: Stores generated charts and CSV results.
- README.md: Project documentation.

## 5. How to Run the Project

Build the Docker image:

```bash
docker build -t student-statistics-plot .
```

Run the project:

```bash
docker run --rm -v "$PWD/output:/app/output" student-statistics-plot
```

## 6. Output Files
- score_distribution.png
- student_performance.png
- student_results.csv

## 7. Conclusion
The project demonstrates how R programming and Docker can be used together to analyze student academic performance and generate statistical visualizations.
