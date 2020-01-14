class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :organization, foreign_key: true
      t.date :pickup_date, comment: "This is the date when the load will be picked up"
      t.time :pickup_time, comment: "This is the time when the load will be picked up"
      t.string :comment, comment: "This is a comment for the creator of the order to give extra information/context"
      t.string :type, comment: "This denotes what type of order it is"
      t.string :status, comment: "This is for the Contaynor admin/system to denote what status of the order is"
      t.references :pickup_address, foreign_key: { to_table: 'addresses'}
      t.references :delivery_address, foreign_key: { to_table: 'addresses'}

      t.timestamps
    end
  end
end
