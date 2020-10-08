class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :phone
      t.string :email
      t.string :name
      t.string :item_ids
    end
  end
end
