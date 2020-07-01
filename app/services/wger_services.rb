class WgerServices 
    def excercise_api
        response = HTTP.get("https://wger.de/api/v2/exercise")
        parsed_response = JSON.parse(response)
        parsed_response["Exercise List"]
    end 

    # def excercise_img_api
    #     response = HTTP.get("https://wger.de/api/v2/exerciseimage")
    #     parsed_response = JSON.parse(response)
    #     parsed_response["Exercise List"]
    # end  
end 