# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [ ] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
- [ ] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [ ] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [ ] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [ ] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [ ] Include signup
- [ ] Include login
- [ ] Include logout
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

# Method ideas
scope: filter by muscle targeted, filter by name
model method: add total weight for circuit 
view method: change from lbs to kg 


## Users
User has many Programs
User Has many userExercises
User has many Exercises Through UserExercises
User has many Circuits Through Programs ( this is optional probably not needed)

## Circuits
Circuit Has many Exercises
CIrcuit has many Exercises through CircuitExercises
Circuit Belongs to Program

## Excercises 
Exercises has many UserExercises
Exercises has many circuitExercises
Excercises has many Users through UserExercises
Exercises has many Circuits through CircuitExercises
Exercises has many ProgramExercises
Exercises has many Programs Through ProgramExercises

## Program
Program belongs to User
Program has many Circuts
Program has many programExercises
Program has many Exercises though programExercises

## routes 
# Programs 
get '/programs', to: programs#index 
get '/program/new', to :program#new
post '/programs', to: 'programs#create

# nested routes
get '/programs/:program_id/circuit', to:'circuits#index'
get '/programs/:program_id/circuit/new', to:'circuits#new'
post '/circuits', to: 'circuits#create'


#views 
index 

# user db
username, password_digest

# workout_plan db
name

# circuit db 
name, day_performed 

# excercise db 
name, muscles, sets, reps, weight_amnt, description 

#program show page will have create new circuit
circuit show page will have add new exercise => search form 

    <h2> Add a new circuit to <%= @program.name %></h2>


    # <%= f.collection_select :what the name of attribute is in params hash (:exercise_id), :what the collection actually is (Exercise.all), value that is going to be submitted (:id), what the display is going to be(:name), %>
    