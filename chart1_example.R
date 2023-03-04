library(ggplot2)

# Import data
data <- read.csv("/Users/daniel/Downloads/2017-2023-10-Checkouts-SPL-Data 2.csv")

# Initialize empty vector to store publication counts by year
pub_counts <- rep(0, 7)

# Loop over rows in data and count publications
for (i in 1:nrow(data)) {
  year <- data[i, "CheckoutYear"]
  if (year == 2017) {
    if (grepl("2017", data[i, "PublicationYear"])) {
      pub_counts[1] <- pub_counts[1] + 1
    }
  } else if (year == 2018) {
    if (grepl("2018", data[i, "PublicationYear"])) {
      pub_counts[2] <- pub_counts[2] + 1
    }
  } else if (year == 2019) {
    if (grepl("2019", data[i, "PublicationYear"])) {
      pub_counts[3] <- pub_counts[3] + 1
    }
  } else if (year == 2020) {
    if (grepl("2020", data[i, "PublicationYear"])) {
      pub_counts[4] <- pub_counts[4] + 1
    }
  } else if (year == 2021) {
    if (grepl("2021", data[i, "PublicationYear"])) {
      pub_counts[5] <- pub_counts[5] + 1
    }
  } else if (year == 2022) {
    if (grepl("2022", data[i, "PublicationYear"])) {
      pub_counts[6] <- pub_counts[6] + 1
    }
  } else if (year == 2023) {
    if (grepl("2023", data[i, "PublicationYear"])) {
      pub_counts[7] <- pub_counts[7] + 1
    }
  }
}

# Print publication counts
pub_counts
publications <- data.frame(Year = c(2017:2023), Total_Publications = c(30651, 31456, 31298, 16039, 16249, 26238, 260))

# Create bar chart of total publications by year
barplot(publications$Total_Publications, names.arg = publications$Year, 
        xlab = "Year", ylab = "Total Publications", 
        main = "Total Publications by Year")
