class CreateOrderMakeups < ActiveRecord::Migration[6.1]
  def change
    create_table :order_makeups do |t|
      t.integer  :order_id
      t.integer  :makeup_id 

      t.timestamps
    end
  end
end
