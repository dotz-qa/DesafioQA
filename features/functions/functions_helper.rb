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