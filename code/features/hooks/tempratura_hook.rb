Before '@city' do

    @name = Faker::Adress.city 

    body = {
        "q" : @name  
    }

    @body = JSON.generate(body)
    
    @city = Weather.new(@body)

end
