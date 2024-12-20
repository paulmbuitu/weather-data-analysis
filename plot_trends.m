function plot_trends(weatherData)
    % Plotting temperature trends
    figure;
    plot(1:height(weatherData), weatherData.Temp, '-o', 'DisplayName', 'Temperature');
    title('Temperature Trend Over Two Years');
    xlabel('Month');
    ylabel('Temperature (°C)');
    xticks(1:height(weatherData));
    xticklabels(weatherData.Month);
    grid on;
    legend('Location', 'northwest'); 
    saveas(gcf, 'Temperature_Trend.png'); % Saving as image
    fprintf('Temperature trend plot saved as "Temperature_Trend.png".\n');
    
    % Plotting rainfall trends
    figure;
    bar(1:height(weatherData), weatherData.Rainfall, 'DisplayName', 'Rainfall');
    title('Monthly Rainfall Trend');
    xlabel('Month');
    ylabel('Rainfall (mm)');
    xticks(1:height(weatherData));
    xticklabels(weatherData.Month);
    grid on;
    legend('Location', 'northeast'); 
    saveas(gcf, 'Rainfall_Trend.png'); % Saving as image
    fprintf('Rainfall trend plot saved as "Rainfall_Trend.png".\n');
end

