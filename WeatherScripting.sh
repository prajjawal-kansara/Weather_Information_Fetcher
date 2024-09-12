#!/bin/bash

# API Key and URL setup
API_KEY="your_api_key"
API_URL="http://api.openweathermap.org/data/2.5/weather"

# Function to fetch weather details
fetch_weather() {
    local CITY="$1"
    local COUNTRY="$2"

    # Make the API call using curl
    RESPONSE=$(curl -s "${API_URL}?q=${CITY},${COUNTRY}&appid=${API_KEY}&units=metric")

    # Extract values from the JSON response
    WEATHER=$(echo "$RESPONSE" | grep -oP '"main":"\K[^"]+')
    TEMP=$(echo "$RESPONSE" | grep -oP '"temp":\K[^,]+')
    HUMIDITY=$(echo "$RESPONSE" | grep -oP '"humidity":\K[^,]+')
    WIND_SPEED=$(echo "$RESPONSE" | grep -oP '"speed":\K[^,]+')

    # Check if the response is valid
    if [ -z "$WEATHER" ]; then
        echo "Could not retrieve weather information. Please check the city and country code."
    else
        echo "Weather in ${CITY}, ${COUNTRY}:"
        echo "Temperature: ${TEMP}°C"
        echo "Weather: ${WEATHER}"
        echo "Humidity: ${HUMIDITY}%"
        echo "Wind Speed: ${WIND_SPEED} m/s"
    fi
}

# Function to get forecast (optional)
fetch_forecast() {
    echo "Forecast feature can be added with a different API endpoint"
}

# Main script logic
echo "Welcome to Weather Information Fetcher!"
read -p "Enter the city: " CITY
read -p "Enter the country code (ISO 2-letter code): " COUNTRY

# Fetch and display weather details
fetch_weather "$CITY" "$COUNTRY"

