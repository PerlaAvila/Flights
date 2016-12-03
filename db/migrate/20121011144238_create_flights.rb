class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :num_flight
      t.date :date 
      t.date :depart 
      t.string :from 
      t.string :to
      t.time :duration
      t.float :cost
      t.integer :passengers
      t.timestamps
      # Completa con las columnas que necesites
    end

    create_table :users do |t|
    	t.string :name
      t.string :email
      t.string :admin
      t.timestamps 
    end

    create_table :bookings do |t|
      t.integer :num_booking
      t.integer :total
      t.timestamps 
    end

    create_table :user_flights do |t|
      t.belongs_to :user
      t.belongs_to :flight
     
    end

    create_table :user_bookings do |t|
      t.belongs_to :booking
      t.belongs_to :user
     
    end
  end
end
