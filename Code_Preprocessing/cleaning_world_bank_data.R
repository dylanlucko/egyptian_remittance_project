


# Load necessary libraries
library(readr)
library(dplyr)
library(tidyr)


###################
###################
################### Clean Reer ###############
###################
###################

# Define file path
file_path_reer <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Pre_Panel_2025_Paper_Update/all_countries_real_effective_exchange_rate_annual.csv"
output_file_path_reer <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Clean_Pre_Panel_2025_Paper_Update/all_countries_real_effective_exchange_rate_clean.csv"

# Read CSV while skipping the first 4 rows
reer_wide <- read_csv(file_path_reer, skip = 4, show_col_types = FALSE)

# Convert to long format: "Country Name", "Country Code" remain, years become a "Year" column
reer <- reer_wide %>%
  pivot_longer(cols = -c(`Country Name`, `Country Code`, `Indicator Name`, `Indicator Code`),
               names_to = "Year", values_to = "Value") %>%
  mutate(Year = as.integer(Year))  # Ensure Year is numeric

# Keep only necessary columns
reer <- reer %>%
  select(`Country Name`, `Country Code`, Year, Value)

reer <- reer %>%
  rename(real_effective_exchange_rate = Value, country = `Country Name`, country_code = `Country Code` )
# View the first few rows
head(reer)
mean(reer$real_effective_exchange_rate, na.rm = T)

write.csv(reer, output_file_path_reer)
rm(reer,reer_wide, reer_long, output_file_path_reer, file_path_reer)


###################
###################
################### Clean Inflation Rate ###############
###################
###################

# Define file path
file_path_inflation_rate <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Pre_Panel_2025_Paper_Update/all_countries_inflation_rate_annual.csv"
output_file_path_inflation_rate <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Clean_Pre_Panel_2025_Paper_Update/all_countries_inflation_rate_annual_clean.csv"

# Read CSV while skipping the first 4 rows
inflation_wide <- read_csv(file_path_inflation_rate, skip = 4, show_col_types = FALSE)

# Convert to long format: "Country Name", "Country Code" remain, years become a "Year" column
inflation <- inflation_wide %>%
  pivot_longer(cols = -c(`Country Name`, `Country Code`, `Indicator Name`, `Indicator Code`),
               names_to = "Year", values_to = "Value") %>%
  mutate(Year = as.integer(Year))  # Ensure Year is numeric

# Keep only necessary columns
inflation <- inflation %>%
  select(`Country Name`, `Country Code`, Year, Value)

inflation <- inflation %>%
  rename(inflation_rate = Value, country = `Country Name`, country_code = `Country Code` )
# View the first few rows
head(inflation)
unique(inflation$inflation_rate)
mean(inflation$inflation_rate, na.rm = T)
write.csv(inflation, output_file_path_inflation_rate)
rm(inflation, inflation_wide, output_file_path_inflation_rate, file_path_inflation_rate)


###################
###################
################### Clean Labor Force ###############
###################
###################


# Define file path
file_path_labor_force <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Pre_Panel_2025_Paper_Update/all_countries_labor_force.csv"
output_file_path_labor_force <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Clean_Pre_Panel_2025_Paper_Update/all_countries_labor_force_clean.csv"

# Read CSV while skipping the first 4 rows
labor_force_wide <- read_csv(file_path_labor_force, skip = 4, show_col_types = FALSE)

# Convert to long format: "Country Name", "Country Code" remain, years become a "Year" column
labor_force <- labor_force_wide %>%
  pivot_longer(cols = -c(`Country Name`, `Country Code`, `Indicator Name`, `Indicator Code`),
               names_to = "Year", values_to = "Value") %>%
  mutate(Year = as.integer(Year))  # Ensure Year is numeric

# Keep only necessary columns
labor_force <- labor_force %>%
  select(`Country Name`, `Country Code`, Year, Value)

labor_force <- labor_force %>%
  rename(labor_force = Value, country = `Country Name`, country_code = `Country Code` )
# View the first few rows
head(labor_force)
mean(labor_force$labor_force, na.rm = T)

write.csv(labor_force, output_file_path_labor_force)
rm(labor_force, labor_force_wide, output_file_path_labor_force, file_path_labor_force)



