class Owm

    include HTTParty
    require_relative  '../hooks/hooks_requests'
    base_uri 'http://api.openweathermap.org/data/2.5/weather?'

    def initialize()
        @options = {}
    end

    def city
        self.class.get("q=#{$cidade}&appid=#{$appid_is_valid}")
    end

    def latitude_and_longitude
        self.class.get("lat=#{$latitude}&lon=#{$longitude}&appid=#{$appid_is_valid}")
    end

    def kelvin_to_celsius(temp, temp_max, temp_min)
        $temperatura = temp - 273.15
        $temperatura_max = temp_max - 273.15
        $temperatura_min = temp_min - 273.15

        return $temperatura, $temperatura_max, $temperatura_min
    end

    def store_information(weather_main, visibility)
        $response_main = weather_main
        $response_visibility = visibility
        
        return $response_main, $response_visibility
    end

    def token_invalid
        self.class.get("q=#{$cidade}&appid=#{$appid_is_invalid}")
    end

end
