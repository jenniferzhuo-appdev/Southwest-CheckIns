task({ :send_sms => :environment }) do
  fifteen_min_flights = Flight.where("departure  < ?", 24.hours.from_now + 15.minutes ).where({:fifteen_minute_message_sent => false})

  fifteen_min_flights.each do |flight|
    p "Hey, it's time to check in for #{flight.description}!"
    flight.fifteen_minute_message_sent = true
    flight.save
  end
end