//
//  WeatherData.swift
//  WeatherCollectionView
//
//  Created by Apple on 7/10/20.
//  Copyright © 2020 knb. All rights reserved.
//

import Foundation

struct WeatherData {
    let cityName: String
    let nowWeather: String
    let nowDegree: String
    let todayName: String
    let todayMinDegree: String
    let todayMaxDegree: String
    let hourWeather: [HourWeather]
    let weekWeather: [WeekWeather]
}

struct HourWeather {
    let hour: String
    let iconName: String
    let degree: String
}

struct WeekWeather {
    let day: String
    let iconName: String
    let minDegree: String
    let maxDegree: String
}

func getWeatherData() -> WeatherData {
    let hour1 = HourWeather(hour: "14", iconName: "cloudy", degree: "25°")
    let hour2 = HourWeather(hour: "15", iconName: "day_clear", degree: "26°")
    let hour3 = HourWeather(hour: "Now", iconName: "day_clear", degree: "29°")
    let hour4 = HourWeather(hour: "17", iconName: "day_sleet", degree: "24°")
    let hour5 = HourWeather(hour: "18", iconName: "day_partial_cloud", degree: "22°")
    let hour6 = HourWeather(hour: "18:32", iconName: "sun_set", degree: "Sunset")
    let hour7 = HourWeather(hour: "19", iconName: "night_full_moon_partial_cloud", degree: "21°")
    let hour8 = HourWeather(hour: "20", iconName: "night_full_moon_partial_cloud", degree: "22°")
    let hour9 = HourWeather(hour: "21", iconName: "night_full_moon_partial_cloud", degree: "21°")
    let hour10 = HourWeather(hour: "22", iconName: "night_full_moon_partial_cloud", degree: "20°")
    
    let hourWeathers: [HourWeather] = [hour1, hour2, hour3, hour4, hour5, hour6, hour7, hour8, hour9, hour10]
    
    let day1 = WeekWeather(day: "Thursday", iconName: "cloudy", minDegree: "23°", maxDegree: "30°")
    let day2 = WeekWeather(day: "Friday", iconName: "day_sleet", minDegree: "24°", maxDegree: "31°")
    let day3 = WeekWeather(day: "Saturday", iconName: "cloudy", minDegree: "27°", maxDegree: "34°")
    let day4 = WeekWeather(day: "Sunday", iconName: "day_clear", minDegree: "22°", maxDegree: "32°")
    let day5 = WeekWeather(day: "Monday", iconName: "day_sleet", minDegree: "23°", maxDegree: "35°")
    let day6 = WeekWeather(day: "Tuesday", iconName: "day_clear", minDegree: "22°", maxDegree: "34°")
    let day7 = WeekWeather(day: "Wednesday", iconName: "day_clear", minDegree: "23°", maxDegree: "39°")
    let day8 = WeekWeather(day: "Thursday", iconName: "day_sleet", minDegree: "25°", maxDegree: "35°")
    let day9 = WeekWeather(day: "Friday", iconName: "cloudy", minDegree: "20°", maxDegree: "36°")
    let day10 = WeekWeather(day: "Saturday", iconName: "cloudy", minDegree: "21°", maxDegree: "35°")
    
    let weekWeathers: [WeekWeather] = [day1, day2, day3, day4, day5, day6, day7, day8, day9, day10]
    
    let weatherData = WeatherData(cityName: "Hanoi", nowWeather: "Cloudy", nowDegree: "36°", todayName: "Wednesday", todayMinDegree: "25°", todayMaxDegree: "39°", hourWeather: hourWeathers, weekWeather: weekWeathers)
    return weatherData
}
