require "http"
puts "Today's weather:"
puts "Enter a city"
input_name = gets.chomp
response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{input_name}&units=imperial&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

weather_data = response.parse

temperature = weather_data["main"]["temp"]
high = weather_data["main"]["temp_max"]
low = weather_data["main"]["temp_min"]
city_name = weather_data["name"]
main = weather_data["weather"][0]["main"]
feels_like = weather_data["main"]["feels_like"]
wind_speed = weather_data["wind"]["speed"]

puts "Now in #{input_name}, it is #{temperature} degrees but feels like #{feels_like} with a high of #{high} and a low of #{low}. Expect winds of #{wind_speed} miles per hour."
