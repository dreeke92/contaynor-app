class CreateAddressBooks < ActiveRecord::Migration[5.2]
  # An organization can have an address book containing all the addresses from and to where it needs to deliver
  def change
    create_table :address_books do |t|
      t.references :organization, foreign_key: true, comment: "This key denotes the address is in the address book of which organization"
      t.references :address, foreign_key: true, comment: "This key denotes which address is listed in the address book of the organization (can be the address of the client of the creator of the transportation assignment)"
      t.boolean :address_relation, comment: "This boolean is true if the address belongs to the organization itself"
      t.boolean :head_quarters, comment: "This boolean is true when the address is the HQ of the organization"

      t.timestamps
    end
  end
end
