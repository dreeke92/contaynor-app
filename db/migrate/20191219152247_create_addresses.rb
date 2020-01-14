class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :description, comment: "A name describing the location. e.g. client warehouse"
      t.string :street_name, comment: "street name"
      t.integer :street_number, comment: "street number"
      t.integer :postal_code, comment: "postal code"
      t.string :city, comment: "city"
      t.string :country, comment: "country"
      t.string :telephone_number, comment: "telephone number"

      t.timestamps
    end
  end
end
