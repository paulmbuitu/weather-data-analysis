function weatherData = load_weather_data(filename)
    % Function to load the weather dataset from a .mat file
    try
        data = load(filename, 'weatherData');
        weatherData = data.weatherData;
        fprintf('Data successfully loaded from %s.\n', filename);
    catch
        fprintf('Error: Unable to load data from %s.\n', filename);
        weatherData = [];
    end
end
