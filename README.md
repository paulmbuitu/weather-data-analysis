# Weather Data Analysis in MATLAB

## Project Overview
This project analyzes weather data to uncover temperature trends and rainfall distribution over a two-year period. Developed using MATLAB, the program processes weather data from a CSV file and generates statistical summaries and visualizations to aid in climate research, agriculture, disaster preparedness, and environmental planning.

## Features
- **Data Input and Preprocessing**: 
  - Reads weather data from a CSV file.
  - Handles missing values and ensures data accuracy.
- **Statistical Analysis**: 
  - Computes metrics such as averages, minimums, and maximums for temperature and rainfall.
  - Provides both overall statistics and month-specific summaries.
- **Visualizations**: 
  - Line plots for temperature trends across months.
  - Bar charts for monthly rainfall totals, enhanced with titles, labels, and legends.
- **User Interaction**: 
  - Menu-driven interface for seamless interaction.
  - Options to view data summaries, analyze specific months, and visualize trends.
- **Data Saving and Loading**: 
  - Save the processed data to `.mat` files for future use.

## Usage
1. **Requirements**:
   - MATLAB installed on your system.
   - `weather_data.csv` file containing two years of monthly weather data.

2. **How to Run**:
   - Clone or download the project to your local machine.
   - Ensure the `weather_data.csv` file is in the project directory.
   - Run the main script `weather_analysis.m` in MATLAB.
   - Use the menu options to interact with the program:
     - View data summaries.
     - Analyze specific months.
     - Generate visualizations.
     - Save and load data.

3. **Example Outputs**:
   - **Overall Statistics**:
     - Average Temperature: `24.90 °C`
     - Total Rainfall: `94.80 mm`
   - **Monthly Statistics for February**:
     - Average Temperature: `28.90 °C`
     - Total Rainfall: `3.60 mm`
   - **Visualizations**:
     - Line plot for temperature trends.
     - Bar chart for rainfall trends.

## Project Files
- **Scripts**:
  - `weather_analysis.m`: Main script for program interaction.
  - `load_weather_data.m`: Handles data loading and preprocessing.
  - `calculate_stats.m`: Performs statistical calculations.
  - `plot_trends.m`: Generates visualizations.
  - `save_weather_data.m`: Saves processed data.
- **Dataset**:
  - `weather_data.csv`: Contains two years of monthly weather data.

## Challenges and Solutions
1. **File Handling**:
   - **Issue**: Ensuring the CSV file is correctly formatted.
   - **Solution**: Added error handling to validate file paths and data format.
2. **User Input Validation**:
   - **Issue**: Preventing crashes due to invalid inputs.
   - **Solution**: Implemented robust input validation for menu selections.
3. **Plot Readability**:
   - **Issue**: Basic plots lacked clarity.
   - **Solution**: Enhanced plots with titles, labels, legends, and grid lines.

## Conclusion
This project demonstrates the power of MATLAB in analyzing weather data and generating insights for real-world applications. Its modular structure ensures scalability for future enhancements, making it a valuable tool for climate research, urban planning, and agricultural decision-making.


## Contact
For any inquiries or feedback, feel free to reach out to:
- **Name**: [Paul Mbuitu Muriithi]
- **Email**: [paulmbuitu@gmail.com]
- **WhatsApp**: [+254 704 606 930]
