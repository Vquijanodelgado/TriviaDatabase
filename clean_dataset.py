import pandas as pd

# Load the dataset
df = pd.read_csv("quiz_questions.csv")

# # Extract unique categories, don't duplicate
# unique_categories = df['category_name'].drop_duplicates()
# manually added descriptions for the categories
# # Save the unique categories to a new CSV
# unique_categories.to_csv("unique_categories.csv", index=False, header=True)

# Extract unique difficulty levels

unique_difficultylevels = df['difficulty_level'].drop_duplicates()

# save the unique difficulties to a new CSV
unique_difficultylevels.to_csv("unique_difficultylevels.csv", index=False, header=True)