###################
###################
################### Clean Population ###############
###################
###################


# Define file path
file_path_population <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Pre_Panel_2025_Paper_Update/all_countries_population.csv"
output_file_path_population <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Clean_Pre_Panel_2025_Paper_Update/all_countries_population_clean.csv"

# Read CSV while skipping the first 4 rows
population_wide <- read_csv(file_path_population, skip = 4, show_col_types = FALSE)

# Convert to long format: "Country Name", "Country Code" remain, years become a "Year" column
population <- population_wide %>%
  pivot_longer(cols = -c(`Country Name`, `Country Code`, `Indicator Name`, `Indicator Code`),
               names_to = "Year", values_to = "Value") %>%
  mutate(Year = as.integer(Year))  # Ensure Year is numeric

# Keep only necessary columns
population <- population %>%
  select(`Country Name`, `Country Code`, Year, Value)

population <- population %>%
  rename(population = Value, country = `Country Name`, country_code = `Country Code` )
# View the first few rows
head(population)
mean(population$population, na.rm = T)

write.csv(population, output_file_path_population)
rm(population, population_wide, output_file_path_population, file_path_population)




###################
###################
################### Clean Foreign Direct Investment ###############
###################
###################


# Define file path
file_path_foreign_direct_investment <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Pre_Panel_2025_Paper_Update/all_countries_foreign_direct_investment_net_inflows.csv"
output_file_path_foreign_direct_investment <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Clean_Pre_Panel_2025_Paper_Update/all_countries_foreign_direct_investment_net_inflows_clean.csv"

# Read CSV while skipping the first 4 rows
foreign_direct_investment_wide <- read_csv(file_path_foreign_direct_investment, skip = 4, show_col_types = FALSE)

# Convert to long format: "Country Name", "Country Code" remain, years become a "Year" column
foreign_direct_investment <- foreign_direct_investment_wide %>%
  pivot_longer(cols = -c(`Country Name`, `Country Code`, `Indicator Name`, `Indicator Code`),
               names_to = "Year", values_to = "Value") %>%
  mutate(Year = as.integer(Year))  # Ensure Year is numeric

# Keep only necessary columns
foreign_direct_investment <- foreign_direct_investment %>%
  select(`Country Name`, `Country Code`, Year, Value)

foreign_direct_investment <- foreign_direct_investment %>%
  rename(foreign_direct_investment = Value, country = `Country Name`, country_code = `Country Code` )
# View the first few rows
head(foreign_direct_investment)
mean(foreign_direct_investment$foreign_direct_investment, na.rm = T)

write.csv(foreign_direct_investment, output_file_path_foreign_direct_investment)
rm(foreign_direct_investment, foreign_direct_investment_wide, output_file_path_foreign_direct_investment, file_path_foreign_direct_investment)



###################
###################
################### Clean Unemployment (pct LF) ###############
###################
###################


# Define file path
file_path_unemployment <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Pre_Panel_2025_Paper_Update/all_countries_unemployment_rate_pct_of_total_labor_force.csv"
output_file_path_unemployment <- "C:/Users/dlucko/Documents/GitHub/egyptian_remittance_project/Data_Clean_Pre_Panel_2025_Paper_Update/all_countries_unemployment_rate_pct_of_total_labor_force_clean.csv"

# Read CSV while skipping the first 4 rows
unemployment_wide <- read_csv(file_path_unemployment, skip = 4, show_col_types = FALSE)

# Convert to long format: "Country Name", "Country Code" remain, years become a "Year" column
unemployment <- unemployment_wide %>%
  pivot_longer(cols = -c(`Country Name`, `Country Code`, `Indicator Name`, `Indicator Code`),
               names_to = "Year", values_to = "Value") %>%
  mutate(Year = as.integer(Year))  # Ensure Year is numeric

# Keep only necessary columns
unemployment <- unemployment %>%
  select(`Country Name`, `Country Code`, Year, Value)

unemployment <- unemployment %>%
  rename(unemployment = Value, country = `Country Name`, country_code = `Country Code` )
# View the first few rows
head(unemployment)
mean(unemployment$unemployment, na.rm = T)

write.csv(unemployment, output_file_path_unemployment)
rm(unemployment, unemployment_wide, output_file_path_unemployment, file_path_unemployment)


