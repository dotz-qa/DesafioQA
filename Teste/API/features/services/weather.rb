module Rest
    class Weather
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_origem(city, key, unit)
            self.class.get("/weather?q=#{city}&appid=#{key}&units=#{unit}")
        end

        def get_latlon(lat, lon, key)
            self.class.get("/weather?lat=#{lat}&lon=#{lon}&appid=#{key}")
        end

    end
    
end