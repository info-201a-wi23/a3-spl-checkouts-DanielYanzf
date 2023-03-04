# Aggregate data by CheckoutYear and MaterialType
data$CheckoutYear <- as.numeric(data$CheckoutYear)
data$Checkouts <- as.numeric(data$Checkouts)
yearly_material_checkouts <- aggregate(Checkouts ~ CheckoutYear + MaterialType, data, sum)

# Create bar chart with MaterialType on x-axis, Checkouts on y-axis, and year as fill
ggplot(yearly_material_checkouts, aes(x = MaterialType, y = Checkouts, fill = factor(CheckoutYear))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Total Checkouts by Material Type and Year", x = "Material Type", y = "Total Checkouts") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))