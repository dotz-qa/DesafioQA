class OpenWeather
  include HTTParty
  base_uri "https://api.openweathermap.org"
  $headers = {
    "Content-Type" => "application/json"
  }

  def getTemperatureByCity(city)
    response = self.class.get("/data/2.5/weather",
      :headers => $headers,
      :query =>{
        :q => city,
        :appid => AUTH['appid']
      }
    )
    data = JSON.parse(response.body)
  end

  def convertKelvinToCelsius(temp_kelvin)
    temp_celsius = (temp_kelvin - 273).round(2)
  end

  def getTemperatureByLatLong(lat, lon)
    response = self.class.get("/data/2.5/weather",
      :headers => $headers,
      :query =>{
        :lat => lat,
        :lon => lon,
        :appid => AUTH['appid']
      }
    )
    data = JSON.parse(response.body)
  end

  def getUnAuthorized(city)
    response = self.class.get("/data/2.5/weather",
      :headers => $headers,
      :query =>{ 
        :q => "city",
        :appid => AUTH['appidInvalid']
      }
    )
    data = JSON.parse(response.body)
  end
end