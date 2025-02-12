import requests
import json

API = input("Put an OpenWeather API key: ")
CITY = input("Put the city: ")

unit_choice = input("Choose temperature unit (C/F): ").strip().upper()


if unit_choice == "F":
    units = "imperial"
    unit_symbol = "°F"
elif unit_choice == "C":
    units = "metric"
    unit_symbol = "°C"
else:
    print("what. Defaulting to Celsius.")
    units = "metric"
    unit_symbol = "°C"

URL = f"http://api.openweathermap.org/data/2.5/weather?q={CITY}&appid={API}&units={units}"

response = requests.get(URL)

if response.status_code == 200:
    data = response.json()
    


    if "main" in data and "temp" in data["main"]:
        temp = data["main"]["temp"]
        

        with open("weather.dat", "w") as f:
            f.write(f"{temp} {unit_symbol}")
        
        print(f"weather data saved!!: {temp}{unit_symbol}")
    else:
        print("Error: could not get it")
else:
    print(f"failed to fetch weather data (Error {response.status_code})")
