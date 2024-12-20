function stats = calculate_stats(weatherData)
    % Function to compute statistics for temperature and rainfall
    
    % Calculating statistics for temperature
    avgTemp = mean(weatherData.Temp);
    maxTemp = max(weatherData.Temp);
    minTemp = min(weatherData.Temp);
    
    % Calculating statistics for rainfall
    totalRainfall = sum(weatherData.Rainfall);
    avgRainfall = mean(weatherData.Rainfall);
    maxRainfall = max(weatherData.Rainfall);
    
    % Storing results in a struct
    stats = struct();
    stats.AvgTemp = avgTemp;
    stats.MaxTemp = maxTemp;
    stats.MinTemp = minTemp;
    stats.TotalRainfall = totalRainfall;
    stats.AvgRainfall = avgRainfall;
    stats.MaxRainfall = maxRainfall;
end
