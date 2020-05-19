require "httparty"

  ### Get the weather
  # Evanston, Kellogg Global Hub... replace with a different location if you want
  lat = 42.0574063
  long = -87.6722787

  units = "imperial" # or metric, whatever you like
  key = "c12c3d5413f74a7026c40144a11ab64a" # replace this with your real OpenWeather API key

  # construct the URL to get the API data (https://openweathermap.org/api/one-call-api)
  url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{lat}&lon=#{long}&units=#{units}&appid=#{key}"

  # make the call
  @forecast = HTTParty.get(url).parsed_response.to_hash

  
  ### Get the news
  @news = HTTParty.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=15bd741879c5480bb685e21946571cd9").parsed_response.to_hash

  ###Some arrays to loop through
  @articles = [0,1,2,3,4,5,6,7] 
  @days = [0,1,2,3,4]
  @headlines = []

#for no in @articles
#  puts @news["articles"][no]["title"]
#end
 
for day in @days
 puts @forecast["current"]["weather"][0]["description"]