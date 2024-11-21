# Load necessary libraries
install.packages("MASS")  # Install MASS package if not already installed
library(MASS)   # For the Boston dataset
library(class)  # For KNN algorithm
library(caret)  # For data splitting


# Load the Boston dataset
data11 <- Boston

# Display the structure and summary of the dataset
str(data11)
summary(data11)
View(data11)

# Check for missing values in the dataset
if (any(is.na(data11))) {
  print("Data contains missing values")
} else {
  print("No missing values found")
}

# Normalize the dataset using a custom normalization function
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}
data11_normalized <- as.data.frame(lapply(data11, normalize))

# Split the data into training and testing sets (70-30 split)
set.seed(123)  # Set seed for reproducibility
trainIndex <- sample(1:nrow(data11), size = 0.7 * nrow(data11))
train_data <- data11_normalized[trainIndex, ]  # Training data
test_data <- data11_normalized[-trainIndex, ]  # Testing data

# Prepare training and testing features and labels
train_x <- train_data[, -9]  # Features (exclude the target column)
train_y <- train_data[, 9]   # Target / Labels
test_x <- test_data[, -9]    # Features (exclude the target column)
test_y <- test_data[, 9]     # Target / Labels

# Apply the K-Nearest Neighbors (KNN) algorithm with k = 3
predictions <- knn(train = train_x, test = test_x, cl = train_y, k = 3)

# Evaluate the model performance using a confusion matrix
confusion_matrix <- table(Predicted = predictions, Actual = test_y)
print(confusion_matrix)

# Calculate and display the accuracy of the model
accuracy <- (sum(diag(confusion_matrix)) / sum(confusion_matrix)) * 100
cat("Accuracy:", accuracy, "%\n")
