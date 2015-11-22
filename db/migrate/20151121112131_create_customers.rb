class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street_address
      t.string :building_number
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :country_code
      t.string :phone_number
      t.string :latitude
      t.string :longitude
      t.string :time_zone
      t.date :birthday

      t.timestamps null: false
    end
  end
end
