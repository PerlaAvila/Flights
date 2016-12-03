class Flight < ActiveRecord::Base
  has_many :users
  has_many :bookings
  # attr_accessor :num_flight, :date, :depart, :from, :to, :duration, :cost, :passengers
  # def initialize(num_flight, date, depart, from, to, duration, cost, passengers)
  #   @num_flight = num_flight
  #   @date = date
  #   @depart = depart
  #   @from = from
  #   @to = to
  #   @duration = duration
  #   @cost = cost
  #   @passengers = passengers
  # end
end

class User < ActiveRecord::Base
  has_many :flights
  has_many :bookings
  # attr_accessor :name, :email, :admin
  # def initialize(name, email, admin)
  #   @name = name
  #   @email = email
  #   @admin = admin
  # end

end

class Booking < ActiveRecord::Base
  has_many :users
  belongs_to :flight
  
  # attr_accessor :num_booking, :total
  # def initialize(num_booking, total)
  #   @num_booking = num_booking
  #   @total = total
  # end

end

class UserBooking < ActiveRecord::Base
  belongs_to :users
  belongs_to :bookings
end

class UserFlight < ActiveRecord::Base
  belongs_to :users
  belongs_to :flights
end