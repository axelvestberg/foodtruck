# notes
- make the database model
- bin/rails g scaffold Foodtruck name:string description:string schedule:

{ 
	Foodtruck {
		name:string
		currentLocation: {
			location:string
			DateTime
		}, 
		[
			upcomingLocation {
				location
				DateTime
			}
		]
	}
}

One food truck has one currentLocation and many upcomingLocations.
currentLocation belongs to one foodtruck.
upcomingLocation belongs to one foodtuck.

bin/rails g scaffold FoodTruck name:string description:string
bin/rails g scaffold CurrentLocation address:string date:datetime foodtruck:references
bin/rails g scaffold UpcomingLocation address:string date:datetime foodtruck:references

bin/rails g scaffold FoodTruck name:string description:string
bin/rails g scaffold FoodTruckLocation address:string date:datetime food_truck:references