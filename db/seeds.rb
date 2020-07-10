# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
e = WgerServices.new.excercise_api

Exercise.delete_all

e.each do |i|
    Exercise.create!(
        name: i["name"],
        description: i["description"],
        muscles: i["muscles"],
        equipment: i["equipment"]
    )
end 
   
