% WEATHER_ANALYSIS.M
% Main script for analyzing weather data.

clear;
clc;

% Loading the data
filename = 'weather_data.csv';
try
    weatherData = readtable(filename);
    if ~all(ismember({'Month', 'Temp', 'Rainfall'}, weatherData.Properties.VariableNames))
        error('The file %s does not have the required columns (Month, Temp, Rainfall).', filename);
    end
    
    % Handling missing values
    weatherData.Temp(isnan(weatherData.Temp)) = 0;
    weatherData.Rainfall(isnan(weatherData.Rainfall)) = 0;
catch ME
    fprintf('Error reading the file: %s\n', ME.message);
    return;
end

% Menu-driven interface
while true
    fprintf('\nWeather Data Analysis Menu\n');
    fprintf('1. View Data Summary\n');
    fprintf('2. Analyze Specific Month\n');
    fprintf('3. Visualize Trends\n');
    fprintf('4. Save Current Dataset\n');
    fprintf('5. Load Dataset from File\n');
    fprintf('6. Exit\n');
    
    choice = input('Enter your choice: ', 's');
    if isempty(choice) || ~all(isstrprop(choice, 'digit')) || str2double(choice) < 1 || str2double(choice) > 6
        fprintf('Invalid choice. Please enter a number between 1 and 6.\n');
        continue;
    end
    choice = str2double(choice);
    
    switch choice
        case 1
            % Viewing Data Summary
            stats = calculate_stats(weatherData);
            fprintf('\nOverall Weather Statistics:\n');
            fprintf('Average Temperature: %.2f °C\n', stats.AvgTemp);
            fprintf('Max Temperature: %.2f °C\n', stats.MaxTemp);
            fprintf('Min Temperature: %.2f °C\n', stats.MinTemp);
            fprintf('Total Rainfall: %.2f mm\n', stats.TotalRainfall);
            fprintf('Average Rainfall: %.2f mm\n', stats.AvgRainfall);
            fprintf('Max Rainfall: %.2f mm\n', stats.MaxRainfall);
            
        case 2
            % Analyzing Specific Month
            month = input('Enter the name of the month (e.g., "January"): ', 's');
            validMonths = unique(weatherData.Month);
            if ~ismember(month, validMonths)
                fprintf('Invalid month name. Please choose from the following: %s.\n', strjoin(validMonths, ', '));
                continue;
            end
            monthData = weatherData(strcmp(weatherData.Month, month), :);
            stats = calculate_stats(monthData);
            fprintf('\nWeather Statistics for %s:\n', month);
            fprintf('Average Temperature: %.2f °C\n', stats.AvgTemp);
            fprintf('Max Temperature: %.2f °C\n', stats.MaxTemp);
            fprintf('Min Temperature: %.2f °C\n', stats.MinTemp);
            fprintf('Total Rainfall: %.2f mm\n', stats.TotalRainfall);
            
        case 3
            % Visualizing Trends
            plot_trends(weatherData);
            
        case 4
            % Saving Current Dataset
            save('weather_data.mat', 'weatherData');
            fprintf('Dataset saved to weather_data.mat\n');
            
        case 5
            % Loading Dataset from File
            try
                load('weather_data.mat', 'weatherData');
                fprintf('Dataset loaded successfully.\n');
            catch
                fprintf('Error: Could not load weather_data.mat. Ensure the file exists.\n');
            end
            
        case 6
            % Exit
            confirmExit = input('Are you sure you want to exit? (y/n): ', 's');
            if strcmpi(confirmExit, 'y')
                fprintf('Exiting the program. Goodbye!\n');
                break;
            else
                fprintf('Returning to the main menu.\n');
            end
    end
end
