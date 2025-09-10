# Step 1
# Name: Irwin Ortega
# Course: MIS446
# Module: 2

# Step 2: Read in cafe_ratings.csv and create a cross-tabulation table
# showing the distribution of price across cuisine.
# Use four price categories: (1) $50 and under, (2) $50 to $100, (3) $100 to $150, and (4) $150 to $600.

# Read the data from the CSV file into an R data frame called 'cafe_data'.
# R will look for 'cafe_ratings.csv' in the working directory.
cafe_data <- read.csv("cafe_ratings.csv")

# Create price categories (bins) based on the 'price' column in 'cafe_data'.
# 'breaks' defines the cut-off points for our categories.
# 'labels' assigns names to these categories.
# 'right = TRUE' means intervals are (lower, upper], including the upper bound.
# 'include.lowest = TRUE' ensures values like exactly $0 are included in the first category.
price_categories <- cut(cafe_data$price,
                        breaks = c(0, 50, 100, 150, 600),
                        labels = c("$50 and under", "$50 to $100", "$100 to $150", "$150 to $600"),
                        right = TRUE,
                        include.lowest = TRUE)

# Create the cross-tabulation table.
# This counts how many cafes fall into each combination of 'Cuisine' and 'Price' category.
cross_tabulation_table <- table(Cuisine = cafe_data$cuisine, Price = price_categories)

# Print the table to the RStudio Console so you can see the results.
cat("\nCross-Tabulation Table of Cuisine by Price Category:\n")
print(cross_tabulation_table)

# Step 3: Print current date and time and username
cat("\nCurrent Date and Time:\n") # Prints a label to the console
print(Sys.time()) # Prints the current date and time

# Get the username from the system.
username <- Sys.getenv("username")

# Step 4: Read in top20.csv and display university endowment data in a box plot.

# Read the data from the CSV file into an R data frame called 'top20_data'.
# R will look for 'top20.csv' in your working directory.
top20_data <- read.csv("top20.csv")

# Create a box plot of the 'Endowment' column from the 'top20_data' data frame.
# 'main' sets the title that appears above the box plot.
# 'ylab' sets the label for the vertical (Y) axis.
boxplot(top20_data$Endowment,
        main = "University Endowment Distribution",
        ylab = "Endowment Value")

# Step 5: Print current date and time and username (again)
cat("\nCurrent Date and Time:\n")
print(Sys.time())

cat("\nUsername:\n")
print(username)
