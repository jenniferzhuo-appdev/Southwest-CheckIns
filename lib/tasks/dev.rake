namespace(:dev) do
  desc "Hydrate the database with some dummy data to look at so that developing is easier"
  task({ :prime => :environment}) do

    #User.destroy_all <-- this is dangerous code that you shouldn't run on real data. 

    u = User.new
    u.email = "alice@example.com"
    u.password = "password"
    u.password_confirmation = "password"
    u.phone_number = "+13129296107"
    u.save

    u = User.new
    u.email = "bob@example.com"
    u.password = "password"
    u.password_confirmation = "password"
    u.phone_number = "+13129296107"
    u.save

    f = Flight.new
    f.user_id = u.id
    f.description = Faker::Nation.capital_city
    f.departure = 24.hours.from_now + 12.minutes 
    f.save

    f = Flight.new
    f.user_id = u.id
    f.description = Faker::Nation.capital_city
    f.departure = 24.hours.from_now + 8.minutes 
    f.save

    50.times do |n|
      f = Flight.new
      f.user_id = u.id
      f.description = Faker::Nation.capital_city
      f.departure = 24.hours.from_now + (n-25).minutes 
      f.save
    end
    


  end
end
