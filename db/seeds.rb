# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Experience.destroy_all
User.destroy_all
Category.destroy_all

puts "Creating main user..."

User.create(
  first_name: "Jenovi",
  last_name: "Wayela",
  email: "jenovi@test.com",
  password: "password"
)

15.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password' # Set a default password for all users
  )
end

outdoors = Category.create!(name: "Great Outdoors")

ex1 = Experience.create!(
                  title: "Gourmet Dinner",
                  description: "Indulge in a delicious gourmet dinner experience.",
                  date: Date.today + 10,
                  location: "New York City, NY",
                  capacity: 20,
                  price: 100.0,
                  user: User.first,
                  category: Category.all.sample)

Experience.create!(
                  title: "Street Food Adventure",
                  description: "Explore the city's best street food vendors.",
                  date: Date.today + 15,
                  location: "Los Angeles, CA",
                  capacity: 15,
                  price: 50.0,
                  user: User.first,
                category: Category.all.sample)

Experience.create!(
                  title: "Vegan Food Tasting",
                  description: "Discover the flavors of vegan cuisine.",
                  date: Date.today + 18,
                  location: "San Francisco, CA",
                  capacity: 15,
                  price: 65.0,
                  user: User.first,
                  category: Category.all.sample)

Experience.create!(
                  title: "Farm-to-Table Dinner",
                  description: "Savor locally sourced ingredients in a farm setting.",
                  date: Date.today + 22,
                  location: "Portland, OR",
                  capacity: 12,
                  price: 90.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Farm-to-Table Dinner",
                  description: "Savor locally sourced ingredients in a farm setting.",
                  date: Date.today + 22,
                  location: "Portland, OR",
                  capacity: 12,
                  price: 90.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                    title: "Hiking Expedition",
                    description: "Embark on an exciting hiking adventure.",
                    date: Date.today + 20,
                    location: "Denver, CO",
                    capacity: 10,
                    price: 75.0,
                    user: User.all.sample,
                  category: Category.all.sample)

Experience.create!(
                  title: "Beach Picnic",
                  description: "Enjoy a relaxing picnic on the sandy beaches.",
                  date: Date.today + 25,
                  location: "Miami, FL",
                  capacity: 30,
                  price: 40.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Camping Adventure",
                  description: "Camp under the stars in the wilderness.",
                  date: Date.today + 28,
                  location: "Yellowstone National Park, WY",
                  capacity: 8,
                  price: 120.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Mountain Biking Excursion",
                  description: "Hit the trails for an adrenaline-pumping ride.",
                  date: Date.today + 32,
                  location: "Asheville, NC",
                  capacity: 10,
                  price: 70.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "VIP Nightclub Access",
                  description: "Experience the nightlife like a VIP.",
                  date: Date.today + 30,
                  location: "Las Vegas, NV",
                  capacity: 50,
                  price: 150.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Live Music Show",
                  description: "Enjoy live music performances at top venues.",
                  date: Date.today + 35,
                  location: "Nashville, TN",
                  capacity: 25,
                  price: 60.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Cocktail Mixology Class",
                  description: "Learn to craft cocktails like a pro.",
                  date: Date.today + 38,
                  location: "New Orleans, LA",
                  capacity: 20,
                  price: 55.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Comedy Club Night",
                  description: "Enjoy a night of laughter at a comedy club.",
                  date: Date.today + 42,
                  location: "Chicago, IL",
                  capacity: 30,
                  price: 40.0,
                  user: User.all.sample,
                category: Category.all.sample)


Experience.create!(
                  title: "African Wildlife Safari",
                  description: "Witness the incredible African wildlife up close.",
                  date: Date.today + 40,
                  location: "Nairobi, Kenya",
                  capacity: 12,
                  price: 200.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Rainforest Adventure",
                  description: "Explore the lush rainforests and spot exotic animals.",
                  date: Date.today + 45,
                  location: "Amazon, Brazil",
                  capacity: 8,
                  price: 180.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Savannah Jeep Safari",
                  description: "Explore the savannah in an open-top jeep.",
                  date: Date.today + 48,
                  location: "Serengeti, Tanzania",
                  capacity: 6,
                  price: 250.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Wildlife Photography Tour",
                  description: "Capture the beauty of wildlife with expert guidance.",
                  date: Date.today + 52,
                  location: "Maasai Mara, Kenya",
                  capacity: 10,
                  price: 180.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Art Gallery Tour",
                  description: "Discover the finest art pieces in local galleries.",
                  date: Date.today + 50,
                  location: "Paris, France",
                  capacity: 15,
                  price: 70.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Historical Museum Visit",
                  description: "Explore the history and culture of the region.",
                  date: Date.today + 55,
                  location: "Rome, Italy",
                  capacity: 20,
                  price: 55.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Opera Night at the Theater",
                  description: "Experience a night of opera performances.",
                  date: Date.today + 58,
                  location: "Vienna, Austria",
                  capacity: 18,
                  price: 75.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Ancient Ruins Tour",
                  description: "Explore ancient ruins and archaeological sites.",
                  date: Date.today + 62,
                  location: "Athens, Greece",
                  capacity: 22,
                  price: 65.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "City Sightseeing Tour",
                  description: "Take a guided tour of the city's landmarks.",
                  date: Date.today + 60,
                  location: "London, UK",
                  capacity: 30,
                  price: 90.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Wine Tasting Tour",
                  description: "Sample,
                  category: Category.all.sample the finest wines in picturesque vineyards.",
                  date: Date.today + 65,
                  location: "Napa Valley, CA",
                  capacity: 15,
                  price: 120.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Historic Walking Tour",
                  description: "Discover the history of the city on foot.",
                  date: Date.today + 68,
                  location: "Boston, MA",
                  capacity: 15,
                  price: 80.0,
                  user: User.all.sample,
                category: Category.all.sample)

Experience.create!(
                  title: "Bike and Brews Tour",
                  description: "Cycle to local breweries for beer tastings.",
                  date: Date.today + 72,
                  location: "Portland, OR",
                  capacity: 12,
                  price: 95.0,
                  user: User.all.sample,
                category: Category.all.sample)
