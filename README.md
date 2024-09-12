# Weather Information Fetcher
A Weather Information Fetcher project using a shell script that fetches weather information from an API like OpenWeatherMap. This project will allow users to get weather details such as temperature, humidity, and wind speed by entering a city and country code. We'll use OpenWeatherMap API for this purpose.

## Features:
-  Allow the user to specify a location (city, country).
-  Display current temperature, humidity, wind speed, etc.
-  Option to display a weather forecast for the next few days.
-  Fetch and display weather data at regular intervals

## Prerequisites

- **API Key:** You need an API key from OpenWeatherMap. Sign up at OpenWeatherMap and generate an API key.
- **curl:** This project will use `curl` to make API requests. Most Linux/macOS distributions have it pre-installed, but you can install it via:
- **For Ubuntu/Debian:** `sudo apt install curl`
- **For macOS:** `brew install curl`

## Add Executable Permissions to the Script

After creating the script file (e.g., WeatherScripting.sh), give it executable permissions using the following command:

```bash

chmod +x WeatherScripting.sh

```

## Run the Script

You can run the script by typing:

```bash

./WeatherScripting.sh

```
