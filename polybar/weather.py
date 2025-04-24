import json
import math
import os
import time

import requests

def getWeather(apikey, location, apiUnits):
    #extract dat data
    data = requests.get('https://api.openweathermap.org/data/2.5/weather?q='+location+'&units='+apiUnits+'&appid='+apikey).text
    data = json.loads(data)
    weather = data['weather'][0]['description']
    weatherID = str(data['weather'][0]['id'])
    temp_feels = data['main']['feels_like']
    temp_actual = math.ceil((data['main']['temp']))
    humidity = str(data['main']['humidity']) + "%"


    #check by first number for weather condition codes https://openweathermap.org/weather-conditions
    #I know, theres prob a better way of doing this, but eh it works

    if weatherID[0]  == "2":
        if weatherID == "202 "or weatherID == "212":
            weatherIcon = ""
        else:
            weatherIcon = ""
    elif weatherID[0]  == "3":
        weatherIcon = ""
    elif weatherID[0] == "5":
        if weatherID == "502 "or weatherID == "503 "or weatherID == "504 "or weatherID == "522":
            weatherIcon = ""
        else:
            weatherIcon = ""
    elif weatherID[0] == "6":
        weatherIcon = ""
    elif weatherID[0] == "7":
        weatherIcon = ''
    elif weatherID == "800":
        weatherIcon = ''
    elif weatherID[0] == "8":
        weatherIcon = ''
    else:
        weatherIcon = weatherID

    return {
        'weather':weather,
        'weatherID':weatherID,
        'temp_feels':temp_feels,
        'temp_actual':temp_actual,
        'humidity':humidity,
        'weatherIcon':weatherIcon

    }

if __name__ == "__main__":
    apikey = os.getenv("WEATHER_API_KEY")
    apikey = "60f508916ceafe5568e159a04b01ae20" #good ol lazy hardcoding what could go wrong
    location = 'richardson, texas'
    apiUnits = 'imperial' #for us filthy americans
    #wait a couple seconds on run, because for some reason without this it returns HTTPSConnectionPool Max retries exceeded
    #also added fallback because it would give errors

    for i in range(30):
        try:
            info = getWeather(apikey, location, apiUnits)
            weatherIcon = info['weatherIcon']
            weather= info['weather']
            temp_actual = info['temp_actual']
            humidity = info['humidity']
        except Exception as e:
            time.sleep(2)
            fuck = str(e)

            continue
        print(f'{weatherIcon}  {weather.title()}, {temp_actual}°F')
        fuck = "Ran Successfully"

        break
    print(fuck)
