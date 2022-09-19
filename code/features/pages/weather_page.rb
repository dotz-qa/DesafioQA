class Weather 
    
    include HTTParty
    base_uri "https://api.openweathermap.org"
    $headers = {
    "Content-Type" => "application/json"
    }

    def getInfosByCityName(city)
        response = self.class.get("/data/2.5/weather",
          :headers => $headers,
          :query => {
            :q => city,
            :appid => AUTHENTICATION['appid']
          }
        )
        responseJSON = JSON.parse(response.body)
    end

    def getInfosByLatLong(lat, lon)
        response = self.class.get("/data/2.5/weather",
          :headers => $headers,
          :query =>{
            :lat => lat,
            :lon => lon,
            :appid => AUTHENTICATION['appid']
          }
        )
        responseJSON = JSON.parse(response.body)
    end
    
    def getInfosByCityNameWithInvalidAppid(city)
        response = self.class.get("/data/2.5/weather",
          :headers => $headers,
          :query => {
            :q => city,
            :appid => AUTHENTICATION['invalidAppid']
          }
        )
        responseJSON = JSON.parse(response.body)
    end 

    def convertKelvinToCelsius(kelvin)
        celsius = (kelvin - 273.15)
    end

end