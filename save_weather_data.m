function save_weather_data(weatherData, filename)
    % Function to save the weather dataset to a .mat file
    try
        save(filename, 'weatherData');
        fprintf('Data successfully saved to %s.\n', filename);
    catch
        fprintf('Error: Unable to save data to %s.\n', filename);
    end
end
