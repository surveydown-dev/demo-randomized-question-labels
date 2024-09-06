
# Create a vector of options
q1_options <- c('option 1', 'option 2', 'option 3')

# Randomly sample 3 labels from 1 to 100
q1_labels <- sample(seq(100), 3)

# Assign the labels to the options
names(q1_options) <- q1_labels

# Store the labels in the database
sd_store_value(q1_labels, id = "q1_labels")

# Create a reactive question
sd_question(
  id = "q1",
  type = "mc",
  label = "Which of these numbers is the largest?",
  option = q1_options,
  reactive = TRUE
)

################
# config setup #
################

# Use the sd_config() function to customize features in your survey, like
# logic to conditionally display questions or skip to pages based on responses
# to skip other questions in your survey. See documentation for details at
# https://surveydown.org/config

config <- sd_config()
