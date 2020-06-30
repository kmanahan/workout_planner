class WgerServices 
    def excercise_db(exercise)
        response = HTTP.get("https://wger.de/api/v2/exercise")
        parsed_response = JSON.parse(response)
        parsed_response["Exercise List"]
    end 
end 