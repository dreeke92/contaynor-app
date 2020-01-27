class ChangeOrderStatusColumnToInt < ActiveRecord::Migration[5.2]
  def up
    Order.where(status: 'Requesting').update_all(status: 0)
    change_column :orders, :status, :integer, using: 'status::integer', default: 0
  end

  def down
    Order.where(status: 0).update_all(status: 'requesting')
    Order.where(status: 1).update_all(status: 'pending')
    Order.where(status: 2).update_all(status: 'accepted')
    Order.where(status: 3).update_all(status: 'performed')
    change_column :orders, :status, :string, using: 'column_name::string', default: 'requesting'
  end
end
