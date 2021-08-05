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

    
    def token_invalid
        self.class.get("q=#{$cidade}&appid=#{$appid_is_invalid}")
    end
end
